#include <bits/stdc++.h>
#include "image.h"
using namespace std;


image::image(){}
image::image(int w, int h){
    _w=w;
    _h=h;
}
image::~image(){}
int image::get_width(){ return _w; }
int image::get_height(){ return _h; }
pixel** image::get_p2p(){ return p; }
void image::array_init(){
    this->p = new pixel*[this->_h];
    for(int i = 0; i < this->_h; ++i)
        this->p[i] = new pixel[this->_w];
}
