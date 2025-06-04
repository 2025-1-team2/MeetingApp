//
//  MeetingAppApp.swift
//  MeetingApp
//
//  Created by 정수인 on 5/29/25.
//

import SwiftUI
import UIKit


func printAllFonts() {
    // 1) 모든 폰트 패밀리 이름을 가져옴
    for family in UIFont.familyNames.sorted() {
        print("🖋️ Family: \(family)")
        // 2) 각 패밀리 안에 속한 폰트 이름(=PostScript 이름)을 출력
        for name in UIFont.fontNames(forFamilyName: family) {
            print("    • \(name)")
        }
    }
}

@main
struct MeetingAppApp: App {
    init() {
        print("🐶 Hello, world!")    // 어디까지 실행되는지 우선 확인
        printAllFonts()             // 폰트 목록 찍기
        print("─────────────────────────────")
    }

    var body: some Scene {
        WindowGroup {
            HomeView()               // 또는 ContentView()
        }
    }
}
