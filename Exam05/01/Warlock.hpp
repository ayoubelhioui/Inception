#ifndef WAR_LOCK_HPP_
#define WAR_LOCK_HPP_

# include <iostream>
# include <map>
# include "ASpell.hpp"
class Warlock{
private :
    std::map<std::string , ASpell *> spellSaver;
    std::string name;
    std::string title;
    Warlock( void );
    Warlock( const Warlock & );
    Warlock &operator =( const Warlock & );
public :
    Warlock (std::string name, std::string title);
	~Warlock( void );
    const   std::string &getName( void ) const ;
    const   std::string &getTitle( void ) const ;
    void    setTitle (const std::string &);
    void    introduce() const;
	void 	learnSpell( ASpell * );
	void 	forgetSpell(const std::string &) ;
	void 	launchSpell(const std::string &, const ATarget& ) ;
};

#endif