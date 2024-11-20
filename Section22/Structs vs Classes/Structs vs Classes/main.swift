//
//  main.swift
//  Structs vs Classes
//
//  Created by 김민규 on 11/20/24.
//

import Foundation

// Class : 변경 시 다 같이 바뀜 / let으로 선언해도 변경가능 / 얕은 복사
//var hero = ClassHero(name: "Iron Man", universe: "Marvel")
// Struct : 기존의 사항들을 유지하고 새로운 사항들만 변경 / 단, let으로 선언한 경우에 변경불가 / 깊은 복사 /
//var hero = StructHero(name: "Iron Man", universe: "Marvel")

//var anotherMarvelHero = hero
//anotherMarvelHero.name = "The Hulk"
//
//var avengers = [hero, anotherMarvelHero]
//
//avengers[0].name = "Thor"
//
//print("hero name = \(hero.name)")
//print("anotherMarvelHero name = \(anotherMarvelHero.name)")
//print("first avengers name = \(avengers[0].name)")

let hero = StructHero(name: "Iron Man", universe: "Marvel")


