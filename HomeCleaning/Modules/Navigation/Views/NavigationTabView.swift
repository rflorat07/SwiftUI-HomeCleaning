//
//  NavigationTabView.swift
//  HomeCleaning
//
//  Created by Roger Florat Gutierrez on 19/09/25.
//

import SwiftUI

struct NavigationTabView: View {
    
    @ObservedObject var viewModel = NavigationTabViewModel()
    
    var body: some View {
                
        TabView(selection: $viewModel.selectedTab) {
                        
            HomeView()
                .tabItem {
                    CustomTabItemView(
                        text: "Home",
                        tabIndex: 0,
                        activeImage: "icon-home-tab-selected",
                        inactiveImage: "icon-home-tab",
                        selectedTab: $viewModel.selectedTab
                    )
                }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    CustomTabItemView(
                        text: "Explore",
                        tabIndex: 1,
                        activeImage: "icon-explore-tab-selected",
                        inactiveImage: "icon-explore-tab",
                        selectedTab: $viewModel.selectedTab
                    )
                }
                .tag(1)

            
            BookmarkView()
                .tabItem {
                    CustomTabItemView(
                        text: "Bookmark",
                        tabIndex: 2,
                        activeImage: "icon-bookmark-tab-selected",
                        inactiveImage: "icon-bookmark-tab",
                        selectedTab: $viewModel.selectedTab
                    )
                }
                .tag(2)

            
            ProfileView()
                .tabItem {
                    CustomTabItemView(
                        text: "Profile",
                        tabIndex: 3,
                        activeImage: "icon-profile-tab-selected",
                        inactiveImage: "icon-profile-tab",
                        selectedTab: $viewModel.selectedTab
                    )
                }
                .tag(3)
            
        } // TabWiew
        .accentColor(.mainGreen)
        .tabBarStrokeColor(.stroke)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NavigationTabView()
}
