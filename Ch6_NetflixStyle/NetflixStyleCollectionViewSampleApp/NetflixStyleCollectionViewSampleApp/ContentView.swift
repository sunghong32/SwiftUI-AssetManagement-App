//
//  ContentView.swift
//  NetflixStyleCollectionViewSampleApp
//
//  Created by 민성홍 on 2022/02/15.
//

import SwiftUI

struct ContentView: View {
    let titles = ["Netflix Sample App"]
    var body: some View {
        NavigationView {
            List(titles, id: \.self) {
                let netfilxVC = HomeViewControllerRepresentable()
                    .navigationBarHidden(true)
                    .edgesIgnoringSafeArea(.all)
                NavigationLink($0, destination: netfilxVC)
            }
            .navigationTitle("SwiftUI to UIKit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
