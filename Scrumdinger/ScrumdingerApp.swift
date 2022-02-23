//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Daniel Schliesing on 2/17/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumView(scrums: $scrums)
            }
        }
    }
}
