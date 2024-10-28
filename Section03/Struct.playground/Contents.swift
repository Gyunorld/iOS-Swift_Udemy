struct Team {
    
    let name : String
    var players : [String]
    var positions : [String : Int]
    
    init(name: String, players: [String], positions: [String: Int]) {
        self.name = name
        self.players = players
        self.positions = positions
    }
    
    func shoot() {
        print("Press the Shoot!!")
    }
    
    // 불변성
    mutating func assist() {
        self.positions["Midfielder"] = 90
    }
}

var myTeam = Team(name: "Liverpool", players: ["Arnorld","VanDijk"], positions: ["Defender":88])
myTeam.players.append("Robertson")

var anotherTeam = Team(name: "PSG", players: ["Lee Kang In"], positions: ["Midfielder": 80])
anotherTeam.players.append("Juan Neveus")
print(anotherTeam.players)

var kleagueTeam = Team(name: "GangWon FC", players: [], positions: ["Foward": 70])

anotherTeam.players.append("Hakimi")
kleagueTeam.shoot()

myTeam.assist()
print(myTeam.positions)
