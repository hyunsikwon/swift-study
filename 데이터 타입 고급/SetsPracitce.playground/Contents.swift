import UIKit

var str = "Hello, playground"

var favoriteGenres : Set<String> = ["Dance", "Rock", "Classical"]

print("I have \(favoriteGenres.count) favorite music genres")

if favoriteGenres.isEmpty{
    print("empty")
} else{
    print("not empty")
}

favoriteGenres.insert("Balad")

let removedGenre = favoriteGenres.remove("Rock")
removedGenre

if favoriteGenres.contains("Punky"){
    print("good!")
} else{
    print("펑키는 싫어")
}

for genre in favoriteGenres {
    print(genre)
}

for genre in favoriteGenres.sorted(){
    print(genre)
}

