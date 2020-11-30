//
//  ContentView.swift
//  InstagramCloneSwiftUI
//
//  Created by Selim Arda Eroğlu on 24.11.2020.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View{
        home
        
    }
    
    var home: some View {
        homeView()
    }
}

struct feedView: View {
    @State var isPresented = false
    var body: some View{
        NavigationView{
            ZStack{
           
                home
                
            }
               .navigationBarHidden(false)
                .toolbar(content: {
                    ToolbarItem(placement:.navigationBarLeading) {
                        
                        HStack{
                            
                            Image(systemName: "camera").resizable().frame(width: 30, height: 26, alignment: .center).padding()
                            
                            Spacer()
                            
                            Text("INSTAGRAM")
                                .font(.title2).bold().padding().font(.custom("helvatica", size: 50, relativeTo: Font.TextStyle.body)).padding(.leading,50)
                            
                            Spacer()
                            
                            Image(systemName: "tv").resizable().frame(width: 20, height: 20, alignment: .center).padding()
                            
                            ZStack{
                                Image(systemName: "paperplane").resizable().frame(width: 20, height: 20, alignment: .center).padding()
                                
                                Text("1").frame(width: 20, height: 20, alignment: .center)
                                    .background(Color.red.clipShape(Circle())
                                    ).offset(x: 8, y: -16)
                                
                            }
                            
                            
                        }
                        
                    }
                })
        }.navigationBarTitle("Instagram")
    }
    
    var home: some View {
        
             ScrollView(.vertical, showsIndicators: true){
                ZStack{
                 VStack(alignment: .center){

                     ScrollView(.horizontal, showsIndicators: false){
                         HStack(spacing: 20){
                             ForEach(0..<10){_ in
                                 
                                 
                                    
                                storyView()
                                            .onTapGesture {
                                                isPresented.toggle()
                                            }
                                 
                                
                                 
                             }
                         }.padding()
                     }
                     
                     Rectangle()
                         .foregroundColor(Color.gray.opacity(0.2)).frame(width: UIScreen.main.bounds.width, height: 3, alignment: .center)
                     
                     
                     
                     ForEach(0..<20){ _ in
                         feedObjectView()
                     }
                 }
                }.sheet(isPresented: $isPresented, content: {
                    storyImageView()
                })
         }

    }
}

struct TabbarView: View {
    
    var body: some View {
        TabView{
            feedView().tabItem { Image(systemName: "house") }
            
            Text("add").tabItem { Image(systemName: "magnifyingglass") }
            
            Text("add").tabItem { Image(systemName: "plus.app") }
            
            Text("add").tabItem { Image(systemName: "heart") }
            
            profileView().tabItem { Image(systemName: "person") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
