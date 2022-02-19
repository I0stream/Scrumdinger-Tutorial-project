//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Daniel Schliesing on 2/17/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
