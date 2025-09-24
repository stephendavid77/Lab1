//
//  DogData.swift
//  Lab1
//
//  Created by Stephen David on 9/23/25.
//


import Foundation

// Array of dog image names (these should match image files in Assets.xcassets)
let dogNames = [
    "Airedale Terrier",
    "American Foxhound",
    "Dutch Shepherd",
    "Havanese",
    "Leonberger",
    "Mudi",
    "Norwegian Lundehund",
    "Pharaoh Hound",
    "Scottish Terrier",
    "Tosa"
]

// Array of dog descriptions (copied from dog_data.txt)
let dogDescriptions = [
    "The Airedale stands among the world's most versatile dog breeds and has distinguished himself as hunter, athlete, and companion.",
    "American Foxhounds are good-natured, low-maintenance hounds who get on well with kids, dogs, even cats, but come with special considerations for prospective owners.",
    "The Dutch Shepherd is a lively, athletic, alert and intelligent breed, and has retained its herding instinct for which it was originally developed.",
    "Havanese, the only dog breed native to Cuba, are vivacious and sociable companions and are especially popular with American city dwellers.",
    "The Leonberger is a lush-coated giant of German origin. They have a gentle nature and serene patience and they relish the companionship of the whole family.",
    "The Mudi is an extremely versatile, intelligent, alert, agile, all-purpose Hungarian farm dog. The breed is a loyal protector of property and family members without being overly aggressive.",
    "From Norway’s rocky island of Vaeroy, the uniquely constructed Norwegian Lundehund is the only dog breed created for the job of puffin hunting. With puffins now a protected species, today’s Lundehund is a friendly, athletic companion.",
    "The Pharaoh Hound, ancient \"Blushing Dog\" of Malta, is an elegant but rugged sprinting hound bred to course small game over punishing terrain. Quick and tenacious on scent, these friendly, affectionate hounds settle down nicely at home.",
    "A solidly compact dog of vivid personality, the Scottish Terrier is an independent, confident companion of high spirits. Scotties have a dignified, almost-human character.",
    "The Tosa's temperament is marked by patience, composure, boldness and courage. He is normally a tranquil, quiet, and obedient dog, with a calm but vigilant demeanor."
]

// Dictionary combining dog names and descriptions
let dogDict = Dictionary(uniqueKeysWithValues: zip(dogNames, dogDescriptions))

