#include <string>
#include <iostream>
#include <fstream>
#include <algorithm>
#include <regex>


#include "parser.h"
using namespace std;


Parser::Parser(std::string filename) 
{
    filein = fstream(filename, std::ios::in | std::ios::binary);
    if (!filein.is_open()) {
        throw "ERROR: Cannot open file";
    }
    if (filein.is_open()) {
        cout << "Can open file: " << filename << endl;
    } 
};


void Parser::advance() 
{
    if ( getline (filein, line) )
    {
        if(line.find("//") != std::string::npos) {
            line.erase(line.find("//"));
        }
            
        line.erase(remove_if(line.begin(), line.end(), ::isspace), line.end());

        

        if(line.empty() && !filein.eof()) {
            advance();
        }

        parse();
    }
};   


void Parser::reset() {
    filein.seekg(std::ios::beg);
}


void Parser::parse () {

    if(commandType() != Parser::CommandType::C_COMMAND) return;

    bool hasSemicolon = (line.find(";") != string::npos) ? true : false;
    bool hasEqual = (line.find("=") != string::npos) ? true : false;

    _dest = "null";
    if (hasEqual) {
        _dest = line;
        _dest.erase(_dest.find('='));
    }
    

    _jump = "null";
    if (hasSemicolon) {
        _jump = line;
        _jump.erase(0,_jump.find(';')+1);
        if (_jump.empty()) _jump = "null";
    }

    _comp = line;
    if (hasSemicolon) {
        _comp.erase(_comp.find(';'));
    }
    if (hasEqual) {
        _comp.erase(0, _comp.find('=')+1);
    }
}


Parser::CommandType Parser::commandType() const { 

    if (line[0]=='@') {
        return CommandType::A_COMMAND;
    }
    else if (*line.begin() == '(' && *(line.end()-1) == ')') {
        return CommandType::L_COMMAND;
    }
    else if (true) {
        return CommandType::C_COMMAND;
    }
    throw std::runtime_error("Invalid command");
}

std::string Parser::commandTypeStr() const { 

    if (commandType() == CommandType::A_COMMAND) {
        return "A_COMMAND";
    }
    else if (commandType() == CommandType::L_COMMAND) {
        return "L_COMMAND";
    }
    else if (commandType() == CommandType::C_COMMAND) {
        return "C_COMMAND";
    }

    return "None";
}

string Parser::symbol() const {
    string tmp = line;
    string chars = "@()";
    tmp.erase(remove_if(tmp.begin(), tmp.end(), 
            [&chars] (const char &c) { 
                return chars.find(c) != std::string::npos;
                }), 
                tmp.end());

    if (!tmp.empty()) return tmp;
    else return "";
}

bool Parser::symbolIsNumeric() const {
    string tmp = symbol();
    for(auto it = tmp.begin(); it != tmp.end(); it++) {
        if(!::isdigit(*it)) return false;
    }
    return true;
}


