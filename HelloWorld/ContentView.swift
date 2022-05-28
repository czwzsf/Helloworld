//
//  ContentView.swift
//  HelloWorld
//
//  Created by chenzhewei on 2022/5/28.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        Button{
            let utterance = AVSpeechUtterance(string: "你好啊")//想要发声的语句
            utterance.voice = AVSpeechSynthesisVoice(language: "zh-hans")//通过指定您的文本应该使用的语言代码或使用 voiceWithIdentifier 来检索语音对于已知的语音标识符。
            let synthessizer = AVSpeechSynthesizer()//创建 AVSpeechSynthesizer 的实例以使用 AVSpeechUtterance 对象开始生成合成语音。
            synthessizer.speak(utterance)//使用生成的实例来将之前写的语句读出来
            
        }label: {
            Text("Hello World!")
                .fontWeight(.bold)// bold将文字变为粗体
                .font(.system(.title, design: .rounded))//将文字的形式变为标题，字体的设计变的圆满
                .padding()
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.orange)
        .cornerRadius(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
