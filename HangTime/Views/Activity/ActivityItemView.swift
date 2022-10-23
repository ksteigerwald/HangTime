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
            Text(item.activity)
                .font(.title3)
        }
        .frame(width: 175, height: 125)
        .background(.pink)
        .cornerRadius(15)
        .padding(5)
    }
}

struct ActivityItemView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityItemView(
            item: Activity(
                id: 12,
                activity: "Snowboarding",
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
