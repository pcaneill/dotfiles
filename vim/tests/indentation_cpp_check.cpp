// Header
// Header
// Header
// Header

#include <ddfks.h>
#include <sdjfqksdf.h>

#include "kqdfkjdskfj.h"
#include "skdfjqkdjflqsdf.h"

namespace toto {

class Toto {
public:
   /** Test.
    *
    * Blabla.
    */
   Toto () {};
   ~Toto () {};

private:
   void print_test () {};
};

static void func ()
{
   switch (dfdf) {
      case toto: {
      }  break;
      case titi:
         break;
      default:
         break;
   }

   if (AA && BB
       && CC) {
   }
   else if () {
   }
}

}
class Point
{
public:
 Point(double xc, double yc) :
    x_(xc), y_(yc)
  {
  }
  double distance(const Point& other) const;
  int compareX(const Point& other) const;
  double x_;
  double y_;
};
double Point::distance(const Point& other) const
{
  double dx = x_ - other.x_;
  double dy = y_ - other.y_;
  return sqrt(dx * dx + dy * dy);
}
int Point::compareX(const Point& other) const
{
  if (x_ < other.x_)
  {
    return -1;
  }
  else if (x_ > other.x_)
  {
    return 1;
  }
  else
  {
    return 0;
  }
}
namespace foo
{
int foo(int bar) const
{
  switch (bar)
  {
   case 0:
    ++bar;
    break;
   case 1:
    --bar;
   default:
    {
      bar += bar;
      break;
    }
  }
}
} // end namespace foo
AClass::b AClass::getThing(Fred f);
AClass::b AClass::getThing(Fred<T> f);
AClass::b AClass::getThing<T>(Fred f);
AClass::b AClass::getThing<T>(Fred<T> f);
AClass::b AClass::getThing<T::C>(Fred<T> f);
AClass::b AClass::getThing<T<t>>(Fred<T> f);
AClass::b AClass::getThing<T<t>::List>(Fred<T> f);

AClass::b AClass<T>::getThing(Fred f);
AClass::b AClass<T>::getThing(Fred<T> f);
AClass::b AClass<T>::getThing<T>(Fred f);
AClass::b AClass<T>::getThing<T>(Fred<T> f);
AClass::b AClass<T>::getThing<T::C>(Fred<T> f);
AClass::b AClass<T>::getThing<T<t>>(Fred<T> f);
AClass::b AClass<T>::getThing<T<t>::List>(Fred<T> f);

AClass<T>::b AClass::getThing(Fred f);
AClass<T>::b AClass::getThing(Fred<T> f);
AClass<T>::b AClass::getThing<T>(Fred f);
AClass<T>::b AClass::getThing<T>(Fred<T> f);
AClass<T>::b AClass::getThing<T::C>(Fred<T> f);
AClass<T>::b AClass::getThing<T<t>>(Fred<T> f);
AClass<T>::b AClass::getThing<T<t>::List>(Fred<T> f);
AClass<T>::b AClass::getThing<T<B<T>::List>::List>(Fred<T> f);

AClass<T>::b AClass<T>::getThing(Fred f);
AClass<T>::b AClass<T>::getThing(Fred<T> f);
AClass<T>::b AClass<T>::getThing<T>(Fred f);
AClass<T>::b AClass<T>::getThing<T>(Fred<T> f);
AClass<T>::b AClass<T>::getThing<T::C>(Fred<T> f);
AClass<T>::b AClass<T>::getThing<T<t>>(Fred<T> f);
AClass<T>::b AClass<T>::getThing<T<t>::List>(Fred<T> f);
AClass<T>::b AClass<T>::getThing<T<B<T>::List>::List>(Fred<T> f);

AClass::b getThing(Fred f);
AClass::b getThing(Fred<T> f);
AClass::b getThing<T>(Fred f);
AClass::b getThing<T>(Fred<T> f);
AClass::b getThing<T::C>(Fred<T> f);
AClass::b getThing<T<t>>(Fred<T> f);
AClass::b getThing<T<t>::List>(Fred<T> f);
AClass::b getThing<T<B<T>::List>::List>(Fred<T> f);

AClass<T>::b getThing(Fred f);
AClass<T>::b getThing(Fred<T> f);
AClass<T>::b getThing<T>(Fred f);
AClass<T>::b getThing<T>(Fred<T> f);
AClass<T>::b getThing<T::C>(Fred<T> f);
AClass<T>::b getThing<T<t>>(Fred<T> f);
AClass<T>::b getThing<T<t>::List>(Fred<T> f);
AClass<T>::b getThing<T<B<T>::List>::List>(Fred<T> f);

getThing<T>(Fred f);
getThing<T>(Fred<T> f);
getThing<T>(Fred<T>::List f);

AClass<T>(Fred f);
AClass<T>(Fred<T> f);
AClass<T>(Fred<T>::List f);

AClass::AClass::getThing(Fred<T> f);
AClass::badClass::getThing(Fred<T> f);
badClass::badClass::getThing(Fred<T> f);

AClass::AClass::getThing<T<B<T>::List>::List>(Fred<T> f);
AClass::badClass::getThing<T<B<T>::List>::List>(Fred<T> f);
badClass::badClass::getThing<T<B<T>::List>::List>(Fred<T> f);

AClass::AClass<T>::getThing<T<B<T>::List>::List>(Fred<T> f);
AClass::badClass<T>::getThing<T<B<T>::List>::List>(Fred<T> f);
badClass::badClass<T>::getThing<T<B<T>::List>::List>(Fred<T> f);

AClass<T>::AClass<T>::getThing<T<B<T>::List>::List>(Fred<T> f);
AClass<T>::badClass<T>::getThing<T<B<T>::List>::List>(Fred<T> f);
badClass<T>::badClass<T>::getThing<T<B<T>::List>::List>(Fred<T> f);

template <class T,
         class B>
class BaseCalss:
    public AClass<T>
{
}
template <class T,
         class B<E>>
class BaseCalss:
    public AClass<T>
{
}

for( int i=0; i<12; i++ )
{
}

template<T>
bool operator<double><( int a , int b)
{
    return b > a;
}

bool operator<( int a , int b)
{
    return b > a;
}
bool operator<=( int a , int b);
