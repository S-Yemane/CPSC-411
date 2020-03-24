//
//  ViewController.swift
//  midterm
//
//  Created by CSUFTitan on 3/23/20.
//  Copyright © 2020 CSUFTitan. All rights reserved.
//

import SwiftUI

class ViewController: UIViewController {
    var tapCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //QUESTION 1
        ZStack {
            Color.green.frame(width: 200, height: 200)
            Color.blue.frame(width: 150, height: 150)
            Color.red.frame(width: 100, height: 100)
        }
        //QUESTION 2
        Section {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            Text("Live long and prosper")
        }
        //QUESTION 3
        Form {
            Text("Hello, World")
            Text("Hello, World")
        }.navigationBarTitle("SwiftUI")
        //QUESTION 4
        Button(action: {
            self.tapCount += 1
        }) {
            Text("\(tapCount)")
        }
    }
    
    func questionOne() -> some View {
        let label = ZStack {
            Color.green.frame(width: 200, height: 200)
            Color.blue.frame(width: 150, height: 150)
            Color.red.frame(width: 100, height: 100)
        }
        return label
    }
    
    func questionTwo() -> some View {
        let label = Section {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            Text("Live long and prosper")
        }
        return label
    }
    
    func questionThree() -> some View {
        let form = Form {
            Text("Hello, World")
            Text("Hello, World")
        }.navigationBarTitle("SwiftUI")
        return form
    }
    
    func questionFour() -> some View {
        let button = Button(action: {
            self.tapCount += 1
        }) {
            Text("\(tapCount)")
        }
        return button
    }
}

