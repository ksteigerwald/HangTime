//
//  ActivityItemView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import SwiftUI

struct ActivityItemView: View {
    let item: Activity
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text(item.activity)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title3)
                .padding(.bottom, 5)
                .padding(.leading, 15)
        }
        .frame(width: .infinity, height: 125)
        .background(.pink)
        .cornerRadius(15)
    }
}

struct ActivityItemView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityItemView(
            item: Activity(
                id: 12,
                activity: "Yoga",
                categories: [
                    Category(name: "Sports")
                ],
                image: "",
                locale: Locale(
                    zip: "80027",
                    county: "Boulder",
                    state: "CO")
            )
        )
    }
}
