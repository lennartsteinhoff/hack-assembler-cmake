#ifndef PARSER_H
#define PARSER_H

#include <string>
#include <fstream>
#include <iostream>


using namespace std;

class Parser {
    public:
        Parser(std::string);

        ~Parser(){
            close();
        };

        void close() { filein.close();}

        void reload(std::string filename) { 
            filein.close(); 
            filein.open(filename, std::ios::in | std::ios::binary);
        }

        bool hasMoreCommands() const { return !filein.eof(); };

        void advance();   

        void reset();

        enum class CommandType {A_COMMAND, L_COMMAND, C_COMMAND};

        CommandType commandType() const;

        std::string commandTypeStr() const;

        std::string symbol() const;
        bool symbolIsNumeric() const;
        std::string dest() const { return _dest;}
        std::string comp() const { return _comp;}
        std::string jump() const { return _jump;}

        friend ostream& operator<<(ostream& os, const Parser& p)
        {
            os << p.line;
            return os;
        };

    private:
        void parse () ;

        std::fstream filein;

        std::string line;
        std::string _dest;
        std::string _comp;
        std::string _jump;
};

#endif