//
//  UserPostModel.swift
//  InstagramUI
//
//  Created by Harsh Makwana on 6/15/25.
//

import Foundation

struct Post: Identifiable {
    let id = UUID()
    let userImage: String
    let username: String
    let location: String
    let contentType: ContentType
    let contentName: String
    let caption: String
    let likeCount: Int
}

enum ContentType {
    case image
    case video
}

let posts: [Post] = [
    Post(userImage: "story-0", username: "pieroborgo", location: "Florence, Italy", contentType: .image, contentName: "Post-1", caption: "Beautiful view from the Duomo! #Duomo #Florence", likeCount: 30),
    
        Post(userImage: "story-1", username: "travelwithsara", location: "Tokyo, Japan", contentType: .image, contentName: "Post-2", caption: "Cherry blossoms in full bloom 🌸", likeCount: 120),
    
        Post(userImage: "story-2", username: "johnnyvids", location: "Los Angeles, CA", contentType: .image, contentName: "Post-3", caption: "Behind the scenes of a music shoot 🎬", likeCount: 240),
    
        Post(userImage: "story-3", username: "nina_arts", location: "Barcelona, Spain", contentType: .image, contentName: "Post-4", caption: "Street art in El Raval #artlover", likeCount: 76),
        Post(userImage: "story-4", username: "foodieluca", location: "Rome, Italy", contentType: .image, contentName: "Post-5", caption: "Pasta alla Carbonara done right 🍝🇮🇹", likeCount: 154),
        Post(userImage: "story-5", username: "claireexplores", location: "Reykjavik, Iceland", contentType: .image, contentName: "Post-6", caption: "Chasing waterfalls and northern lights ❄️✨", likeCount: 310),
        Post(userImage: "story-6", username: "natureguy", location: "Banff, Canada", contentType: .image, contentName: "Post-7", caption: "Crystal clear lake in the Rockies 🏞️", likeCount: 211),
        Post(userImage: "story-7", username: "citysnapper", location: "New York, USA", contentType: .image, contentName: "Post-8", caption: "Manhattan in motion 🚕🗽", likeCount: 98),
        Post(userImage: "story-8", username: "desertdreamer", location: "Dubai, UAE", contentType: .image, contentName: "Post-9", caption: "Riding dunes in the desert 🏜️", likeCount: 175),
        Post(userImage: "story-9", username: "wavechaser", location: "Bali, Indonesia", contentType: .image, contentName: "Post-10", caption: "Surf, sand, and sun 🌊", likeCount: 204),
//        Post(userImage: "story-10", username: "mountainmila", location: "Zermatt, Switzerland", contentType: .image, contentName: "Post-11", caption: "Hiking to the Matterhorn 🏔️", likeCount: 187),
//        Post(userImage: "story-11", username: "lisapaints", location: "Amsterdam, Netherlands", contentType: .image, contentName: "Post-12", caption: "Café sketching with a view ☕🎨", likeCount: 65),
//        Post(userImage: "story-12", username: "coderjake", location: "San Francisco, USA", contentType: .video, contentName: "Post-13", caption: "Launch day for my new app 🚀", likeCount: 332),
//        Post(userImage: "story-13", username: "yogawithme", location: "Goa, India", contentType: .image, contentName: "Post-14", caption: "Sunset yoga by the beach 🧘‍♀️", likeCount: 143),
//        Post(userImage: "story-14", username: "chefmario", location: "Naples, Italy", contentType: .video, contentName: "Post-15", caption: "How to make Neapolitan pizza 🍕", likeCount: 410),
//        Post(userImage: "story-15", username: "fashionfi", location: "Paris, France", contentType: .image, contentName: "Post-16", caption: "Street style during fashion week 👠", likeCount: 289),
//        Post(userImage: "story-16", username: "hikingharry", location: "Patagonia, Chile", contentType: .image, contentName: "Post-17", caption: "Lost in nature 🌄", likeCount: 237),
//        Post(userImage: "story-17", username: "marinebiomay", location: "Great Barrier Reef, Australia", contentType: .video, contentName: "Post-18", caption: "Diving with turtles and coral 🐢🐠", likeCount: 356),
//        Post(userImage: "story-18", username: "jazzysax", location: "New Orleans, USA", contentType: .video, contentName: "Post-19", caption: "Late night jazz sessions 🎷", likeCount: 121),
//        Post(userImage: "story-19", username: "skaterluc", location: "Berlin, Germany", contentType: .image, contentName: "Post-20", caption: "Skating through the city 🛹", likeCount: 199)
    ]
