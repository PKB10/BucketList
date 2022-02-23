//
//  BucketList.swift
//  BucketList
//
//  Created by Priyanka Bhatia on 07/02/2022.
//

import SwiftUI

struct BucketList: View {
    
    @EnvironmentObject var listData: ListData
    @State private var showFavoritesOnly = false
    
    var filteredListItems: [ListItem] {
        listData.listItems.filter { listItem in
                (!showFavoritesOnly || listItem.isFavorite)
            }
        }

    
    var body: some View {
        
        NavigationView{
            List{
                
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Show only my favorites")
                }
                
                ForEach(filteredListItems){ listItem in
                    NavigationLink{
                        ListItemDetail(listItem: listItem)
                    } label:{
                    ListRow(listItem: listItem)
                    }
                }
            }
            .navigationTitle("Bucket List")
        }
        
    }
}

struct BucketList_Previews: PreviewProvider {
    static var previews: some View {
        /*ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                    BucketList()
                        .previewDevice(PreviewDevice(rawValue: deviceName))
                        .previewDisplayName(deviceName)
                }*/
        BucketList()
            .environmentObject(ListData())

    }
}
