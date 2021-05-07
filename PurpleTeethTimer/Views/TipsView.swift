//
//  TipsView.swift
//  PurpleTeethTimer
//
//  Created by Jakob Velle on 5/6/21.
//

import SwiftUI

struct TipsView: View {
    var body: some View {
        ZStack{
            TeethBackground()
            ScrollView{
                VStack{
                    HStack{
                        TeethText(title: "1.", font: .largeTitle, padd: .leading).frame(width: 80)
                        TeethText(title: "Saving Water", font: .largeTitle)
                        Spacer()
                    }
                    TeethText(title: "When you brush remember to turn off the faucet while brushing. You can save up to 32 liters (8 gallons) of water just by doing this. This does not only help your water bill but also the environment by not releasing the chemicals used to treat the water into the ecosystem.", font: .body, padd: .horizontal)
                    HStack{
                        TeethText(title: "2.", font: .largeTitle, padd: .leading).frame(width: 80)
                        TeethText(title: "Toothpaste", font: .largeTitle)
                        Spacer()
                    }
                    TeethText(title: "When it comes to toothpaste, there are more important elements to look for than whitening power and flavors. No matter which version you choose, make sure it contains fluoride.\n\nWhile fluoride has come under scrutiny by those worried about how it impacts other areas of health, this substance remains a mainstay in oral health. This is because fluoride is a leading defense against tooth decay. It works by fighting germs that can lead to decay, as well as providing a protective barrier for your teeth.", font: .body, padd: .horizontal)
                    HStack{
                        TeethText(title: "3.", font: .largeTitle, padd: .leading).frame(width: 80)
                        TeethText(title: "Toothbrush", font: .largeTitle)
                        Spacer()
                    }
                    TeethText(title: "Make sure you use a toothbrush that is right for you. Some prefer harder style toothbrushes but dental professionals recommend soft-bristle toothbrushes because too much pressure or overzealous brushing can negatively impact the enamel and gums.\n\nTake the time and effort to find a sustainable toothbrush. There are plenty out there and all the biggest brand has some so there is no excuse for getting a desposable plastic toothbrush anymore.", font: .body, padd: .horizontal)
                    HStack{
                        TeethText(title: "4.", font: .largeTitle, padd: .leading).frame(width: 80)
                        TeethText(title: "Recycling", font: .largeTitle)
                        Spacer()
                    }
                    TeethText(title: "However if you decide to go for a plastic toothbrush make sure you recycle it properly. The same goes for toothpaste tube. It is very easy to just throw it in the bathroom trash but make sure you take the extra time to recycle it!", font: .body, padd: .horizontal)
                }
                VStack{
                    HStack{
                        TeethText(title: "5.", font: .largeTitle, padd: .leading).frame(width: 80)
                        TeethText(title: "Brush Properly", font: .largeTitle)
                        Spacer()
                    }
                    TeethText(title: "The way you brush is important — in fact, doing a poor job of brushing your teeth is almost as bad as not brushing at all. Take your time, moving the toothbrush in gentle, circular motions to remove plaque. Unremoved plaque can harden, leading to calculus buildup and gingivitis (early gum disease).", font: .body, padd: .horizontal)
                    HStack{
                        TeethText(title: "6.", font: .largeTitle, padd: .leading).frame(width: 80)
                        TeethText(title: "Tongue", font: .largeTitle)
                        Spacer()
                    }
                    TeethText(title: "Plaque can also build up on your tongue. Not only can this lead to bad mouth odor, but it can lead to other oral health problems. Gently brush your tongue every time you brush your teeth.", font: .body, padd: .horizontal)
                    HStack{
                        TeethText(title: "7.", font: .largeTitle, padd: .leading).frame(width: 80)
                        TeethText(title: "Flossing", font: .largeTitle)
                        Spacer()
                    }
                    TeethText(title: "Many who brush regularly neglect to floss. “Flossing is not just for getting those little pieces of Chinese food or broccoli that may be getting stuck in between your teeth,” says Jonathan Schwartz, DDS. “It’s really a way to stimulate the gums, reduce plaque, and help lower inflammation in the area.\nFlossing once a day is usually enough to reap these benefits.", font: .body, padd: .horizontal)
                    HStack{
                        TeethText(title: "8.", font: .largeTitle, padd: .leading).frame(width: 80)
                        TeethText(title: "Mouthwash", font: .largeTitle)
                        Spacer()
                    }
                    TeethText(title: "Advertisements make mouthwash seem necessary for good oral health, but many people skip them because they don’t know how they work. Schwartz says mouthwash helps in three ways: It reduces the amount of acid in the mouth, cleans hard-to-brush areas in and around the gums, and re-mineralizes the teeth. “Mouthwashes are useful as an adjunct tool to help bring things into balance,” he explains. “I think in children and older people, where the ability to brush and floss may not be ideal, a mouthwash is particularly helpful.\n\nAsk your dentist for specific mouthwash recommendations. Certain brands are best for children, and those with sensitive teeth. Prescription mouthwash is also available.", font: .body, padd: .horizontal)
                    HStack{
                        TeethText(title: "9.", font: .largeTitle, padd: .leading).frame(width: 80)
                        TeethText(title: "Bedtime", font: .largeTitle)
                        Spacer()
                    }
                    TeethText(title: "It’s no secret that the general recommendation is to brush at least twice a day. Still, many of us continue to neglect brushing our teeth at night. But brushing before bed gets rid of the germs and plaque that accumulate throughout the day.", font: .body, padd: .horizontal)
                }
                VStack{
                    HStack{
                        TeethText(title: "Sources", font: .title, padd: .leading)
                        Spacer()
                    }
                    
                    HStack{
                        Link(destination: URL(string: "https://www.healthline.com/health/dental-and-oral-health/best-practices-for-healthy-teeth#2.-Brush-properly")!, label: {
                            TeethText(title: "https://www.healthline.com/health/dental-and-oral-health/best-practices-for-healthy-teeth#2.-Brush-properly", font: .body.italic(), color: .black, alignment: .leading, padd: .vertical)
                        })
                        Spacer()
                    }
                    .padding(.leading, 30)
                    HStack{
                        Link(destination: URL(string: "https://www.colgate.com/en-us/oral-health/selecting-dental-products/soft-vs-hard-toothbrush")!, label: {
                            TeethText(title: "https://www.colgate.com/en-us/oral-health/selecting-dental-products/soft-vs-hard-toothbrush", font: .body.italic(), color: .black, alignment: .leading, padd: .vertical)
                        })
                        .padding(.leading, 30)
                        Spacer()
                    }
                }
            }
        }
        .navigationTitle("Tips")
    }
}

//struct TipsView_Previews: PreviewProvider {
//    static var previews: some View {
//        TipsView()
//    }
//}
