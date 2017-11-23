#include "Pixel.h"
#include <cmath>
#include <iostream>

using namespace std;

Pixel::Pixel(){};

Pixel::Pixel(int x, int y, Color col): _x(x), _y(y), _col(col){};

Pixel::Pixel(Pixel &pix): _x(pix._x), _y(pix._y), _col(pix._col){};

void Pixel::set_p(float r, float g, float b)
{
  _col.set_r(r);
  _col.set_g(g);
  _col.set_b(b);
}

ostream & operator << (ostream &op, Pixel &pix)
{
  op<<pix._c;
  return op;
}
