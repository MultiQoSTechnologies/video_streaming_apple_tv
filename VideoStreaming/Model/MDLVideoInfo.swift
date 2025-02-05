//
//  MDLVideoInfo.swift
//  VideoStreaming
//
//  Created by MQS_2 on 04/02/25.
//

import Foundation
import UIKit

struct MDLVideoInfo {
    var name: String?
    var vidoeUrl: String?
    var thumbnail: String?
    
    
    static var videosList: [MDLVideoInfo] {
        return [
            MDLVideoInfo(name: "Big Buck Bunny",
                         vidoeUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
                         thumbnail: "video1_thum"),
            
            MDLVideoInfo(name: "Elephant Dream",
                         vidoeUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
                         thumbnail: "video2_thum"),
            
            MDLVideoInfo(name: "For Bigger Blazes",
                         vidoeUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
                         thumbnail: "video3_thum"),
            
            MDLVideoInfo(name: "For Bigger Escape",
                         vidoeUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
                         thumbnail: "video4_thum"),
            
            MDLVideoInfo(name: "For Bigger Fun",
                         vidoeUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
                         thumbnail: "video5_thum"),
            
            MDLVideoInfo(name: "For Bigger Joyrides",
                         vidoeUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
                         thumbnail: "video6_thum"),
            
            MDLVideoInfo(name: "For Bigger Meltdowns",
                         vidoeUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
                         thumbnail: "video7_thum"),
            
            MDLVideoInfo(name: "Sintel",
                         vidoeUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
                         thumbnail: "video8_thum"),
            
            MDLVideoInfo(name: "Subaru Outback On Street And Dirt",
                         vidoeUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
                         thumbnail: "video9_thum"),
            
            MDLVideoInfo(name: "Tears of Steel",
                         vidoeUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
                         thumbnail: "video10_thum"),
            
            MDLVideoInfo(name: "Volkswagen GTI Review",
                         vidoeUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4",
                         thumbnail: "video11_thum"),
            
            MDLVideoInfo(name: "We Are Going On Bullrun",
                         vidoeUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4",
                         thumbnail: "video12_thum"),
            
            MDLVideoInfo(name: "What care can you get for a grand?",
                         vidoeUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
                         thumbnail: "video13_thum"),
            
        ]
    }
    
    
    static var videos: [MDLVideoInfo] {
        return [
            MDLVideoInfo(name: "Uyi Amma - Azaad",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo1.mp4?alt=media&token=c35b94a6-70b3-4abd-8d93-c4bc7699ec29",
                         thumbnail: "https://i.ytimg.com/vi/FZLadzn5i6Q/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Lutt Putt Gaya",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo2.mp4?alt=media&token=c1a12f27-0f83-4043-bc59-9111ef73dffc",
                         thumbnail: "https://i.ytimg.com/vi/7CdpHATpXXU/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Maaye | Sky Force",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo3.mp4?alt=media&token=ad405a81-b43f-4d62-9753-dedb6dc1e014",
                         thumbnail: "https://i.ytimg.com/vi/D0PlQhBsR1o/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Dunki: O Maahi",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo4.mp4?alt=media&token=0cfbafa8-da05-4f32-98da-e415c0a362c9",
                         thumbnail: "https://i.ytimg.com/vi/Etkd-07gnxM/hqdefault.jpg"),
            
            MDLVideoInfo(name: "YODHA: Tere Sang Ishq Hua",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo5.mp4?alt=media&token=2c4f3512-e769-4f19-aa08-4dc7562998cd",
                         thumbnail: "https://i.ytimg.com/vi/JqmfwbzKp_Y/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Rabba Janda",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo6.mp4?alt=media&token=d7190c4b-672e-4520-8a85-b46e666300e5",
                         thumbnail: "https://i.ytimg.com/vi/3nLCeTrCFaA/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Dil Jaaniye Full Song",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo7.mp4?alt=media&token=cf30ff38-19c6-46de-8899-1a6eaea029a1",
                         thumbnail: "https://i.ytimg.com/vi/ry31dd3TZrs/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Khel Khel Mein",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo8.mp4?alt=media&token=60448ffd-376b-4f93-94e7-c5e65553675e",
                         thumbnail: "https://i.ytimg.com/vi/pVC8aJdcyJ0/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Kudmayi",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo9.mp4?alt=media&token=bfed887b-a909-49dc-b00d-dacc87155f46",
                         thumbnail: "https://i.ytimg.com/vi/3qpxJEp4Ec4/hqdefault.jpg"),
            
            
            MDLVideoInfo(name: "Ve Kamleya",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo10.mp4?alt=media&token=8d1ff475-6a96-42a2-a8ad-985ce06218a4",
                         thumbnail: "https://i.ytimg.com/vi/QXJyMpxd210/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Khoobsurat | Stree 2",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo11.mp4?alt=media&token=70f339c4-73a4-47b6-a0a3-099333b0922c",
                         thumbnail: "https://i.ytimg.com/vi/1-nnEM8chwo/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Mann Jogiya",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo12.mp4?alt=media&token=d521af81-5a4d-4395-b5e2-164d68ed99ec",
                         thumbnail: "https://i.ytimg.com/vi/2oK_SyDC6pU/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Saanware - Akhil Sachdeva",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo13.mp4?alt=media&token=a978ee6d-fc63-4920-9055-fe3c449f7d07",
                         thumbnail: "https://i.ytimg.com/vi/wa--U0DVyRU/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Heeriye",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo14.mp4?alt=media&token=3a4bc721-f8ef-4fb0-a6f3-dea696a68589",
                         thumbnail: "https://i.ytimg.com/vi/RLzC55ai0eo/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Jaan Ban Gaye",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo15.mp4?alt=media&token=50002a99-1ee2-4e97-9d24-07532c2283f6",
                         thumbnail: "https://i.ytimg.com/vi/a6cJAFFQn_I/maxresdefault.jpg"),
            
            MDLVideoInfo(name: "Kya Meri Yaad Aati Hai",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo16.mp4?alt=media&token=86509192-7069-4cf1-9e9b-f49369e6efa8",
                         thumbnail: "https://i.ytimg.com/vi/cgKIVtmeyhY/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Do Patti: Maiyya",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo17.mp4?alt=media&token=5fad25f6-121f-4eab-bfcb-954697f11ea3",
                         thumbnail: "https://i.ytimg.com/vi/daJoED_gp8U/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Maiyya Mainu",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo18.mp4?alt=media&token=3a248ac2-cf68-4e53-b380-749fafff428a",
                         thumbnail: "https://i.ytimg.com/vi/y7MW7d8fb1Y/hqdefault.jpg"),
            
            MDLVideoInfo(name: "Akhiyaan Milavanga",
                         vidoeUrl: "https://firebasestorage.googleapis.com/v0/b/chat-4a97b.appspot.com/o/AppleTV%2Fvideo19.mp4?alt=media&token=b17e670c-9968-4a6a-8993-227c19237682",
                         thumbnail: "https://i.ytimg.com/vi/O9zBPcU5g60/hqdefault.jpg"),
            
        ]
    }
}
