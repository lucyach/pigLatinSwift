// initialize
print("Please type what you would like to translate.")
var input = "";
if let str = readLine(){
  input = str.lowercased()
}



func translateWord(inp: String) -> String {
  
  var letters = [""]

  // add to list
  var counter = 1
  var indexer = inp.index(inp.startIndex, offsetBy: 0)
  while (counter < inp.count+1) {
    letters.append(String(inp[indexer]))
    indexer = inp.index(inp.startIndex, offsetBy: counter)
    counter+=1
  }
  letters.remove(at: 0)

  // check for consonant
  let holder = letters[0]
  if (!(letters[0] == "a" || letters[0] == "e" || letters[0] == "i" || letters[0] == "o" || letters[0] == "u")) {
    letters.append(holder)
    letters.remove(at: 0)
  }

  // add "ay"
  letters.append("a")
  letters.append("y")
  
  // finalize
  var output = ""
  counter = 0
  while (counter < letters.count) {
    output = output + letters[counter]
    counter+=1
  }

  return output
}

print(translateWord(inp: input))


// THIS WORKS:
// let s = "Swift"
// let i = s.index(s.startIndex, offsetBy: 4)
// print(s[i])
