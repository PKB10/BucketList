//
//  ListItemDetail.swift
//  BucketList
//
//  Created by Priyanka Bhatia on 08/02/2022.
//

import SwiftUI

struct ListItemDetail: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height:300)
            
            CircleImage()
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Burj Khalifa")
                    .font(.title)
                HStack {
                    Text("Downtown")
                    Spacer()
                    Text("Dubai")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Burj Khalifa")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ListItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ListItemDetail()
    }
}
