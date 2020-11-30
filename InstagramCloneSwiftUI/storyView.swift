//
//  storyView.swift
//  InstagramCloneSwiftUI
//
//  Created by Selim Arda Eroğlu on 24.11.2020.
//

import SwiftUI

struct storyView: View {
    var body: some View {
        Image("Profile")
            .resizable()
            .frame(width: 80, height: 80, alignment: .center)
            .clipShape(Circle())
    }
}

struct storyView_Previews: PreviewProvider {
    static var previews: some View {
        storyView()
    }
}
