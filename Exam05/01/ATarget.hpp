#ifndef ATARGET_HPP_
#define ATARGET_HPP_

# include <iostream>
# include "ASpell.hpp"

class ASpell;
class ATarget{
private :
    std::string type;
public :
	ATarget( void );
	ATarget( std::string );
    const std::string &getType( void ) const ;
	virtual const ATarget* clone() const = 0 ;
	void getHitBySpell (const ASpell &) const ;
};
#endif