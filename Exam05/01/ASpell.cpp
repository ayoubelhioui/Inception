
# include "ASpell.hpp"
ASpell::ASpell(std::string name, std::string effects) : name(name), effects(effects){ }

void ASpell::launch(const ATarget &obj) const {
    obj.getHitBySpell(*this);
}

std::string ASpell::getName(void) const {
    return (this->name);
}

std::string ASpell::getEffects(void) const {
    return (this->effects);
}
