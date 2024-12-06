import UIKit

/*
 Objective:
    **Create a base protocol with common properties or methods for monsters.
    **Derive two child protocols for specific monster types.
    **Create four classes (two flying and two water monsters) conforming to these child protocols.
    **Write a function that accepts a collection of Monster objects and prints details about each.

 */

//===================================>>

/*  Create a base protocol with common properties or methods for monsters.
 */

// Step 1: Define the Base Protocol
protocol Monster {
    var name: String {get}
    func whiz() -> String
}
/* Derive two child protocols for specific monster types.
 */

// Step 2: Define Child Protocols
protocol FlyingMonster: Monster {
    var wingSpan: Double { get }
    func wave() -> String
}

protocol WaterMonster: Monster {
    var swimSpeed: Int { get }
    func float() -> String
}
/* Create four classes (two flying and two water monsters) conforming to these child protocols.
 */
// Step 3: Create Four Classes
class Dragon: FlyingMonster {
    var name: String
    var wingSpan: Double

    init(name: String, wingSpan: Double) {
        self.name = name
        self.wingSpan = wingSpan
    }

    func whiz() -> String {
        return "\(name) whiz fiercely, shaking the ground!"
    }

    func wave() -> String {
        return "\(name) spreads its \(wingSpan)-meter wings and takes to the sky!"
    }
}

class Gryphon: FlyingMonster {
    var name: String
    var wingSpan: Double

    init(name: String, wingSpan: Double) {
        self.name = name
        self.wingSpan = wingSpan
    }

    func whiz() -> String {
        return "\(name) screeches with a piercing cry!"
    }

    func wave() -> String {
        return "\(name) soars high with its majestic \(wingSpan)-meter wings!"
    }
}

class Kraken: WaterMonster {
    var name: String
    var swimSpeed: Int

    init(name: String, swimSpeed: Int) {
        self.name = name
        self.swimSpeed = swimSpeed
    }

    func whiz() -> String {
        return "\(name) bellows from the deep, causing waves to crash!"
    }

    func float() -> String {
        return "\(name) glides through the water at \(swimSpeed) knots!"
    }
}

class Merfolk: WaterMonster {
    var name: String
    var swimSpeed: Int

    init(name: String, swimSpeed: Int) {
        self.name = name
        self.swimSpeed = swimSpeed
    }

    func whiz() -> String {
        return "\(name) sings an enchanting melody that stirs the seas!"
    }

    func float() -> String {
        return "\(name) swims gracefully at \(swimSpeed) knots!"
    }
}

// Step 4: Function to Print Monster Details
func printMonsterDetails(monsters: [Monster]) {
    for monster in monsters {
        print (monster.whiz())
        if let flyingMonster = monster as? FlyingMonster {
            print(flyingMonster.wave())
        }
        if let waterMonster = monster as? WaterMonster {
            print(waterMonster.float())
        }
        print ("---------------------------------------------------------------")
    }
}
           
// print the entire report at the end
// class report

let fireDrake = Dragon (name: "Fire Drake", wingSpan: 15.0)
let skyHunter = Gryphon (name:"Sky Hunter", wingSpan: 12.0)
let seaTerror = Kraken (name: "Sea Terror",  swimSpeed: 20)
let coralQueen = Merfolk (name: "Coral Queen", swimSpeed:10)

let monster: [Monster] = [fireDrake, skyHunter, seaTerror, coralQueen]
printMonsterDetails(monsters: monster)






