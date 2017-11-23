#ifdef IMAGE_H
#define IMAGE_H


class Image{
private:
  int _w,_h;
  Pixel **_p;

public:
  Image(){};
  Image(int w,int h,Pixel **p);
  Image(int w,int h);
  Image(Image &i);
  friend ostream & operator << (ostream &out, Image &i);
  Pixel get_p(int x,int y);
  void set_p(Pixel p,int x,int y);
  vector<int> histogram();
};

#endif
