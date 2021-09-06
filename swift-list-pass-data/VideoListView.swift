//
//  VideoListView.swift
//  swift-list-pass-data
//
//  Created by Danh Tu on 06/09/2021.
//

import SwiftUI

struct VideoListView: View {
    
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationView {
            List(videos, id: \.id) { video in
                NavigationLink(
                    destination: VideoDetailView(video: video ),
                    label: {
                        VideoCall(video: video)
                    }
                )
            }
            .navigationTitle("Sean's Top 10")
        }
        
    }
}

struct VideoCall: View {
    var video: Video
    
    var body: some View {
        HStack {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4.0)
                .padding(.vertical, 10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(video.title)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .minimumScaleFactor(0.5)
                
                Text(video.uploadDate)
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
