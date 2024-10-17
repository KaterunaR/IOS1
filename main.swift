enum LaptopType:String{
    case ultrabook
    case gaming
    case business
}

// structure
struct Laptop{
    let model: String
    let manufacturer: String
    let year: Int?
    let memory: Int?
    let laptopType: LaptopType
}

func describeLaptop(laptop: Laptop)->String{
    var description = "Model: \(laptop.model); Manufacturer: \(laptop.manufacturer); "
    
    if let year = laptop.year{
        description += "Year: \(year); "
    }
    else{
        description += "Year: ---; "
    }
    
    if let memory = laptop.memory{
        description += "Memory: \(memory); "
    }
    else{
        description += "Memory: ---; "
    }
    
    description += "LaptopType: \(laptop.laptopType)."
    
    return description
}


// array of laptops
let laptops:[Laptop] = [
    Laptop(model: "MacBook Pro", manufacturer: "Apple", year: 2020, memory: 16, laptopType: .ultrabook),
    Laptop(model: "Tuf gaming", manufacturer: "Asus", year: nil, memory: 32, laptopType: .gaming),
    Laptop(model: "ThinkPad X1 Carbon", manufacturer: "Lenovo", year: 2021, memory: nil, laptopType: .business)
]

for laptop in laptops{
    print(describeLaptop(laptop: laptop))
}


// class
class User{
    let name:String
    let laptop:Laptop?
    
    init(name: String, laptop: Laptop?){
        self.name = name
        self.laptop = laptop
    }
    
    func describeUser()->String{
        if let laptop = laptop{
            return "Name: \(name); \(describeLaptop(laptop: laptop))"
        }
        else{
            return "Name: \(name); Laptop was unfound"
        }
    }
}

let user1 = User(name: "Alice", laptop: laptops[2])
let user2 = User(name: "Bob", laptop: nil)

print(user1.describeUser()) 
print(user2.describeUser()) 