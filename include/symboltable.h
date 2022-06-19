#ifndef SYMBOLTABLE_H
#define SYMBOLTABLE_H

#include <string>
#include <map>
#include <iostream>

using namespace std;

class Symboltable {

    public:
    Symboltable(); 
    ~ Symboltable() {};
    void addEntry(string symbol, int address);
    bool contains(string symbol);
    int getAddress(string symbol);

    friend ostream& operator<<(ostream& os, const Symboltable& s)
    {
    	for (auto it =  s.table.begin(); it != s.table.end(); it++) {
		    os << it->first << "\t" << it->second << std::endl;
        }
        return os;
    };

    private:
    map<string, int> table;
};

#endif /* SYMBOLTABLE_H */ 