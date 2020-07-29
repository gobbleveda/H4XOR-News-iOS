//
//  ContentView.swift
//  H4XOR-News
//
//  Created by Gobble Veda on 7/28/20.
//  Copyright © 2020 Gobble Veda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("GobbleVeda News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

