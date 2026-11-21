//
//  AppState.swift
//  AIChatCourse
//
//  Created by Md Mahamudul Islam on 11/18/26.
//
import SwiftUI

@Observable
class AppState {
    private(set) var showTabBar: Bool {
        didSet {
            UserDefaults.showTabBarView = showTabBar
        }
    }
    init(showTabBar: Bool = UserDefaults.showTabBarView) {
        self.showTabBar = showTabBar
    }
    func updateViewState(showTabBarView: Bool) {
        showTabBar = showTabBarView
    }

}

extension UserDefaults {
    private struct Keys {
        static let showTabBarView = "showTabBarView"
    }
    static var showTabBarView: Bool {
        get {
            standard.bool(forKey: Keys.showTabBarView)
        }
        set {
            standard.set(newValue, forKey: Keys.showTabBarView)
        }
    }
}
