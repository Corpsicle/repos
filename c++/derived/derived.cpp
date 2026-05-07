#include <iostream>

using namespace std;

class Polygon
{
    protected:
        int width, height;
    public:
        void setValues (int w, int h)
        {
            width = w;
            height = h;
        }
};

class Rectangle : public Polygon
{
    public:
        int area()
        {
            return width * height;
        }
};