# include "Warlock.hpp"


Warlock::Warlock(std::string name, std::string title) : name(name), title(title) {
    std::cout << this->name << ": This looks like another boring day." << std::endl;
}

Warlock::Warlock( void ) { }


const std::string &Warlock::getName( void ) const {
    return (this->name);
}

const std::string &Warlock::getTitle( void ) const {
    return (this->title);
}

void Warlock::setTitle(const std::string &enteredTitle) {
    this->title = enteredTitle;
}

Warlock::~Warlock(void) {
    std::cout << this->name << ": My job here is done!" << std::endl;
}

void Warlock::introduce() const {
    std::cout << this->name <<": I am " << this->name << ", " <<this->title << "!" << std::endl;
}

void Warlock::learnSpell(ASpell *data) {
    this->spellSaver[data->getName()] = data;
}
void Warlock::forgetSpell(const std::string &data) {
    std::map<std::string, ASpell *>::iterator it = this->spellSaver.find(data);
    if (it != this->spellSaver.end())
        this->spellSaver.erase(it);

}

void 	Warlock::launchSpell(const std::string &data, const ATarget& target) {
    std::map<std::string, ASpell *>::iterator it = this->spellSaver.find(data);
    if (it != this->spellSaver.end())
        it->second->launch(target);
};


