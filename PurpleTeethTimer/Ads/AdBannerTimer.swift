//
//  AdBannerTimer.swift
//  PurpleTeethTimer
//
//  Created by Jakob Velle on 4/29/21.
//

import SwiftUI
import UIKit
import AppTrackingTransparency
import AdSupport
import GoogleMobileAds

final private class BannerVC: UIViewControllerRepresentable  {

    func makeUIViewController(context: Context) -> UIViewController {
        let view = GADBannerView(adSize: kGADAdSizeMediumRectangle)
        let viewController = UIViewController()
        ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
            GADMobileAds.sharedInstance().requestConfiguration.testDeviceIdentifiers = [ "a8436c6b5477f11422b1e04304bb9105" ]
            view.adUnitID = "ca-app-pub-7787741274206054/8335166659"
            view.rootViewController = viewController
            viewController.view.addSubview(view)
            viewController.view.frame = CGRect(origin: .zero, size: kGADAdSizeMediumRectangle.size)
            view.load(GADRequest())
        })
        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

struct BannerTime:View{
    var wid: CGFloat = 320
    var hei: CGFloat = 270
    
    var body: some View{
        HStack{
            Spacer()
            BannerVC().frame(width: wid, height: hei, alignment: .center)
            Spacer()
        }
    }
}
