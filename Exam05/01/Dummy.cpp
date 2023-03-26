# include "Dummy.hpp"

Dummy::Dummy(void) : ATarget("Target Practice Dummy "){ }

const ATarget *Dummy::clone() const {
    return (this);
}

Dummy::~Dummy(void) {

}

