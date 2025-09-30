//
//  ContentView.swift
//  SpotifyUI
//
//  Created by Aarna Upadhyaya on 9/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.gray.opacity(0.8),
                                    .black], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            
            
            VStack {
                HStack(spacing: 130){
                    //top part of the screen
                    Image(systemName: "chevron.compact.down")
                        .font(.title2)
                        .foregroundColor(Color.white)
                    
                    Text("favorites")
                        .font(.caption)
                        .foregroundColor(Color.white)
                    
                    Image(systemName: "ellipsis")
                        .font(.title2)
                        .foregroundColor(Color.white)
                }
                
                Spacer()
                
                //album cover
                Image("taylor")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
                    .shadow(radius: 10)
                
                Spacer()
                
                //bottom text
                HStack{
                    VStack(alignment: .leading, spacing: 5) {
                        Text("cardigan")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color.white)
                        Text("Taylor Swift")
                            .foregroundColor(Color.white)
                            .opacity(0.7)
                            .font(.title3)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "heart")
                        .foregroundColor(Color.white)
                        .opacity(0.7)
                        .font(.title3)
                }
                .padding(.horizontal)
                
                
                
                
                //progress bar
                VStack(spacing: 5) {
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color.white.opacity(0.5))
                        .frame(height: 4)
                    HStack {
                        Text("0:00")
                        Spacer()
                        Text("-4:35")
                    }
                    .font(.caption)
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                
                
                //music buttons
                HStack(spacing: 40){
                    Image(systemName: "shuffle")
                        .font(.title2)
                        .foregroundColor(.green)
                    
                    Image(systemName: "backward.fill")
                        .font(.system(size: 35))
                    
                    Image(systemName: "pause.circle.fill")
                        .font(.system(size: 50))
                    
                    Image(systemName: "forward.fill")
                        .font(.system(size: 35))
                    
                    Image(systemName: "repeat")
                        .font(.title2)
                        .foregroundColor(.green)
                }
                .padding(.top, 20)
                
                Spacer()
                
                //extra icons
                HStack{
                    Image(systemName: "hifispeaker")
                        .font(.title2)
                    
                    Spacer()
                    
                    Image(systemName: "square.and.arrow.up")
                        .font(.title2)
                    
                    
                    Image(systemName: "music.note.list")
                }
                .padding(.horizontal, 60)
                .padding(.bottom, 20)
            }
            .foregroundColor(.white)
            
            .background(Color.gray.opacity(0.7))
        }
        
    }
}
    #Preview {
        ContentView()
    }

