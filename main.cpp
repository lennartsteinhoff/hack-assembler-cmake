#include <iostream>
#include <bitset>
#include "TutorialConfig.h"

#include "parser.h"
#include "code.h"
#include "symboltable.h"

using namespace std;

class Conversions {
	public:
		static string convertStringTo15BitInt(int n) {
			if (n >= (2^15-1)) throw "Integer or Address out of range";
			std::string ns = std::bitset<15>(n).to_string();
			return ns;
		}
		static string convertStringTo15BitString(string s) {
			int n = std::stoi(s);
			if (n >= (2^15-1)) throw "Integer or Address out of range";
			std::string ns = std::bitset<15>(n).to_string();
			return ns;
		}
};

int main(int argc, char *argv[])
{
	std::cout << "Hello, here is hack-assembler again!" << std::endl;
	std::cout << "Version Number : " << hack_assembler_VERSION_MAJOR << "." << hack_assembler_VERSION_MINOR << " ";
	std::cout << "Compiled At: " __TIMESTAMP__ << std::endl;

	if (argc == 0) throw std::runtime_error("No Filename passed");

	std::string filename(argv[argc-1]);
	

	std::cout << "Processing: "<< filename << std::endl << endl << endl;

	Parser parser(filename);

	cout << endl << "-----------FIRST PASS------------" << endl << endl;

	Symboltable symboltable;

	cout << "Line#"<< "\t" << "Command" << "\t \t " << "CommandType" << endl << endl;


	//first pass
	int ROM = 0;
	while (parser.hasMoreCommands()) {
		parser.advance();
		if (parser.commandType() == Parser::CommandType::C_COMMAND) {
			cout << ROM << "\t" << parser << "\t \t" << parser.commandTypeStr();
			cout << "\t" << parser.dest() << "\t" << parser.comp() << "\t" << parser.jump();
			ROM++;
		}

		if (parser.commandType() == Parser::CommandType::L_COMMAND) {
			cout << "\t" << parser << "\t \t" << parser.commandTypeStr();
			cout << "\t" << parser.symbol();
			symboltable.addEntry(parser.symbol(), ROM);
		}

		if (parser.commandType() == Parser::CommandType::A_COMMAND) {
			cout << ROM << "\t" << parser << "\t \t" << parser.commandTypeStr();
			cout << "\t" << parser.symbol();
			ROM++;
		}
		cout << endl;
	}



	cout << endl << endl<< "----------------------------SYMBOLTABLE-----------------------------" << endl << endl;
	cout << symboltable << endl;


	cout << endl << endl<< "----------------------------CODE CONVERSION-----------------------------" << endl << endl;

	Code code;
	int RAM = 16;

	std::fstream outfile;
	outfile.open(("test.hack"));

	parser.reload(filename);

	while (parser.hasMoreCommands()) {
		parser.advance();
		cout << parser << "\t \t \t";
		if (parser.commandType() == Parser::CommandType::C_COMMAND) {
			//cout << "111" << parser.comp() << "" << parser.dest() << "" << parser.jump() << endl;
			cout << "111" << code.comp(parser.comp()) << "" << code.dest(parser.dest()) << "" << code.jump(parser.jump())<< endl;
		}

		if (parser.commandType() == Parser::CommandType::A_COMMAND) {
			cout << "0";
			if (!parser.symbolIsNumeric())
			{
				if(!symboltable.contains(parser.symbol())) {
					symboltable.addEntry(parser.symbol(), RAM);
					RAM++;
				}
				cout << Conversions::convertStringTo15BitInt(symboltable.getAddress(parser.symbol()));
				
			} else {
				cout << Conversions::convertStringTo15BitString(parser.symbol());
			}
			cout << endl;
		}

		if (parser.commandType() == Parser::CommandType::L_COMMAND) {
			cout << endl;
		}

	}

	outfile.close();
		
};