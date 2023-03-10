#include <iostream>
#include <sstream>
#include <fstream>
#include <bitset>
#include <string>

using namespace std;

//message to be encrypted/decrypted
string message;
int subKey = 4;
string key = "peter what goes down";

void SubE();
void SubD();
string XORE(const string& m, const string& k);
string XORD(const string& m, const string& k);
string to_binary(const string& s);

void menu(){
    cout << "Please enter the number for the action you would like to perform\n";
    cout << "1. Substitution\n";
    cout << "2. XOR\n";

    int option;
    string ret;
    cin >> option;

    //Read from file
    fstream f;
    string temp;
    f.open("input.txt");
    if (f.is_open()){
        getline(f, message);
    }

    if(option == 1){//SUB
        cout << "Please enter the number for the action you would like to perform\n";
        cout << "1. Encryption\n";
        cout << "2. Decryption\n";
        cin >> option;
        if (option == 1){
            fstream f;
            f.open("input.txt");
            if (f.is_open()){
                getline(f, message);
            }
            SubE();
        }else if (option == 2){
            fstream f;
            f.open("encrypted.txt");
            if (f.is_open()){
                getline(f, message);
            }
            SubD();
        }else{
            cout << "That was not an option.\n";
        }
    }else if(option == 2){//XOR
        cout << "Please enter the number for the action you would like to perform\n";
        cout << "1. Encryption\n";
        cout << "2. Decryption\n";
        cin >> option;
        if (option == 1){
            ret = XORE(message, key);
        }else if (option == 2){
            ret = XORD(message, key);
        }else {
            cout << "That was not an option.\n";
        }
    }else{
        cout << "That was not an option.\n";
    }
}

void SubE(){
    int num;
    char c;
    for (char & i : message){
        num = (int)i;
        num += subKey;
        c = (char)num;
        i = c;
    }

    cout << "Encrypted message written to encrypted.txt\n";
    ofstream f;
    f.open("encrypted.txt");
    f << message;
}

void SubD(){
    int num;
    char c;
    for (char & i : message){
        num = (int)i;
        num -= subKey;
        c = (char)num;
        i = c;
    }

    cout << "Decrypted message written to decrypted.txt\n";
    ofstream f;
    f.open("decrypted.txt");
    f << message;
}

string XORE(const string& m, const string& k){
    string result = "";
    string b_m = to_binary(m);
    string b_k = to_binary(k);

    for(int x = 0; x < b_m.length(); x++) {
        if (b_m[x] != b_k[x]) {
            result += '1';
        } else {
            result += '0';
        }
    }

    cout << result << endl;
    return result;
}

string XORD(const string& m, const string& k){
    string result = "";
    string b_k = to_binary(k);

    for(int x = 0; x < m.length(); x++) {
        if (m[x] != b_k[x]) {
            result += '1';
        } else {
            result += '0';
        }
    }

    string output;
    stringstream sstream(result);

    while (sstream.good()){
        bitset<8> b;
        sstream >> b;
        char c = char(b.to_ulong());
        output+=c;
    }
    output = output.substr(0,output.length()-1);
    cout << output << endl;
    return output;
}

string to_binary(const string& s){
    string tmp = "";
    for(int i = 0; i < s.size(); i++){
        bitset<8> b (s.c_str()[i]);
        tmp += b.to_string();
    }
    return tmp;
}



int main() {
    menu();
    return 0;
}
