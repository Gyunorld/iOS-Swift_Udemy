func greeting(name: String) -> Bool {
    if name == "Leclerc" || name == "Sainz" {
        return true
    } else {
        return false
    }
}

var forzaFerrari = greeting(name: "Sainz")
print(forzaFerrari)
