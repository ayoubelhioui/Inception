#ifndef DUMMY_HPP_
#define DUMMY_HPP_

# include "ATarget.hpp"

class Dummy : public ATarget{
private :

public :
	Dummy( void );
	~Dummy( void );
    const ATarget* clone() const;
};
#endif