#include <iostream>
#include <wiringPi.h>

using namespace std;

const int pin = 4;
int main()
{
  wiringPiSetup();
  pinMode(pin, OUTPUT);
   
  while(1) {
    digitalWrite(pin, 0);
    digitalWrite(pin, 1);
  }
  return 0;
}
