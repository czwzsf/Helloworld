//
//  ContentView.swift
//  HelloWorld
//
//  Created by  on 2022/5/28.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        VStack {
            Button{
                speak(text: "The answer is Ocean 11!")
                
            }label: {
                Text("ð´")
                    .fontWeight(.bold)// boldå°æå­åä¸ºç²ä½
                    .font(.system(.title, design: .rounded))//å°æå­çå½¢å¼åä¸ºæ é¢ï¼å­ä½çè®¾è®¡åçåæ»¡
                    .padding()
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.orange)
        .cornerRadius(20)
            Button{
                speak(text: "The answer is Ocean 11!")
            }label: {
                Text("ð°")
                    .font(.system(.title,design: .rounded))
                    .fontWeight(.bold)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(20)
        }
    }
    func speak(text:String){
        let utterance = AVSpeechUtterance(string: text)//æ³è¦åå£°çè¯­å¥
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")//éè¿æå®æ¨çææ¬åºè¯¥ä½¿ç¨çè¯­è¨ä»£ç æä½¿ç¨ voiceWithIdentifier æ¥æ£ç´¢è¯­é³å¯¹äºå·²ç¥çè¯­é³æ è¯ç¬¦ã
        let synthessizer = AVSpeechSynthesizer()//åå»º AVSpeechSynthesizer çå®ä¾ä»¥ä½¿ç¨ AVSpeechUtterance å¯¹è±¡å¼å§çæåæè¯­é³ã
        synthessizer.speak(utterance)//ä½¿ç¨çæçå®ä¾æ¥å°ä¹ååçè¯­å¥è¯»åºæ¥
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
