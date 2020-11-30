//
//  profileView.swift
//  InstagramCloneSwiftUI
//
//  Created by Selim Arda Eroğlu on 26.11.2020.
//

import SwiftUI

struct profileView: View {
    var body: some View {
        NavigationView{
            ZStack{
        home
            .navigationBarHidden(false)
            .toolbar(content: {

                
                
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    VStack {
                        HStack{
                            Text("mr_iosdev").font(.title).fontWeight(.black)
                            
                            Capsule(style: .continuous).frame(width: 30, height: 25, alignment: .center).foregroundColor(Color.red)
                                .overlay(Text("9+").foregroundColor(.white))

                            Spacer().frame(width: 110, height: 0, alignment: .center)
                            
                          
                            
                            Button(action: {}) {
                                Image(systemName: "plus").resizable().frame(width: 24, height: 24, alignment: .center).foregroundColor(.black)}
                                
                                Button(action: {}) {
                                    Image(systemName: "line.horizontal.3").resizable().frame(width: 24, height: 22, alignment: .center).foregroundColor(.black)}.padding(.leading)
                                
                            
                            
                        }
                        
                        Rectangle().frame(width: UIScreen.main.bounds.width, height: 3, alignment: .center).foregroundColor(Color.gray.opacity(0.12))
                        
                        
                    }
                    
                }
            })
            }
        }
    }
    
    var home: some View {
        
        
        ScrollView(.vertical, showsIndicators: true) {
        VStack{
            
            HStack{
                
                Image("Profile").resizable().frame(width: 100, height: 100, alignment: .center).clipShape(Circle(), style: FillStyle()).padding()
                
                
                VStack{
                    
                    Text("27").font(.title).bold().padding(.leading)
                    
                    Text("Post").font(.title2).padding(.leading)
                    
                    
                }
                
                VStack{
                    
                    Text("262").font(.title).bold().padding(.leading)
                    
                    Text("Followers").font(.title3).padding(.leading)
                    
                    
                }
                
                VStack{
                    
                    Text("138").font(.title).bold().padding(.leading)
                    
                    Text("Following").font(.title3).padding(.leading)
                    
                    
                }
                    
                    
                Spacer()
            }
            HStack {
                
                    VStack(alignment: .leading){
                        Text("Hello World").font(.title2).fontWeight(.black).padding(.leading,10).padding(.bottom,2)
                        Text("Digital Creator").font(.subheadline).foregroundColor(.secondary).padding(.leading,10).padding(.bottom,3)
                        Text("Turkish Developer").font(.title3).fontWeight(.medium).padding(.leading,10)
                        Text("Turkish Developer").font(.title3).fontWeight(.medium).padding(.leading,10)
                        
                    }.padding()
                
                
                Spacer()
            }
            HStack{
                Button(action: {}, label: {
                    Text("Edit Profile").font(.headline).bold().foregroundColor(.black).background(
                        Color.white
                            .frame(width: 120, height: 45, alignment: .center).border(Color.gray.opacity(0.5),width: 2)
                            
                    )
                }).padding(.leading,40).padding(.top,10)
                
              
                Button(action: {}, label: {
                    Text("Edit Profile").font(.headline).bold().foregroundColor(.black).background(
                        Color.white
                            .frame(width: 120, height: 45, alignment: .center).border(Color.gray.opacity(0.5),width: 2)
                            
                    )
                }).padding(.leading,36).padding(.top,10)
                
                
                Button(action: {}, label: {
                    Text("Edit Profile").font(.headline).bold().foregroundColor(.black).background(
                        Color.white
                            .frame(width: 120, height: 45, alignment: .center).border(Color.gray.opacity(0.5),width: 2)
                            
                    )
                }).padding(.leading,36).padding(.top,10)
                
                
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false){
               
                HStack{
                    
                    ForEach(0..<5){_ in
                      
                        
                        VStack{
                        Image("apple").resizable().frame(width: 80, height: 80, alignment: .center).clipShape(Circle())
                            .overlay(Circle().stroke(Color.gray.opacity(0.5),lineWidth: 3)).padding(10)
                            
                            Text("Apple")
                            
                        }
                        
                    }
                  
                
                }.padding(.top,20)
                
            }
             
            
            HStack(spacing: 0){
                ForEach(0..<3){_ in
                VStack(spacing: 0){
                    ForEach(0..<20){_ in
                        
                        Image("Image").resizable().frame(width: 145, height: 145, alignment: .center)
                        
                    }
                }
                }
            }.padding(.top,30)
            
            
           
            
            Spacer()
            
        }
    }
    }
    
    
}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView()
    }
}
