#ifndef FWOOSH_HPP_
#define FWOOSH_HPP_

# include "ASpell.hpp"

class Fwoosh : public ASpell{
private :
public :
	Fwoosh( void );
    const ASpell* clone () const;
};
#endif
