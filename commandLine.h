
// Copyright 2018 LPC Authors
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     https://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// command line parsing

#pragma once

#include <string>
#include <sstream>
#include <map>
#include <list>
#include <assert.h>

#include "common.h"

using std::string;


/////////////////////////////////////////////////////////////////////
//
// CommandLine - a simple command line parser
//
class CommandLine
{
private:
    struct Option
    {
        Option() :
            help("???"),
            wasSpecified(false),
            isFlag(false)
        {
        }

        Option(const char* help, bool isFlag) :
            help(help),
            wasSpecified(false),
            isFlag(isFlag)
        {}
            
        const string& getValue() const
        {
            assert(!isFlag);
            return value;
        }

        void setValue(const char* str)
        {
            assert(!wasSpecified);
            assert(!str[0] != !isFlag);
            value = str;
            wasSpecified = true;
        }
        
        bool getFlag() const
        {
            assert(isFlag);
            return wasSpecified;
        }
        
        string  value;
        bool    wasSpecified;

        string  help;
        bool    isFlag;
        bool    optional;
    };
    
public:
    CommandLine() {}
    ~CommandLine() {}
    
public:
    void addOption(const char *option, const char *help)
    {
        if(m_optionsMap.count(option) != 0)
            throw Exception("duplicate option/flag definition: %s", option);
            
        m_optionsMap[option] = Option(help, false);
    }

    void addFlag(const char *flagName, const char* help)
    {
        if(m_optionsMap.count(flagName) != 0)
            throw Exception("duplicate option/flag definition: %s", flagName);
            
        m_optionsMap[flagName] = Option(help, true);
    }

    void addTarget(const char* targetName)
    {
        assert(find(m_targets.begin(), m_targets.end(), targetName) == m_targets.end());
        m_targets.push_back(targetName);
    }

    void parse(int argc, const char *argv[])
    {
        for(int i = 1; i < argc; ++i)
        {
            _parseArgument(argv[i]);
        }
    }
    
    const char* getString(const char *option) const
    {
        return _getOption(option).getValue().c_str();
    }

    const char* getInputName() const
    {
        if(m_inputName.empty())
            throw Exception("input name not specified");
        return m_inputName.c_str();
    }
   
    int getNumber(const char *option) const
    {
        std::stringstream ts(getString(option));
        int value = 0;
        
        if(ts >> value)
            return value;
        else
            throw Exception("invalid numeric option value: %s = %s", option, getString(option));
    }
    
    bool getFlag(const char *flagName) const
    {
        return _getOption(flagName).getFlag();
    }

    void printHelp() const
    {
        printf("use: LPC [options...] <inputFile>\n\n");

        for(auto it = m_optionsMap.begin(); it != m_optionsMap.end(); ++it)
        {
            printf("%-20s %s\n", it->first.c_str(), it->second.help.c_str());
        }

        printf("\nAvailable code generation targets: ");

        for(auto it = m_targets.begin(); it != m_targets.end(); ++it)
        {
            printf("%s ", it->c_str());
        }

        printf("\n\n");
    }
    
private:
    const Option& _getOption(const char *optionName) const
    {
        if(m_optionsMap.count(optionName) == 0)
            throw Exception("unknown option: %s", optionName);
        return m_optionsMap.find(optionName)->second;
    }
    
    void _parseArgument(const char* arg)
    {
        assert(arg[0] != 0);

        // search the options list
        //
        std::map<string, Option>::iterator it;

        for(it = m_optionsMap.begin(); it != m_optionsMap.end(); ++it)
        {
            // prefix search
            //
            size_t i;

            for(i = 0; i < it->first.size(); ++i)
            {
                if(it->first[i] != arg[i] || arg[i] == 0)
                    break;
            }

            if(i != it->first.size())
                continue;

            // we found a match
            //
            Option& opt = it->second;

            if(opt.wasSpecified)
                throw Exception("option specified twice: %s", it->first.c_str());
            
            if(!opt.isFlag && arg[i] == 0)
                throw Exception("option missing value: %s", it->first.c_str());

            if(opt.isFlag && arg[i] != 0)
                throw Exception("misspelled command line switch: %s", it->first.c_str());

            opt.setValue(arg + i);
            return;
        }

        // invalid switch?
        //
        if(arg[0] == '-' || arg[0] == '/')
            throw Exception("unknown command line option: %s", arg);

        // we have a plain argument (input name)
        //
        if(!m_inputName.empty())
            throw Exception("more than one input specified");

        m_inputName = arg;
    }

private:
    std::map<string, Option> m_optionsMap;
    string m_inputName;
    std::list<string> m_targets;
};


