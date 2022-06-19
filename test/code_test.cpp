#include <gtest/gtest.h>
#include <string>

#include "code.h"

TEST(CodeTest, Test1) {
    Code code;
    string s = code.comp("M");
    EXPECT_EQ(s,"1");
};


