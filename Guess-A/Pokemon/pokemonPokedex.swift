//
//  pokemonPokedex.swift
//  Guess-A
//
//  Created by William Milne on 2/8/2022.
//

import Foundation

struct pokemonList {
    let pokedex: [String]
}

let numbered = pokemonList(
    pokedex: ["Bulbasaur", "Ivysaur", "Venusaur", "Charmander", "Charmeleon", "Charizard", "Squirtle", "Wartortle", "Blastoise", "Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate", "Spearow","Fearow","Ekans", "Arbok", "Pikachu", "Raichu","Sandshrew", "Sandslash", "Nidoran♀", "Nidorina", "Nidoqueen", "Nidoran♂", "Nidorino", "Nidoking", "Clefairy", "Clefable", "Vulpix", "Ninetales", "Jigglypuff", "Wigglytuff", "Zubat", "Golbat", "Oddish", "Gloom", "Vileplume", "Paras", "Parasect", "Venonat", "Venomoth", "Diglett", "Dugtrio", "Meowth", "Persian", "Psyduck", "Golduck", "Mankey", "Primeape", "Growlithe", "Arcanine", "Poliwag", "Poliwhirl", "Poliwrath", "Abra", "Kadabra", "Alakazam", "Machop", "Machoke", "Machamp", "Bellsprout", "Weepinbell", "Victreebel", "Tentacool", "Tentacruel", "Geodude", "Graveler", "Golem", "Ponyta", "Rapidash", "Slowpoke", "Slowbro", "Magnemite", "Magneton", "Farfetch'd", "Doduo", "Dodrio", "Seel", "Dewgong"]
    
)

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
// Flying, Metal and Dark types arr 
let arrays = pokemonTypes(
    normal: ["Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate", "Spearow", "Fearow", "Jigglypuff", "Wigglytuff", "Meowth", "Persian", "Farfetch'd", "Doduo", "Dodrio"],
    grass: ["Bulbasaur", "Ivysaur", "Venusaur", "Oddish", "Gloom", "Vileplume", "Bellsprout", "Weepinbell", "Victreebel"],
    fire: ["Charmander", "Charmeleon", "Charizard", "Vulpix", "Ninetales", "Growlithe", "Arcanine", "Ponyta", "Rapidash"],
    water: ["Squirtle", "Wartortle", "Blastoise", "Psyduck", "Golduck", "Poliwag", "Poliwhirl", "Poliwrath", "Tentacool", "Tentacruel", "Slowpoke", "Slowbro", "Seel", "Dewgong"],
    electric: ["Pikachu", "Raichu", "Magnemite", "Magneton"],
    bug: ["Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Paras", "Parasect", "Venonat", "Venomoth"],
    fighting: ["Mankey", "Primeape", "Machop", "Machoke", "Machamp"],
    rock: ["Geodude", "Graveler", "Golem"],
    ground: ["Sandshrew", "Sandslash", "Diglett", "Dugtrio"],
    poison: ["Ekans", "Arbok", "Nidoran♀", "Nidorina", "Nidoqueen", "Nidoran♂", "Nidorino", "Nidoking", "Zubat", "Golbat"],
    psychic: ["Abra", "Kadabra", "Alakazam"],
    ice: [],
    ghost: [],
    dragon: [],
    fairy: ["Clefairy", "Clefable"]
)
