#include "data.hpp"
#include <iostream>

data::data() {
    feature_vector = new std::vector<uint8_t>;
}

data::~data() {

}

void data::set_feature_vector(std::vector<uint8_t> *vect) {
    feature_vector = vect;
}

void data::append_to_feature_vector(uint8_t vals) {
    feature_vector -> push_back(vals);
}

void data::set_label(uint8_t inp) {
    label = inp;
}
void data::set_enum_label(int inp) {
    enum_label = inp;
};

int data::get_feature_vector_size() {
    return feature_vector -> size();
};

uint8_t data::get_label() {
    return label;
}

uint8_t data::get_enum_label() {
    return enum_label;
}
std::vector<uint8_t>* data::get_feature_vector() {
    return feature_vector;
}
