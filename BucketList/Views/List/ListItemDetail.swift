//
//  ListItemDetail.swift
//  BucketList
//
//  Created by Priyanka Bhatia on 08/02/2022.
//

import SwiftUI

struct ListItemDetail: View {
    
    @EnvironmentObject var listData: ListData
    var listItem: ListItem
    
    var listItemIndex: Int {
        listData.listItems.firstIndex(where: { $0.id == listItem.id })!
        }

    var body: some View {
        ScrollView {
            MapView(coordinate: listItem.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height:300)
            
            CircleImage(image: listItem.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(listItem.name)
                        .font(.title)
                    FavoriteButton(isSet: $listData.listItems[listItemIndex].isFavorite)
                }
                HStack {
                    Text(listItem.state)
                    Spacer()
                    Text(listItem.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(listItem.name)")
                    .font(.title2)
                Text(listItem.description)
            }
            .padding()
        }
        .navigationTitle(listItem.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ListItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ListItemDetail(listItem: ListData().listItems[0])
    }
}
