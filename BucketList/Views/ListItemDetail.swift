//
//  ListItemDetail.swift
//  BucketList
//
//  Created by Priyanka Bhatia on 08/02/2022.
//

import SwiftUI

struct ListItemDetail: View {
    var listItem: ListItem
    
    var body: some View {
        ScrollView {
            MapView(coordinate: listItem.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height:300)
            
            CircleImage(image: listItem.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(listItem.name)
                    .font(.title)
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
        ListItemDetail(listItem: listItems[0])
    }
}
