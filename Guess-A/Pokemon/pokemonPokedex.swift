//
//  pokemonPokedex.swift
//  Guess-A
//
//  Created by William Milne on 2/8/2022.
//

import Foundation

struct pokemonList {
    
    let pokemon: [String]
    
}

let numbered = pokemonList(
    
    pokemon: ["Bulbasaur", "Ivysaur", "Venusaur", "Charmander", "Charmeleon", "Charizard", "Squirtle", "Wartortle", "Blastoise", "Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate", "Spearow","Fearow","Ekans", "Arbok", "Pikachu", "Raichu","Sandshrew", "Sandslash", "Nidoran♀", "Nidorina", "Nidoqueen", "Nidoran♂", "Nidorino", "Nidoking", "Clefairy", "Clefable", "Vulpix", "Ninetales", "Jigglypuff", "Wigglytuff", "Zubat", "Golbat", "Oddish", "Gloom", "Vileplume", "Paras", "Parasect", "Venonat", "Venomoth", "Diglett", "Dugtrio", "Meowth", "Persian", "Psyduck", "Golduck", "Mankey", "Primeape", "Growlithe", "Arcanine", "Poliwag", "Poliwhirl", "Poliwrath", "Abra", "Kadabra", "Alakazam", "Machop", "Machoke", "Machamp", "Bellsprout", "Weepinbell", "Victreebel", "Tentacool", "Tentacruel", "Geodude", "Graveler", "Golem", "Ponyta", "Rapidash", "Slowpoke", "Slowbro", "Magnemite", "Magneton", "Farfetch'd", "Doduo", "Dodrio", "Seel", "Dewgong", "Grimer", "Muk", "Shellder", "Cloyster", "Gastly", "Haunter", "Gengar", "Onix", "Drowzee", "Hypno", "Krabby", "Kingler", "Voltorb", "Electrode", "Exeggcute", "Exeggutor", "Cubone", "Marowak", "Hitmonlee", "Hitmonchan", "Lickitung", "Koffing", "Weezing", "Rhyhorn", "Rhydon", "Chansey", "Tangela", "Kangaskhan", "Horsea", "Seadra", "Goldeen", "Seaking", "Staryu", "Starmie", "Mr. Mime", "Scyther", "Jynx", "Electabuzz", "Magmar", "Pinsir", "Tauros", "Magikarp", "Gyarados", "Lapras", "Ditto", "Eevee", "Vaporeon", "Jolteon", "Flareon", "Porygon", "Omanyte", "Omastar", "Kabuto", "Kabutops", "Aerodactyl", "Snorlax", "Articuno", "Zapdos", "Moltres", "Dratini", "Dragonair", "Dragonite", "Mewtwo", "Mew"]
    
)
// List of all Pokémon

struct pokemonTypes {
    
    let normal: [String]
    let grass: [String]
    let fire: [String]
    let water: [String]
    let electric: [String]
    let bug: [String]
    let fighting: [String]
    let rock: [String]
    let ground: [String]
    let poison: [String]
    let psychic: [String]
    let ice: [String]
    let ghost: [String]
    let dragon: [String]
    let fairy: [String]
    
}

let arrays = pokemonTypes(
    
    normal: ["Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate", "Spearow", "Fearow", "Jigglypuff", "Wigglytuff", "Meowth", "Persian", "Farfetch'd", "Doduo", "Dodrio", "Lickitung", "Chansey", "Kangaskhan", "Tauros", "Ditto", "Eevee", "Porygon", "Snorlax"],
    grass: ["Bulbasaur", "Ivysaur", "Venusaur", "Oddish", "Gloom", "Vileplume", "Bellsprout", "Weepinbell", "Victreebel", "Exeggcute", "Exeggutor", "Tangela"],
    fire: ["Charmander", "Charmeleon", "Charizard", "Vulpix", "Ninetales", "Growlithe", "Arcanine", "Ponyta", "Rapidash", "Magmar", "Flareon", "Moltres"],
    water: ["Squirtle", "Wartortle", "Blastoise", "Psyduck", "Golduck", "Poliwag", "Poliwhirl", "Poliwrath", "Tentacool", "Tentacruel", "Slowpoke", "Slowbro", "Seel", "Dewgong", "Shellder", "Cloyster", "Krabby", "Kingler", "Horsea", "Seadra", "Goldeen", "Seaking", "Staryu", "Starmie", "Magikarp", "Gyarados", "Lapras", "Vaporeon"],
    electric: ["Pikachu", "Raichu", "Magnemite", "Magneton", "Voltorb", "Electrode", "Electabuzz", "Jolteon", "Zapdos"],
    bug: ["Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Paras", "Parasect", "Venonat", "Venomoth", "Scyther", "Pinsir"],
    fighting: ["Mankey", "Primeape", "Machop", "Machoke", "Machamp", "Hitmonlee", "Hitmonchan"],
    rock: ["Geodude", "Graveler", "Golem", "Onix", "Omanyte", "Omastar", "Kabuto", "Kabutops", "Aerodactyl"],
    ground: ["Sandshrew", "Sandslash", "Diglett", "Dugtrio", "Cubone", "Marowak", "Rhyhorn", "Rhydon"],
    poison: ["Ekans", "Arbok", "Nidoran♀", "Nidorina", "Nidoqueen", "Nidoran♂", "Nidorino", "Nidoking", "Zubat", "Golbat", "Grimer", "Muk", "Koffing", "Weezing"],
    psychic: ["Abra", "Kadabra", "Alakazam", "Drowzee", "Hypno", "Mr. Mime", "Mewtwo", "Mew"],
    ice: ["Jynx", "Articuno"],
    ghost: ["Gastly", "Haunter", "Gengar"],
    dragon: ["Dratini", "Dragonair", "Dragonite"],
    fairy: ["Clefairy", "Clefable"]
    
)
// Flying, Metal and Dark types are not shown as no generation 1 Pokémon have any of those types as their primary type

struct speciesList {
    
    let pokedex: [String: String]
    
}

let longList = speciesList (
    
    pokedex: ["Bulbasaur" : "Seed", "Ivysaur" : "Seed", "Venusaur" : "Seed", "Charmander" : "Lizard", "Charmeleon" : "Flame", "Charizard" : "Flame", "Squirtle" : "Tiny Turtle", "Wartortle" : "Turtle", "Blastoise" : "Shellfish", "Caterpie" : "Worm", "Metapod" : "Cocoon", "Butterfree" : "Butterfly", "Weedle" : "Hairy Bug", "Kakuna" : "Cocoon", "Beedrill" : "Bee", "Pidgey" : "Tiny Bird", "Pidgeotto" : "Bird", "Pidgeot" : "Bird", "Rattata" : "Mouse", "Raticate" : "Mouse", "Spearow" : "Tiny Bird", "Fearow" : "Beak", "Ekans" : "Snake", "Arbok" : "Cobra", "Pikachu" : "Mouse", "Raichu" : "Mouse", "Sandshrew" : "Mouse", "Sandslash" : "Mouse", "Nidoran♀" : "Poison Pin", "Nidorina" : "Poison Pin", "Nidoqueen" : "Drill", "Nidoran♂" : "Poison Pin", "Nidorino" : "Poison Pin", "Nidoking" : "Drill", "Clefairy" : "Fairy", "Clefable" : "Fairy", "Vulpix" : "Fox", "Ninetales" : "Fox", "Jigglypuff" : "Balloon", "Wigglytuff" : "Balloon", "Zubat" : "Bat", "Golbat" : "Bat", "Oddish" : "Weed", "Gloom" : "Weed", "Vileplume" : "Flower", "Paras" : "Mushroom", "Parasect" : "Mushroom", "Venonat" : "Insect", "Venomoth" : "Poison Moth", "Diglett" : "Mole", "Dugtrio" : "Mole", "Meowth" : "Scratch Cat", "Persian" : "Classy Cat", "Psyduck" : "Duck", "Golduck" : "Duck", "Mankey" : "Pig Monkey", "Primeape" : "Pig Monkey", "Growlithe" : "Puppy", "Arcanine" : "Legendary", "Poliwag" : "Tadpole", "Poliwhirl" : "Tadpole", "Poliwrath" : "Tadpole", "Abra" : "Psi", "Kadabra" : "Psi", "Alakazam" : "Psi", "Machop" : "Superpower", "Machoke" : "Superpower", "Machamp" : "Superpower", "Bellsprout" : "Flower", "Weepinbell" : "Flycatcher", "Victreebel" : "Flycatcher", "Tentacool" : "Jellyfish", "Tentacruel" : "Jellyfish", "Geodude" : "Rock", "Graveler" : "Rock", "Golem" : "Megaton", "Ponyta" : "Fire Horse", "Rapidash" : "Fire Horse", "Slowpoke" : "Derpy", "Slowbro" : "Hermit Crab", "Magnemite" : "Magnet", "Magneton" : "Magnet", "Farfetch'd" : "Wild Duck", "Doduo" : "Twin Bird", "Dodrio" : "Trio Brd", "Seel" : "Sea Lion", "Dewgong" : "Sea Lion", "Grimer" : "Sludge", "Muk" : "Sludge", "Shellder" : "Bivalve", "Cloyster" : "Bivalve", "Gastly" : "Gas", "Haunter" : "Gas", "Gengar" : "Shadow", "Onix" : "Rock Snake", "Drowzee" : "Hypnosis", "Hypno" : "Hypnosis", "Krabby" : "River Crab", "Kingler" : "Pincer", "Voltorb" : "Ball", "Electrode" : "Ball", "Exeggcute" : "Egg", "Exeggutor" : "Coconut", "Cubone" : "Lonely", "Marowak" : "Bone Keeper", "Hitmonlee" : "Kicking", "Hitmonchan" : "Punching", "Lickitung" : "Licking", "Koffing" : "Poison Gas", "Weezing" : "Poison Gas", "Rhyhorn" : "Spikes", "Rhydon" : "Drill", "Chansey" : "Egg", "Tangela" : "Vine", "Kangaskhan" : "Parent", "Horsea" : "Dragon", "Seadra" : "Dragon", "Goldeen" : "Goldfish", "Seaking" : "Goldfish", "Staryu" : "Star Shape", "Starmie" : "Mysterious", "Mr. Mime" : "Barrier", "Scyther" : "Mantis", "Jynx" : "Human Shape", "Electabuzz" : "Electric", "Magmar" : "Spitfire", "Pinsir" : "Stag Beetle", "Tauros" : "Wild Bull", "Magikarp" : "Fish", "Gyarados" : "Atrocious", "Lapras" : "Transport", "Ditto" : "Transform", "Eevee" : "Evolution", "Vaporeon" : "Bubble Jet", "Jolteon" : "Lightning", "Flareon" : "Flame", "Porygon" : "Virtual", "Omanyte" : "Spiral", "Omastar" : "Spiral", "Kabuto" : "Shellfish", "Kabutops" : "Shellfish", "Aerodactyl" : "Fossil", "Snorlax" : "Sleeping", "Articuno" : "Freeze", "Zapdos" : "Electric", "Moltres" : "Flame", "Dratini" : "Dragon", "Dragonair" : "Dragon", "Dragonite" : "Dragon", "Mewtwo" : "Genetic", "Mew" : "New Species"]
    
)
// List of all Pokémon and their species
