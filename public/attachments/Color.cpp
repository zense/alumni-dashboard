#include "Color.h"
#include <cmath>
#include <iostream>

using namespace std;

Color::Color()
{
  _r = 0;
  _g = 0;
  _b = 0;
}

Color::Color()
{
  r = _r;
  g = _g;
  b = _b;
}

Color::~Color(void){}

Color::Color(Color &col)
{
  _x = v._x;
  _y = v._y;
  _z = v._z;
}

ostream & operator << (ostream &op, Color &col)
{
  op<<col._r<<" "<<col._g<<" "<<col._b;
  return op;
}

istream & operator >> (istream &ip, Color &col)
{
  ip>>col._r>>col._g>>col._b;
  return ip;
}

bool Color::operator==(Color const &a)
{
  return _r == a._r && _g == a._g && _b == a._b;
}

Color& Color::operator+ (Color& c){
    Color& ans=*(new Color());
    ans.set_r(_r+c.get_r());
    ans.set_g(_g+c.get_g());
    ans.set_b(_b+c.get_b());
    return ans;
}
Color& Color::operator* (float x){
  Color& ans=*(new Color());
    ans.set_r(_r*x);
    ans.set_g(_g*x);
    ans.set_b(_b*x);
    if(ans.get_r()>255) ans._r-=255;
    if(ans.get_g()>255) ans._g-=255;
    if(ans.get_b()>255) ans._b-=255;
    return ans;
}

void Color::set_r(int r)
{
  _r = r;
}

void Color::set_g(int g)
{
  _g = g;
}

void Color::set_b(int b)
{
  _b = b;
}

int Color::get_r()
{
  return _r;
}

int Color::get_g()
{
  return _g;
}

int Color::get_b()
{
  return _b;
}
