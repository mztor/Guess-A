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
    pokedex: ["Bulbasaur", "Ivysaur", "Venusaur", "Charmander", "Charmeleon", "Charizard", "Squirtle", "Wartortle", "Blastoise", "Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate", "Spearow","Fearow","Ekans", "Arbok", "Pikachu", "Raichu","Sandshrew", "Sandslash", "Nidoran♀", "Nidorina", "Nidoqueen", "Nidoran♂", "Nidorino", "Nidoking", "Clefairy", "Clefable", "Vulpix", "Ninetales", "Jigglypuff", "Wigglytuff", "Zubat", "Golbat", "Oddish", "Gloom", "Vileplume", "Paras", "Parasect", "Venonat", "Venomoth", "Diglett", "Dugtrio", "Meowth", "Persian", "Psyduck", "Golduck", "Mankey", "Primeape", "Growlithe", "Arcanine", "Poliwag", "Poliwhirl", "Poliwrath", "Abra", "Kadabra", "Alakazam", "Machop", "Machoke", "Machamp", "Bellsprout", "Weepinbell", "Victreebel", "Tentacool", "Tentacruel", "Geodude", "Graveler", "Golem", "Ponyta", "Rapidash", "Slowpoke", "Slowbro", "Magnemite", "Magneton", "Farfetch'd", "Doduo", "Dodrio", "Seel", "Dewgong", "Grimer", "Muk", "Shellder", "Cloyster", "Gastly", "Haunter", "Gengar", "Onix", "Drowzee", "Hypno", "Krabby", "Kingler", "Voltorb", "Electrode", "Exeggcute", "Exeggutor", "Cubone", "Marowak", "Hitmonlee", "Hitmonchan", "Lickitung", "Koffing", "Weezing", "Rhyhorn", "Rhydon", "Chansey", "Tangela", "Kangaskhan", "Horsea", "Seadra", "Goldeen", "Seaking", "Staryu", "Starmie", "Mr. Mime", "Scyther", "Jynx", "Electabuzz", "Magmar", "Pinsir", "Tauros", "Magikarp", "Gyarados", "Lapras", "Ditto", "Eevee", "Vaporeon", "Jolteon", "Flareon", "Porygon", "Omanyte", "Omastar", "Kabuto", "Kabutops", "Aerodactyl", "Snorlax", "Articuno", "Zapdos", "Moltres", "Dratini", "Dragonair", "Dragonite", "Mewtwo", "Mew"]
    
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
