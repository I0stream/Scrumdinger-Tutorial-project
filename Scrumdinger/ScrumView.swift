//
//  ScrumView.swift
//  Scrumdinger
//
//  Created by Daniel Schliesing on 2/18/22.
//

import SwiftUI

struct ScrumView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(action: {}){
                Image(systemName: "plus")
            }
        }
        .accessibilityLabel("New scrum")
    }
}

struct ScrumView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumView(scrums: DailyScrum.sampleData)
        }
    }
}
