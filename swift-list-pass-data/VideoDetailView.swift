//
//  VideoDetailView.swift
//  swift-list-pass-data
//
//  Created by Danh Tu on 06/09/2021.
//

import SwiftUI

struct VideoDetailView: View {
    var video: Video
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(15)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
            
            
            HStack(spacing: 20) {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: video.url, label: {
                WatchNowButton(title: "Watch Now")
            })
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}

struct WatchNowButton: View {
    var title: String
    
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.bold)
            .frame(width: 280, height: 50)
            .background(Color.red.opacity(0.8))
            .foregroundColor(.white)
            .cornerRadius(50)
    }
}
