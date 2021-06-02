print("Please type what you would like to translate.")
var input = "";
if let str = readLine(){
  input = str.lowercased()
}

let firstLetter = input.index(input.startIndex, offsetBy: 0)
print(input[firstLetter])
let movedLetter = input

if (!(input[firstLetter] == "a" || input[firstLetter] == "e" || input[firstLetter] == "i" || input[firstLetter] == "o" || input[firstLetter] == "u")) {
  print("consonant")
}





// THIS WORKS:
// let s = "Swift"
// let i = s.index(s.startIndex, offsetBy: 4)
// print(s[i])

