import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Color(.systemBlue).opacity(0.15)
                    .edgesIgnoringSafeArea(.top)
                Text("APP name & Logo")
                    .font(.title.bold())
                    .foregroundColor(Color(.systemBlue))
                    .padding(.top, 16)
            }
            .frame(height: 80)

            // Search bar with magnifying glass icon
            HStack {
                TextField("Search...", text: .constant(""))
                    .padding(8)
                    .background(Color(.systemGray5))
                    .cornerRadius(8)

                Button(action: {
                    // Action for magnifying glass icon
                }) {
                    Image(systemName: "magnifyingglass")
                        .padding(8)
                        .background(Color(.systemGray5))
                        .cornerRadius(8)
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 10)

            // Large central area for the app logo
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(.systemBlue).opacity(0.5), lineWidth: 2)
                .frame(height: 500)
                .overlay(
                    Text("APP Logo/\n翻卡養寵物(吃回饋)")
                        .font(.system(size: 20, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(.systemGreen).opacity(0.9))
                )
                .padding(.horizontal, 16)
                .padding(.top, 30)

            Spacer()

            // Tab bar area with icons
            HStack {
                Spacer()
                NavigationLink(destination: LastSearchView()) {
                    VStack {
                        VStack {
                            Image(systemName: "timer")
                                .foregroundColor(Color(.systemBlue))
                        }
                        Text("上次搜尋")
                            .font(.caption)
                            .padding(8)
                            .foregroundColor(Color(.systemBlue))
                    }
                }

                Spacer()

                NavigationLink(destination: NearbyStoresView()) {
                    VStack {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(Color(.systemBlue))
                        Text("附近店家")
                            .font(.caption)
                            .padding(8)
                            .foregroundColor(Color(.systemBlue))
                    }
                }

                Spacer()

                NavigationLink(destination: HighestRewardView()) {
                    VStack {
                        Image(systemName: "location")
                            .foregroundColor(Color(.systemBlue))
                        Text("最高回饋")
                            .font(.caption)
                            .padding(8)
                            .foregroundColor(Color(.systemBlue))
                    }
                }

                Spacer()

                NavigationLink(destination: BestCombinationView()) {
                    VStack {
                        Image(systemName: "star")
                            .foregroundColor(Color(.systemBlue))
                        Text("最佳組合")
                            .font(.caption)
                            .padding(8)
                            .foregroundColor(Color(.systemBlue))
                    }
                }

                Spacer()

                NavigationLink(destination: AddCardView()) {
                    VStack {
                        Image(systemName: "plus.circle")
                            .foregroundColor(Color(.systemBlue))
                        Text("加入卡片")
                            .font(.caption)
                            .padding(8)
                            .foregroundColor(Color(.systemBlue))
                    }
                }

                Spacer()
            }
            .padding(.bottom, 16)
            .padding(.top, 8)
            .background(Color(.systemBlue).opacity(0.15))
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct LastSearchView: View {
    var body: some View {
        Text("上次搜尋頁面")
    }
}

struct NearbyStoresView: View {
    var body: some View {
        Text("附近店家頁面")
    }
}

struct HighestRewardView: View {
    var body: some View {
        Text("最高回饋頁面")
    }
}

struct BestCombinationView: View {
    var body: some View {
        Text("最佳組合頁面")
    }
}

struct AddCardView: View {
    var body: some View {
        Text("加入卡片頁面")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
