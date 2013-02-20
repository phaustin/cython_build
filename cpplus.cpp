#include <bitset>
#include <iostream>
#include "cpplus.hpp"

using namespace std;

void readbytes(signed char* bytevals,signed char* maskout,int nvals){
    cout << "bitmask pixel dump:" << "-- number of bytes: " << nvals 
	 << "-- first byte: " <<  std::bitset<8>(bytevals[0]) << endl;
    for(int i=0; i < nvals; ++i){
      //convert bits to mask value of 0, 1, 3 or 3
      std::bitset<8> myseq(bytevals[i]);
      maskout[i] = myseq[1] +(myseq[2]*2);
    }
}




