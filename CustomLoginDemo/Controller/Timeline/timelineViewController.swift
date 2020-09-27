
import UIKit

var eventTimeline=["iOS Fusion 5.0 - WORKSHOP\nDate: 14th September to 15th September","Brew - WORKSHOP\nDate: 14th September to 15th September","Cfd - WORKSHOP\nDate: 14th September to 15th September","Ibm Dev - WORKSHOP\nDate: 21th September to 22th September","VIT Hack - PREMIER\nDate: 21th September to 23th September","Quadcopter Workshop - PREMIER\nDate: 11th October to 13th October","Webslinger - TECHNICAL\nDate: 11th October to 11th October","Cyclothon'19 - NON-TECHNICAL\nDate: 11th October to 11th October","Laser Tag - NON-TECHNICAL\nDate: 11th October to 13th October","Udaan NON-TECHNICAL\nDate: 11th October to 11th October","Segmaze - NON-TECHNICAL\nDate: 11th October to 12th October","Aero Dominator 6.0 - PREMIER\nDate: 12th October to 12th October","Business Idea - PREMIER\nDate: 12th October to 12th October","Chem Rap - TECHNICAL\nDate: 12th October to 12th October","Doodle - TECHNICAL\nDate: 12th October to 12th October","Codezers - TECHNICAL\nDate: 13th October to 13th October"]

class timelineViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventTimeline.count
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = timelineTable.dequeueReusableCell(withIdentifier: "iden1", for: indexPath)
        cell2.backgroundColor = .white
        cell2.textLabel?.text=eventTimeline[indexPath.row]
        cell2.textLabel?.textColor = .black
        return cell2
    }
    
    
    
    @IBOutlet weak var timelineTable: UITableView!
    
    // Do any additional setup after loading the view.
    override func viewDidLoad() {
        super.viewDidLoad()
        timelineTable.delegate = self
        timelineTable.dataSource = self
    }
}
