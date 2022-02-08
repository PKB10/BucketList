//
//  BucketList.swift
//  BucketList
//
//  Created by Priyanka Bhatia on 07/02/2022.
//

import SwiftUI

struct BucketList: View {
    var body: some View {
        
        NavigationView{
            List(listItems){ listItem in
                NavigationLink{
                    ListItemDetail(listItem: listItem)
                } label:{
                    ListRow(listItem: listItem)
                }
            }
            .navigationTitle("Bucket List")
        }
        
    }
}

struct BucketList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                    BucketList()
                        .previewDevice(PreviewDevice(rawValue: deviceName))
                        .previewDisplayName(deviceName)
                }

    }
}
