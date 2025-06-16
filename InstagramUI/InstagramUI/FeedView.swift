//
//  FeedView.swift
//  InstagramUI
//
//  Created by Harsh Makwana on 6/14/25.
//

import SwiftUI


struct FeedView: View {
    let post: Post

    var body: some View {
            
                VStack {
                    //user image location and elipsis
                    HStack {
                        Image(post.userImage)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 40)
                            .clipShape(.circle)
                        
                        VStack(alignment: .leading) {
                            Text(post.username)
                                .fontWeight(.semibold)
                            Text(post.location)
                        }
                        .foregroundStyle(.white)
                        
                        Spacer()
                        
                        Image(systemName: "ellipsis")
                            .foregroundStyle(.white)
                    }
                    .padding(.horizontal)
                    
                    //user post area
                    
                    if post.contentType == .image {
                        Image(post.contentName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 375)
                            .clipped()
                            .cornerRadius(10)
                    }
                    else {
                        Text("Video feature is comming soon")
                    }
                    
                    
                    //like comment share and save
                    
                    HStack(spacing: 10) {
                        Image(systemName: "heart")
                        Text("\(post.likeCount)")
                            .font(.title2)
                        Image(systemName: "message")
                        //                    .rotationEffect(.degrees(320))
                        Image(systemName: "paperplane")
                        
                        Spacer()
                        Image(systemName: "bookmark")
                    }
                    .foregroundStyle(.white)
                    .font(.title)
                    .padding(.horizontal)
                    
                    //like count and name, caption
                    Text(post.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    HStack() {
                        
                        ZStack(alignment: .leading) {
                            Image("story-2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 30, height: 30)
                                .clipShape(.circle)
                                .offset(x: 40)
                            
                            Image("story-5")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 30, height: 30)
                                .clipShape(.circle)
                                .offset(x: 30)
                            Image("story-7")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 30, height: 30)
                                .clipShape(.circle)
                                .padding(.horizontal)
                                .offset()
                        }
                        .frame(alignment: .leading)
                        
                        Text("Liked by leeviahq and others")
                            .foregroundStyle(.white)
                            .padding(.horizontal)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                Spacer()
            }
    
}

#Preview {
    FeedView(post: posts[0])
}
