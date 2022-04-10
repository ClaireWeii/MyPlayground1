import Foundation
import AVFoundation

let now = Date()
var dateFormatter = DateFormatter()
dateFormatter.dateStyle = .long
dateFormatter.timeStyle = .short
dateFormatter.timeZone = TimeZone(identifier: "Asia/Taipei")
let dateString = dateFormatter.string(from: now)
let speechUtterance = AVSpeechUtterance(string: dateString)
let synthesizer = AVSpeechSynthesizer()
synthesizer.speak(speechUtterance)
