//
//  feedObjectView.swift
//  InstagramCloneSwiftUI
//
//  Created by Selim Arda Eroğlu on 24.11.2020.
//

import SwiftUI

struct feedObjectView: View {
    var body: some View {
   
        
        RoundedRectangle(cornerRadius: 2)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2, alignment: .center)
            .foregroundColor(.white)
            
            .overlay(
            
                VStack(alignment: .leading){
                    
                    HStack{
                        
                        Image("Profile")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding(.leading,12)
                            .padding(.top,5)
                            
                        
                        VStack{
                            Text("mr_iosdev")
                                .font(.system(.title2))
                                .padding()
                        }
                        
                        Spacer()
                        
                        Image(systemName: "ellipsis").padding()

                        
                    }
                        
                    Image("Image").resizable().frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height/2)/2, alignment: .center)
                            .padding(.top,5)
                    
                    HStack{
                        
                        Image(systemName: "heart").resizable().frame(width: 30, height: 30, alignment: .center).padding(.leading,20)
                        
                        Image(systemName: "message").resizable().frame(width: 30, height: 30, alignment: .center).padding(.leading,20)
                        
                        Image(systemName: "paperplane").resizable().frame(width: 30, height: 30, alignment: .center).padding(.leading,20)
                        
                        Spacer()
                        
                        Image(systemName: "bookmark").resizable().frame(width: 25, height: 30, alignment: .center).padding(.trailing,20)
                    }
                    
                    
                    Text("52 Like").padding()
                    
                    Spacer()
                    
                
                }
            
            )
            
        
    }
}

struct feedObjectView_Previews: PreviewProvider {
    static var previews: some View {
        feedObjectView()
    }
}
