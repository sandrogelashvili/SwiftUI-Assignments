//
//  ContentView.swift
//  SwiftAssignment28
//
//  Created by Sandro Gelashvili on 22.05.24.
//

import SwiftUI

struct ContentView: View {
    private let items = [
        ListModel(title: "რა დაუწუნა ბარბარემ ნიკის?", description: "ნიკის ამაზე ჯერ განცხადება არ გაუკეთებია, ფანები ელოდებიან რომ რომელიმე მალე სიჩუმეს გაფანტავს"),
        ListModel(title: "რა ზომის ფეხი აქვს ვასოს?", description: "დეველოპერებმა განაცხადეს რომ თუ მას 42 და მეტი ზომა ფეხი აქვს მის მოსმენას აზრი არ აქვს და კომენტარის გარეშე დატოვებენ ლექციას"),
        ListModel(title: "რა სიმაღლისაა ანჟელა ew?", description: "ანჟელა ew არის მეტრაოთხმოცი, რაც ნიშნავს რომ ის დაახლოებით ტეილორ Swift-ის სიმაღლისაა და დიდი ფეხი აქვს"),
        ListModel(title: "რატომ გაებუტა ბარბარეს ჭეპეტე?", description: "ამჟამინდელი მონაცემებით ისინი 2 დღე არ ესაუბრებოდნენ ერთმანეთს და როგორც გაირკვა ანიგნორებს აიგნორებდნენ რაღაც იგნორში."),
        ListModel(title: "MVC vs MVVM", description: "აი ეს MVC გასაგებია, მაგრამ MVVM ჩემამდე არ დადის რა, ამ სვიბთ იუაიში სად ვიყენებთ მაგას?"),
        ListModel(title: "ნეტავ რამდენი ხანი გაგრძელდება ეს?", description: "აღმოჩნდა რომ დეველოპერები ძალიან გახარებულები არიან SwiftUI-ით. ნეტავ რამდენი ხანი გაგრძელდება Honeymoon phase?"),
        ListModel(title: "sasass?", description: "saasass ssass sass sa sasasass ssssaasss sasasasa ssassassasa sasasa"),
        ListModel(title: "მეზარება დანარჩენის მოფიქრება?", description: "დიახ, თქვენ გამოიცანით მეზარება დანარჩენის მოფიქრება."),
        ListModel(title: "მეზარება დანარჩენის მოფიქრება?", description: "დიახ, თქვენ გამოიცანით მეზარება დანარჩენის მოფიქრება."),
        ListModel(title: "მეზარება დანარჩენის მოფიქრება?", description: "დიახ, თქვენ გამოიცანით მეზარება დანარჩენის მოფიქრება."),
        ListModel(title: "მეზარება დანარჩენის მოფიქრება?", description: "დიახ, თქვენ გამოიცანით მეზარება დანარჩენის მოფიქრება."),
        ListModel(title: "მეზარება დანარჩენის მოფიქრება?", description: "დიახ, თქვენ გამოიცანით მეზარება დანარჩენის მოფიქრება.")
    ]
    
    @State private var arrowsColor: Color = Color(#colorLiteral(
        red: 0.4206685424,
        green: 0.7812014818,
        blue: 0.9797381759,
        alpha: 1))
    @State private var arrowChanged = false
    
    var body: some View {
                ZStack {
                    Color(#colorLiteral(
                        red: 0.08421816677,
                        green: 0.1467543244,
                        blue: 0.1714112461,
                        alpha: 1))
                    .ignoresSafeArea()
                    VStack {
                        Text("svibti iuai eksersaisi")
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.white)
                            .font(.system(
                                size: 31,
                                weight: .bold,
                                design: .default
                            ))
                            .padding()
                            .background(
                                Color(#colorLiteral(red: 0.08421812207,
                                                    green: 0.1467543244,
                                                    blue: 0.1714113057,
                                                    alpha: 1)))
                        HStack(spacing: 13) {
                            SongsView()
                            VStack(spacing: 13) {
                                ChatView()
                                NewsView()
                            }
                            .font(.system(
                                size: 9,
                                weight: .medium
                            ))
                        }
                        ZStack(alignment: .bottomTrailing) {
                            ItemListView(items: items)
                            
                            ZStack {
                                Circle()
                                    .foregroundColor(arrowsColor)
                                    .onTapGesture {
                                        arrowChanged.toggle()
                                        if arrowChanged {
                                            arrowsColor = Color(#colorLiteral(
                                                red: 0.4206685424,
                                                green: 0.7812014818,
                                                blue: 0.9797381759,
                                                alpha: 1))
                                        } else {
                                            arrowsColor = Color.red
                                        }
                                    }
                                    .frame(width: 50, height: 50)
                                .padding()
                                Image("arrowImage")
                            }
                            
                        }
                    }
                }
            }
    }


struct SongsView: View {
    @State private var descriptionText: String = "We love property wrappers and closures"
    @State private var descriptionChanged = false
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            ZStack(alignment: .bottomTrailing) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(#colorLiteral(
                        red: 0.9790330529,
                        green: 0.7752700448,
                        blue: 0.2691460848,
                        alpha: 0.8470588235)))
                    .frame(width: 165, height: 232)
                    .shadow(color: Color.black.opacity(0.5),
                            radius: 10,
                            x: 5, y: 10)
                Image("GuitarImage")
            }
            VStack(alignment: .leading ) {
                Image(systemName: "mic.circle.fill")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .foregroundColor(Color(#colorLiteral(
                        red: 0.9785323739,
                        green: 0.7928981185,
                        blue: 0.3861837983,
                        alpha: 1)))
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: Color(#colorLiteral(
                        red: 0.5124487281,
                        green: 0.4164265692,
                        blue: 0.2107813954,
                        alpha: 1)),
                            radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,
                            x: 5, y: 10)
                    .onTapGesture {
                        descriptionChanged.toggle()
                        if descriptionChanged {
                            descriptionText = "We love property wrappers and closures"
                        } else {
                            descriptionText = "No to property wrappers and closures!!"
                        }
                    }
                Text("ჯუზონები და რამე")
                    .foregroundStyle(.white)
                    .font(.system(
                        size: 9,
                        weight: .medium
                    ))
                    .padding(.bottom, 50)
                Text(descriptionText)
                    .lineLimit(4)
                    .frame(width: 108)
                    .foregroundStyle(.white)
                    .font(.system(
                        size: 16,
                        weight: .bold
                    ))
            }
            .padding(.leading, 16)
            .padding(.top, 12)
        }
    }
}

struct ChatView: View {
    @State private var colorOfView: Color = Color(#colorLiteral(
        red: 1,
        green: 0.5950372815,
        blue: 0.3634005189,
        alpha: 0.8470588235))
    @State private var colorChanged = false
    // MARK: - ეს ლიტრალი აქ რატო ქნა და სხვაგან რატო არ შვება ვერ მივხდი
    var body: some View {
        ZStack(alignment: .topLeading) {
            ZStack(alignment: .bottomTrailing) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(colorOfView)
                    .frame(width: 165, height: 110)
                    .shadow(color: Color.black.opacity(0.5),
                            radius: 10,
                            x: 5, y: 10)
                Image("chatImage")
            }
            VStack(alignment: .leading ) {
                ZStack {
                    Circle()
                        .frame(width: 32, height: 32)
                        .foregroundColor(Color(#colorLiteral(
                            red: 1,
                            green: 0.6215574741,
                            blue: 0.4508192539,
                            alpha: 1)))
                        .shadow(color: Color(#colorLiteral(
                            red: 0.5285239816,
                            green: 0.3270239234,
                            blue: 0.2391204238,
                            alpha: 1)),
                                radius: 10,
                                x: 5, y: 10)
                        .onTapGesture {
                            colorChanged.toggle()
                            if colorChanged {
                                colorOfView = Color(#colorLiteral(
                                    red: 1,
                                    green: 0.5950372815,
                                    blue: 0.3634005189,
                                    alpha: 0.8470588235))
                            } else {
                                colorOfView = Color.green
                            }
                        }
                    Image(systemName: "ellipsis.message.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.white)
                }
                Text("ჩატაობა")
                    .foregroundStyle(.white)
            }
            .padding(.leading, 16)
            .padding(.top, 12)
        }
    }
}

struct NewsView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            ZStack(alignment: .bottomTrailing) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(#colorLiteral(
                        red: 0.5766372085,
                        green: 0.3394168317,
                        blue: 0.9761807323,
                        alpha: 0.8470588235)))
                    .frame(width: 165, height: 110)
                    .shadow(color: Color.black.opacity(0.5),
                            radius: 10,
                            x: 5, y: 10)
                Image("speakerImage")
            }
            VStack(alignment: .leading ) {
                ZStack {
                    Circle()
                        .frame(width: 32, height: 32)
                        .foregroundColor(Color(#colorLiteral(
                            red: 0.6026527286,
                            green: 0.3570689261,
                            blue: 0.9825637937,
                            alpha: 1)))
                        .shadow(color: Color(#colorLiteral(
                            red: 0.3117793798,
                            green: 0.1856103837,
                            blue: 0.5182189941,
                            alpha: 1)),
                                radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,
                                x: 5, y: 10)
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.white)
                }
                Text("ცეცხლოვანი სიახლეები")
                    .frame(width: 61)
                    .foregroundStyle(.white)
            }
            .padding(.leading, 16)
            .padding(.top, 12)
        }
    }
}

struct ListModel: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}

struct ItemListView: View {
    let items: [ListModel]
    
    var body: some View {
        List(items) { item in
            HStack(alignment: .top, spacing: 17) {
                Image("letterImage")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(item.title)
                        .font(.headline)
                        .foregroundColor(.white)
                    Text(item.description)
                        .font(.system(
                            size: 11,
                            weight: .medium
                            ))
                        .foregroundColor(.gray)
                        .lineLimit(5)
                }
                Divider()
            }
            .padding(.vertical, 10)
            .listRowBackground(Color(#colorLiteral(
                red: 0.08421816677,
                green: 0.1467543244,
                blue: 0.1714112461,
                alpha: 1)))
        }
        .listStyle(InsetListStyle())
        .background(Color(#colorLiteral(
            red: 0.08421816677,
            green: 0.1467543244,
            blue: 0.1714112461,
            alpha: 1)))
    }
}


#Preview {
    ContentView()
}
