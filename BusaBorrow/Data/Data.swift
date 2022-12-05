//
//  Data.swift
//  BusaBorrow
//
//  Created by Tyler Heslop.
//

import Foundation
import SwiftUI

// initialize the default Items
// image ratio is 1-1
let defaultItems = [
    Item(name: "Kawasaki Ninja 400", description: "The Ninja® 400 sportbike offers the largest displacement in category at 399cc with the sophistication of twin-cylinder power. Approachable power, superb ergonomics and class-leading performance offer a smooth, manageable ride that's ideal for new riders while also alluring experienced riders. A low seat height and aggressive styling with LED headlights make the Ninja 400 the ideal choice for riders looking to enter the sport-riding scene.", price: 50.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/kawasaki-400.jpg?alt=media&token=58f7f848-9ee5-41eb-80ff-982917a4c9f7"),
    Item(name: "Kawasaki Ninja 650", description: "Built to embody Ninja® sportbike lineage, the Ninja® 650 motorcycle comes packed with a sporty 649cc engine, next-level technology and sharp styling. Unmistakable sport performance is met with an upright riding position for exciting daily commutes, while a supreme level of attitude reminds you of its legendary heritage.", price: 90.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/kawasaki-650.jpg?alt=media&token=2d0b6fe3-6419-47fb-8dba-64518284079f"),
    Item(name: "Kawasaki Ninja H2", description: "The Ninja H2® and Ninja H2® Carbon motorcycles bring the mind-bending power of Kawasaki's supercharged hypersport racer to the street. Boasting a powerful 998cc inline four-cylinder engine, state-of-the-art electronics, and the latest Brembo® brakes, the Ninja H2 and Ninja H2 Carbon amount to pure performance on the road.", price: 200.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/kawasaki-h2.jpg?alt=media&token=06157450-a1a3-44d7-83a8-03f955878e4c"),
    Item(name: "Kawasaki Ninja ZX-6R", description: "Rule the track and run the streets with legendary Ninja® performance. The Ninja® ZX™-6R motorcycle boasts a potent 636cc engine, advanced electronics, and a lightweight chassis. The “636” has been optimized for both street and the track, offering an exhilarating experience in a wide range of riding situations.", price: 125.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/kawasaki-zx6r.jpg?alt=media&token=b60f616b-3173-48c9-889e-438e3d02d2d3"),
    Item(name: "Kawasaki Z900RS", description: "Reigniting the classic style of the original Z1 900 super naked, the Kawasaki Z900RS family calls upon timeless design elements with minimal bodywork for a pure retro-style look. The Z900RS family combines traditional Z1 styling with modern elements such as Kawasaki's latest electronic rider support technology, suspension, LED lighting and digital instrumentation for a pure retro yet modern ride.", price: 99.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/kawasaki-z900rs.jpg?alt=media&token=9545c733-2658-4d27-8f6d-0662922ce7bb"),
    Item(name: "Kawasaki Z125 Pro", description: "Small in size but big on fun, the Kawasaki Z125 PRO motorcycle is a nimble streetfighter that makes a statement wherever it goes. With a 125cc engine, upright riding position and responsive street tires, it's your invitation to the rebellious side of fun.", price: 50.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/kawasaki-z125.jpg?alt=media&token=52dab8d2-32ed-4cfa-892e-dc3c532460d1"),
    Item(name: "Suzuki Hayabusa", description: "The Suzuki Hayabusa has firmly established its status as motorcycling’s Ultimate Sportbike. The 2023 version of Suzuki’s flagship sportbike is propelled by a muscular, refined inline four-cylinder engine housed in a proven and thoroughly updated chassis with incomparable manners, managed by an unequaled suite of electronic rider aids within stunning aerodynamic bodywork that is distinctly Hayabusa.\n\nRiders who have owned or longed for a Hayabusa will recognize the iconic, aerodynamic silhouette that has been polished through wind tunnel sessions so the body features vent shapes, air diffusers, and reimagined logos while a sophisticated LED lighting system becomes the zenith of style and function.\n\nThe torque-rich 1,340cc engine effortlessly delivers a strong wave of power so the Hayabusa accelerates quicker and smoother than ever before, while complying with worldwide emissions standards. Rider control is unmatched because of the Hayabusa’s Suzuki Intelligent Ride System (S.I.R.S.). The engine’s adjustable power delivery, traction control*, cruise control, launch control, quick shift, and Motion Track ABS** and Combined Brake systems offer the Hayabusa rider unmatched options on how they want their ride to unfold.\n\nThis generation of Hayabusa has 550 new or redesigned parts over its predecessor, all with a focus on delivering the ultimate and balanced sportbike experience. All eyes turn to the Suzuki Hayabusa as it remains a testament to Suzuki’s century of dedication to creating art while building the best performing product that is unmatched in quality, reliability, and value. The Hayabusa, like its namesake peregrine falcon, soars above all once again.", price: 220.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/suzuki%2Fsuzuki-hayabusa.jpg?alt=media&token=230cccb6-8d6a-496d-833b-4b2897fcb620"),
    Item(name: "Suzuki GSX-R600Z", description: "Suzuki revolutionized the sportbike category with the introduction of the original GSX-R750 in 1985, and later expanded GSX-R lineage with the addition of the GSX-R600. The 2023 GSX-R600 embodies Suzuki’s tradition of blending race-winning capability with impeccable street manners.\n\nThe GSX-R600’s compact, powerful, four-cylinder engine promptly reacts when you twist the throttle, while its supremely refined suspension and brakes provide precise, responsive handling. The superb ergonomics boosts control and comfort while the iconic GSX-R bodywork looks great under any of the three available paint schemes.\n\nThe GSX-R600’s race-ready look isn’t manufactured, it’s the true byproduct of decades of production roadracing dominance that continues to this day. For a rider considering a mid-size Supersport bike that’s at home or the track or the street, there’s only one choice; the Suzuki GSX-R600.", price: 85.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/suzuki%2Fsuzuki-GSX-R600ZM3.jpg?alt=media&token=189ae14a-01b0-4a5b-8551-c4f87aee43c3"),
    Item(name: "Suzuki Katana", description: "The KATANA’s iconic style lives in a new sportbike with modern style, stellar engine performance, nimble handling, and great ergonomics.\n\n Using a design similar to the GSX-R1000R, the KATANA’s Suzuki Clutch Assist System (SCAS) drive line smooths shifting and engine braking.\n\n Twin-spar aluminum frame and fully adjustable KYB-supplied suspension deliver controlled handling.\n\n Fuel-injected, 999cc, GSX-R-based engine features a throttle control mechanism that smooths the power delivery for a stimulating sportbike experience.\n\n", price: 99.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/suzuki%2Fsuzuki-katana.jpg?alt=media&token=381a0528-e02e-4fa4-bd83-adf8a769f95d"),
    Item(name: "Suzuki GSX-S1000GT", description: "The all-new 2022 GSX-S1000GT intelligently combines the championship performance of its GSX-R1000-based engine with a nimble, lightweight chassis to provide riders with an exciting and comfortable GT riding experience. Here is a Grand Tourer with sportbike level functionality, avantgarde styling and an extensive selection of optional equipment features.\n\n More than an evolution of the prior generation GSX-S1000F, the GSX-S1000GT fulfills the transformation in what performance-minded touring enthusiasts desire, whether heading out on a long trip with a passenger on board, or enjoying a sporty solo romp up a twisty ribbon of asphalt. The GSX-S1000GT’s performance is a revelation, its appearance breathtaking, and the new Suzuki mySPIN connectivity application integrated into the full-color TFT instrument panel provides easy access to contacts, maps, music, and phone communication.\n\n Using long-stroke, GSX-R engine architecture, the 999cc four-stroke, liquid-cooled DOHC in-line four engine delivers smooth, consistent power throughout its wide power band. This enhances the riding experience, both at the low- to mid-range engine speeds commonly used in daily riding, and through the mid- to high-range used when travelling long distances on the highway. Refined and controlled performance is managed by Suzuki Intelligent Ride System (S.I.R.S.) technology, including electronic cruise control, traction control* and clutchless quick shifting, so passing slower traffic is an opportunity, never a challenge.\n\n ", price: 120.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/suzuki%2Fsuzuki_GSX-S1000GT.jpg?alt=media&token=022492b2-e72c-434e-8236-0e8eb0eee78f"),
    Item(name: "Suzuki V-STROM 1050DE", description: "The 2023 V-STROM 1050 models are Engineered for the Unexpected. Suzuki further enhanced these legendary Adventure motorcycles so you can conquer the unexpected. Continuing the reputation of a reliable sports adventure tourer, these models deliver a stronger connection between rider and machine. Thanks to an updated Suzuki Intelligent Ride System (S.I.R.S.), V-STROM 1050 riders have even more comfort and control over varied terrain and conditions.\n\n The 2023 V-STROM 1050, the V-STROM 1050DE, and V-STROM 1050DE Adventure let riders easily escape into the great outdoors and explore to their heart’s content, whether that’s long-distance pavement-oriented touring or exploring gravel roads and country trails.\n\n Daring riders have long looked to the Suzuki V-Strom as the starting point of serious on- and off-road riding adventures. The V-Strom’s performance, reliability, and comfort was already there, and the platform could be personalized to manage the rigors of adventure touring in less hospitable environments.\n\n The V-STROM 1050DE Adventure’s proven V-twin engine rides in a chassis with increased ground clearance to accommodate a new 21-inch front and 17-inch rear spoke-style wheels with more aggressive Dunlop ADV-ready tires. This V-STROM also gains a longer rake and wheelbase for more control on gravel roads and dirt trails, a longer suspension stroke to better absorb bumps on rough surfaces, as well as wide steel foot pegs and a large diameter tapered-aluminum handlebar.\n\n Ready to explore to the ends of the earth, the V-STROM 1050DE Adventure is also equipped with Suzuki’s rugged aluminum pannier set to carry your gear with ease while the standard LED fog lamp set lights up each new trail.", price: 150.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/suzuki%2Fsuzuki-DL1050RJA.jpg?alt=media&token=beac7c85-e7bb-4d70-a933-85079743cefe"),
    Item(name: "Yamaha YZF-R1M", description: "The 998cc inline-four-cylinder engine features Yamaha’s exclusive crossplane crankshaft technology derived from Yamaha's YZR-M1 MotoGP® race bike. Every aspect of this unique engine is built to thrill.", price: 200.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/yamaha%2Fyamaha-YZF-R1M.jpg?alt=media&token=01884907-ed00-4840-a039-1ff84ca88318"),
    Item(name: "Yamaha XSR900", description: "With timeless design inspired by Yamaha’s legendary racing heritage and the sheer power of its renowned CP3 powerplant, the XSR900 is the rebirth of a legend.", price: 190.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/yamaha%2Fyamaha-xsr900.jpg?alt=media&token=d6ed0e2f-5dee-444f-b5d9-0f6040762065"),
    Item(name: "Yamaha YZF-R7", description: "A new generation supersport with Yamaha's legendary styling combines an advanced CP2 engine with an ultra‑thin and lightweight chassis to provide torquey performance on both the track and the street.", price: 70.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/yamaha%2Fyamaha-YZF-R7.jpg?alt=media&token=df0967dd-13e8-44fc-ad01-18b8c4ed5bff"),
    Item(name: "Yamaha MT-07", description: "Featuring a distinctive next generation look and features, as well as an advanced twin‑cylinder engine. Experience the best balance of performance and value the Dark Side has to offer.", price: 90.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/yamaha%2Fyamaha-MT07.jpg?alt=media&token=4b6d1e6f-1932-4fb7-920b-84bed4be7951"),
    Item(name: "Yamaha Bolt R Spec", description: "Featuring a torquey V‑Twin engine, this performance bobber combines old‑school soul and modern form.", price: 120.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/yamaha%2Fyamaha-bolt.jpg?alt=media&token=c33506b1-2160-43e3-8bad-adf27bded736"),
    
]

// initialize the default Item categories
let defaultItemCategories = ItemCategories(
    featured: Array(defaultItems.shuffled().prefix(3)),
    forYou: Array(defaultItems.shuffled().prefix(4)),
    onSale: Array(defaultItems.shuffled().prefix(3)),
    new: Array(defaultItems.shuffled().prefix(3)),
    trending: Array(defaultItems.shuffled().prefix(3)),
    under100: Array((defaultItems.filter{$0.price < 100}).shuffled())
//    under100: Array((defaultItems.filter{$0.price < 100}).shuffled().prefix(6))
)

// the Data instance that will be passed around the app
class Data: ObservableObject {
    @Published var items: [Item] = defaultItems
    @Published var itemCategories: ItemCategories = defaultItemCategories
    @Published var cart: [Item] = []
    
    func addItemToCart(_ item: Item) {
        // add an Item to the cart
        if !itemAlreadyInCart(item.id) {
            self.cart.append(item)
        }
    }
    
    func removeItemFromCart(_ item: Item) {
        // remove an Item from the cart
        let filteredCart = self.cart.filter { $0.id != item.id }
        self.cart = filteredCart
    }
    
    func itemAlreadyInCart(_ id: UUID) -> Bool {
        // check if the given Item ID is already in the cart
        let filteredCart = self.cart.filter { $0.id == id }
        return !filteredCart.isEmpty
    }
    
    func cartTotal() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: self.cart.map({ $0.price }).reduce(0, +))) ?? "$0"
    }
    
}

class Item: ObservableObject {
    let id = UUID()
    var name: String
    var description: String
    var price: Double
    var photoURL: String
    
    init(name: String, description: String, price: Double, photoURL: String) {
        self.name = name
        self.description = description
        self.price = price
        self.photoURL = photoURL
    }
    
    // function to pretty print our prices
    func formattedPrice() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(
            value: self.price
        ))?.replacingOccurrences(of: ".00", with: "") ?? "$0"
    }
}

struct ItemCategories {
    var featured: [Item]
    var forYou: [Item]
    var onSale: [Item]
    var new: [Item]
    var trending: [Item]
    var under100: [Item]
}
//
//enum Features {
//    case
//}
