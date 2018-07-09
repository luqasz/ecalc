#include "resistor.h"



double ResistorDivider::divide() {

    if (r1 == 0 or r2 == 0) {
        return 0;
    }
    return (double)((vcc * r2) / (r1 + r2));
}
