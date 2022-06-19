#include <string>
#include <map>

#include "code.h"

string Code::comp(string s) const {
    return comp_cmds.find(s)->second;
}

string Code::jump(string s) const {
    return jump_cmds.find(s)->second;
}

string Code::dest(string s) const {
    return dest_cmds.find(s)->second;
}