#include <gtest/gtest.h>

#include "symboltable.h"


// Demonstrate some basic assertions.
TEST(SymboltableTest, BasicAssertions) {
    Symboltable symboltable;
    symboltable.addEntry("Label1", 100);
    symboltable.addEntry("Label2", 131);
    symboltable.addEntry("Label3", 13);
    EXPECT_EQ(symboltable.contains("Label1"), true);
    EXPECT_EQ(symboltable.contains("Label5"), false);
    EXPECT_EQ(symboltable.getAddress("Label1"), 100);
}

TEST(SymboltableTest, HasDefaultLabels) {
    Symboltable symboltable;
    EXPECT_EQ(symboltable.contains("R15"), true);
    EXPECT_EQ(symboltable.contains("R17"), false);
    EXPECT_EQ(symboltable.getAddress("SCREEN"), 16384);
    EXPECT_EQ(symboltable.getAddress("R4"), symboltable.getAddress("THAT"));
}