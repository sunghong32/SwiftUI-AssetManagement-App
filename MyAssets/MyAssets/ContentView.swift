//
//  ContentView.swift
//  MyAssets
//
//  Created by 민성홍 on 2022/02/15.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Tab = .asset

    enum Tab {
        case asset
        case recommend
        case alarm
        case setting
    }

    var body: some View {
        TabView(selection: $selection) {
            AssetView()
                .edgesIgnoringSafeArea([.top, .horizontal])
                .tabItem {
                    Image(systemName: "dollarsign.circle.fill")
                    Text("자산")
                }
                .tag(Tab.asset)

            Color.blue
                .edgesIgnoringSafeArea([.top, .horizontal])
                .tabItem {
                    Image(systemName: "hand.thumbsup.fill")
                    Text("추천")
                }
                .tag(Tab.recommend)

            Color.yellow
                .edgesIgnoringSafeArea([.top, .horizontal])
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("알람")
                }
                .tag(Tab.alarm)

            Color.red
                .edgesIgnoringSafeArea([.top, .horizontal])
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("설정")
                }
                .tag(Tab.setting)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
