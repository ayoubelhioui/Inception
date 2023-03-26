# include "ATarget.hpp"

const std::string &ATarget::getType(void) const {
    return (this->type);
}

ATarget::ATarget(std::string type) : type(type) { }

void ATarget::getHitBySpell(const ASpell &obj) const {
    std::cout << this->type << "has been " << obj.getEffects() << std::endl;
}
