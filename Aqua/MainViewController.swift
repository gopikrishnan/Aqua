import Cocoa
import Foundation


class MainViewController: NSViewController {

//    private let reminder: Reminder
    var reminder: Reminder = Reminder()
    var interval = 60;
    
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)!

    }

    @IBOutlet weak var slider: NSSlider!
    @IBAction func sliderUpdated(_ sender: NSSlider) {
        NSLog("slider value is changed %@",slider.stringValue );
        let sliderVal = slider.intValue;
        if (sliderVal != 0) {
            interval = interval + (Int(sliderVal)*2)
        }
        reminder.reset(intervalInSecs: Double(interval*60))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        reminder.startTimer(intervalInSecs: Double(interval*60))
    }
    override func viewDidAppear() {
        super.viewDidAppear()
        NSLog("Popover Appeared!")

    }
    
    override func viewDidDisappear() {
        super.viewDidDisappear()
        NSLog("Popover Disappeared!")

    }
    
    
    
}
