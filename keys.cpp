#include <iostream>
#include <string>
#include <chrono>

using namespace std;

int KEY_LENGTH = 6;
string ENCRYPTED = "GXILBGLQQJAIPWBMRKAZBWYKKKUCRKG";

void decrypt(string current)
{
    string message = current;
    for (int i = 0; i < ENCRYPTED.size(); i++)
    {
        int new_letter = ENCRYPTED[i];
        new_letter = (new_letter - message[i] + 26) % 26 + 'A';
        message.push_back(new_letter);
    }
    string message_without_key = message.substr(KEY_LENGTH);
    if (message_without_key.find("GESTURE") != string::npos)
    {
        cout << message_without_key << endl;
    }
}

void generate_strings(string current)
{
    if (current.size() < KEY_LENGTH)
    {
        for (char i = 'A'; i <= 'Z'; i++)
        {
            current.push_back(i);
            generate_strings(current);
            current.pop_back();
        }
    }
    if (current.size() == KEY_LENGTH)
    {
        decrypt(current);
    }
}

int main()
{
    auto start = chrono::steady_clock::now();
    string s;
    generate_strings(s);
    // decrypt("GLAUBE");
    auto end = chrono::steady_clock::now();
    cout << chrono::duration<double, milli>(end - start).count() << " ms" << endl;
    return 0;
}
