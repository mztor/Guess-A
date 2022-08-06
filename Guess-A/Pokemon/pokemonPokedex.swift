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
    pokedex: ["Bulbasaur", "Ivysaur", "Venusaur", "Charmander", "Charmeleon", "Charizard", "Squirtle", "Wartortle", "Blastoise", "Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate", "Spearow","Fearow","Ekans", "Arbok", "Pikachu", "Raichu","Sandshrew", "Sandslash", "Nidoran♀", "Nidorina", "Nidoqueen", "Nidoran♂", "Nidorino", "Nidoking", "Clefairy", "Clefable", "Vulpix", "Ninetales", "Jigglypuff", "Wigglytuff", "Zubat", "Golbat", "Oddish", "Gloom", "Vileplume", "Paras", "Parasect", "Venonat", "Venomoth", "Diglett", "Dugtrio"]
    
)

struct pokemonTypes {
    let normal: [String]
    let grass: [String]
    let fire: [String]
    let water: [String]
    let electric: [String]
    let bug: [String]
    let flying: [String]
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
    normal: ["Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate", "Spearow", "Fearow", "Jigglypuff", "Wigglytuff"],
    grass: ["Bulbasaur", "Ivysaur", "Venusaur", "Oddish", "Gloom", "Vileplume"],
    fire: ["Charmander", "Charmeleon", "Charizard", "Vulpix", "Ninetales"],
    water: ["Squirtle", "Wartortle", "Blastoise"],
    electric: ["Pikachu", "Raichu"],
    bug: ["Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Paras", "Parasect", "Venonat", "Venomoth"],
    flying: [],
    fighting: [],
    rock: [],
    ground: ["Sandshrew", "Sandslash", "Diglett", "Dugtrio"],
    poison: ["Ekans", "Arbok", "Nidoran♀", "Nidorina", "Nidoqueen", "Nidoran♂", "Nidorino", "Nidoking", "Zubat", "Golbat"],
    psychic: [],
    ice: [],
    ghost: [],
    dragon: [],
    fairy: ["Clefairy", "Clefable"]
)
