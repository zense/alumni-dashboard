#include "Image.h"
#include <iostream>

Image::Image(){};

Image::Image(int w,int h,Pixel **p): _w(w), _h(h), _p(p){}

Image::Image(int w,int h): _w(w), _h(h){
  _p=new Pixel*[w];
  for(int i=0;i<w;i++){
    _p[i]=new Pixel[h];
  }
}

Image::Image(Image &i): _w(i._w), _h(i._h), _p(i._p){}


Pixel Image::get_p(int x,int y){
  return _p[x][y];
}

ostream & operator << (ostream &out, Image &i){
  for(int j=0;j<i._w;j++){
    for(int k=0;k<i._h;k++){
      out<<i._p[j][k]<<" ";
    }
    out<<endl;
  }
}

vector<int> Image::histogram(){
  vector<int> v;
  for(int x=0;x<_h;x++){
    for(int y=0;y<_w;y++){
      v[]
    }
  }
}
