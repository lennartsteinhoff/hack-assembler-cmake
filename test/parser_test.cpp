#include <gtest/gtest.h>
#include <fstream>
#include <iostream>
#include <string>

#include "parser.h"

using namespace std;

TEST(ParserTest, readFile) {
  std::fstream testfile("testfiles/opentest.asm");
  string testprogram;
  getline (testfile, testprogram);
  testfile.close();
  EXPECT_EQ(testprogram, "Testfile open");
}

TEST(ParserTest, C_Instruction1) {
  std::fstream testfile("testfiles/c_instructions.asm");
  Parser parser ("testfiles/c_instructions.asm");

  EXPECT_EQ(true, parser.hasMoreCommands());
  
  parser.advance();
  cout << parser << endl;
  EXPECT_EQ(parser.dest(), "A");
  EXPECT_EQ(parser.comp(), "!D");
  EXPECT_EQ(parser.jump(), "null");
}
TEST(ParserTest, C_Instruction2) {
  std::fstream testfile("testfiles/c_instructions.asm");
  Parser parser ("testfiles/c_instructions.asm");

  parser.advance();
  parser.advance();
  EXPECT_EQ(parser.dest(), "A");
  EXPECT_EQ(parser.comp(), "D");
  EXPECT_EQ(parser.jump(), "null");
}
TEST(ParserTest, C_Instruction3) {
  std::fstream testfile("testfiles/c_instructions.asm");
  Parser parser ("testfiles/c_instructions.asm");

  parser.advance();
  parser.advance();
  parser.advance();
  EXPECT_EQ(parser.dest(), "A");
  EXPECT_EQ(parser.comp(), "D");
  EXPECT_EQ(parser.jump(), "null");
}
TEST(ParserTest, C_Instruction4) {
  std::fstream testfile("testfiles/c_instructions.asm");
  Parser parser ("testfiles/c_instructions.asm");

  parser.advance();
  parser.advance();
  parser.advance();
  parser.advance();
  EXPECT_EQ(parser.dest(), "AD");
  EXPECT_EQ(parser.comp(), "M");
  EXPECT_EQ(parser.jump(), "null");
}
TEST(ParserTest, C_Instruction5) {
  std::fstream testfile("testfiles/c_instructions.asm");
  Parser parser ("testfiles/c_instructions.asm");

  parser.advance();
  parser.advance();
  parser.advance();
  parser.advance();
  parser.advance();
  EXPECT_EQ(parser.dest(), "D");
  EXPECT_EQ(parser.comp(), "AM");
  EXPECT_EQ(parser.jump(), "JMP");
}
TEST(ParserTest, C_Instruction6) {
  std::fstream testfile("testfiles/c_instructions.asm");
  Parser parser ("testfiles/c_instructions.asm");

  parser.advance();
  parser.advance();
  parser.advance();
  parser.advance();
  parser.advance();
  parser.advance();
  EXPECT_EQ(parser.dest(), "null");
  EXPECT_EQ(parser.comp(), "-D");
  EXPECT_EQ(parser.jump(), "JMP");
}
TEST(ParserTest, C_Instruction7) {
  std::fstream testfile("testfiles/c_instructions.asm");
  Parser parser ("testfiles/c_instructions.asm");

  parser.advance();
  parser.advance();
  parser.advance();
  parser.advance();
  parser.advance();
  parser.advance();
  parser.advance();
  EXPECT_EQ(parser.dest(), "null");
  EXPECT_EQ(parser.comp(), "0");
  EXPECT_EQ(parser.jump(), "JMP");
}


TEST(ParserTest, skipWhiteLines) {
  EXPECT_STREQ("hello", "world");   
}

TEST(ParserTest, A_Instruction) {
  EXPECT_STREQ("hello", "world");
}



