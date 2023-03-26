# include "Fwoosh.hpp"

Fwoosh::Fwoosh(void) : ASpell("Fwoosh", "Fwooshed"){ }

const ASpell* Fwoosh::clone() const {
    Fwoosh *f = new Fwoosh();
    return (f);
}


