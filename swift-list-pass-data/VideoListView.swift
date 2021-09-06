//
//  VideoListView.swift
//  swift-list-pass-data
//
//  Created by Danh Tu on 06/09/2021.
//

import SwiftUI

struct VideoListView: View {
    var body: some View {
        HStack {
            Image("average-dev")
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4.0)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("I'm an Average Developer")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .minimumScaleFactor(0.5)
                
                Text("January 1, 2021")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
