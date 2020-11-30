//
//  storyImageView.swift
//  InstagramCloneSwiftUI
//
//  Created by Selim Arda Eroğlu on 25.11.2020.
//

import SwiftUI

struct storyImageView: View {
    
    var body: some View{
        home
    }
    
    var home: some View {
        ZStack{
            Color.gray.opacity(0.7).ignoresSafeArea()

            Image("Image").resizable().aspectRatio(contentMode: .fill).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center).edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Rectangle().frame(width: UIScreen.main.bounds.width-30, height: 4, alignment: .center).padding(.top,70)
                
                
                HStack{
                    
                    Text("mr_iosdev").foregroundColor(.white).font(.title).padding(.top,50)
                        .padding(.leading,20)
                    
                    Spacer()
                Button(action: {}){
                    Text("X").font(.title).frame(width: 50, height: 50, alignment: .center).foregroundColor(.white).padding(.trailing)
                        .padding(.top,50)
                        
                   }
                }
                
                Spacer()
                
                Rectangle().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/4, alignment: .center).cornerRadius(20).foregroundColor(.white).overlay(
                
                    ScrollView(.vertical, showsIndicators: false){
                        VStack{
                            
                            Rectangle().frame(width: 50, height: 5, alignment: .center).foregroundColor(Color.gray.opacity(0.5)).padding(.top,5)
                            
                            
                            ForEach(0..<15){_ in
                                HStack{
                                    Image("follower").resizable().frame(width: 70, height: 70, alignment: .center)
                                        .clipShape(Circle()).padding()
                                    
                                    Text("waytoapp").font(.title).foregroundColor(.black)
                                }
                            }
                        }
                    }
                
                )
                    
                
            }
            

            
            
        }
    }
}

struct storyImageView_Previews: PreviewProvider {
    static var previews: some View {
        storyImageView()
    }
}
