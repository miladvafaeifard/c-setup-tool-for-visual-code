#include <stdio.h>
#include "../core/api.h"

void taskPrint(const char* s) {
    printf("%s %s", s, getNames());
}
