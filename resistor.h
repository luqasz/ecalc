#ifndef RESISTOR_H
#define RESISTOR_H



class ResistorDivider
{
public:
    unsigned int r1, r2;
    double vcc;
    double divide();
};

#endif // RESISTOR_H
