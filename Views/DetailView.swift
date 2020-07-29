//
//  DetailView.swift
//  H4XOR-News
//
//  Created by Gobble Veda on 7/28/20.
//  Copyright © 2020 Gobble Veda. All rights reserved.
//

import SwiftUI
import WebKit


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

