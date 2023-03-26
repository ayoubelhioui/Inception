#ifndef ASPELL_HPP_
#define ASPELL_HPP_

# include <iostream>
# include "ATarget.hpp"

class ATarget;
class ASpell{
protected :
    std::string name;
    std::string effects;
public :
	ASpell( void );
	ASpell( std::string, std::string );
	ASpell( const ASpell & );
	ASpell &operator =( const ASpell & );
	~ASpell( void );
    std::string getName (void) const;
    std::string getEffects (void) const;
	void launch(const ATarget &) const;
    virtual const ASpell* clone() const = 0 ;
};
#endif