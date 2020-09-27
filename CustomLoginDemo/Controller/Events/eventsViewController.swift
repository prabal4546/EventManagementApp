//
//  eventsViewController.swift
//  CustomLoginDemo
//
//  Created by PRABALJIT WALIA     on 26/09/20.
//  Copyright © 2020 Christopher Ching. All rights reserved.
//

import UIKit
    
var eventNames=["Aero Dominator 6.0 - PREMIER","Business Idea - PREMIER","VIT Hack - PREMIER","Quadcopter Workshop - PREMIER","iOS Fusion 5.0 - WORKSHOP","Brew - WORKSHOP","Ibm Dev - WORKSHOP","Cfd - WORKSHOP","Chem Rap - TECHNICAL","Codezers - TECHNICAL","Doodle - TECHNICAL","Webslinger - TECHNICAL","Cyclothon'19 - NON-TECHNICAL","Laser Tag - NON-TECHNICAL","Udaan NON-TECHNICAL","Segmaze - NON-TECHNICAL"]
var eventDetail1=["AERODOMINATOR 6.0 is going to be an all-electric class aero design competition. It will feature micro class aircraft. The micro class aims to help the aero-enthusiasts understand how an aircraft should be designed having the best of both the world's, by having the least possible empty aircraft weight, at the same time an aircraft that is able to lift the maximum payload fraction.","Business Ideas would provide a platform that encourage and promotes young entrepreneurs to empower their business model with technical aspects to give them an edge over others. It will help in providing the participants with the challenges one has to face when starting a business or selling a product. The participants will get a first-hand experience on the problems that they would generally face when they start their companies, this would help them in making better decisions in the future when it would be real time for going into the wars of the real world.","VIT Hack aims to provide a platform for participants, including but not limited to Indian students, to contribute their ideas as solutions to real-world problems. In this global event, we hope to create a confluence of different cultures and ideas from around the world. Tracks related to emerging technologies aim to expand the participants’ horizons so as to spark innovation.","QUADCOPTER workshop presented by C Labs and SAE VIT is a 3-day PREMIUM workshop which focuses on providing participants with a chance to feed their curiosity regarding the What’s and How’s behind the designing, manufacturing, assembling and working of a quadcopter. In the first two days of this workshop, participants will be exposed to a step by step hands on session to build their own quad copter and will be guided by a team of professional experts with years of experience in this field, about how to go about starting the assembling of their very own quadcopters using the kits all the way through from scratch.","The Apple Developers Group is back with iOS Fusion, a one of a kind workshop on iOS app development. With the thumping success of 4 successful iOS Fusion on our back, we introduce to you, iOS Fusion 5.0. iOS Fusion aims at teaching the basics of iOS app development to every participant. Skill level makes no difference, as this workshop is designed to cater to everyone from beginner to advanced developers.","A two-day technical boot camp involving various trending technologies starting from scratch. The workshop will start from the basics of python up to the advanced level which is required for cloud computing. Then it will be followed by the introduction and usage of Amazon Web Services (AWS) in cloud computing.","The workshop includes lectures, discussions on how Watson IoT works, and hands-on exercises that developers can use to better understand what Watson IoT does, what it doesn’t do, and how it works so that students can build best solutions for the industry needs.","CFD is fast becoming a popular simulation based design tool in industry. Through the workshop the students will be acquainted with the basics of CFD, its applications in different domains, the different existing commercial softwares like ANSYS ICEM CFD, ANSYS FLUENT and career opportunities in the same. Topics to be discussed in the workshop: Introduction to CFD Review of CFD Equations CFD Flow Process Introduction to ANSYS FLUENT Question Answer Session","Word building game with a twist, element building game. With next round being a thrilling chemistry scavenger hunt searching for clues and riddles throughout the campus.","The event brings out the coder in you by letting you to work under pressure and coordinate with a team. 3 rounds of coding and debugging will amaze your minds","People say the pen is mightier than the sword, but this time the mouse designs the future. We want you to wear your heart on your sleeve and doodle away! This Gravitas, IEEE-SSIT brings you a a platform to showcase your artistic side and your graphic design skills! A six-hour graphic designing contest based on “Nano-technology” with access to innumerable applications from Photoshop to Illustrator to even Paint, is the best way to express your inner artist and let your creative juices flow! Join us on to design the future.","8 hrs website making competition for students of any year. Participants have to work in a team of two or three with in a limited time and complete the full website. They will be equally judge on the basis of the design and usability of the website.","Boys & Girls of VIT, it is finally here! The electrifying, exuberant, breath-taking curtain raiser of graVITas has arrived! The question is are you geared up for Cyclothon 2K19? Are you all charged-up to defy every nerve within you that screams STOP and continue peddling onward to cycle for a cause? We bet you are for which we are eagerly waiting to see you on the 11th of October. Be there! Participants are requested to bring their own cycles.","Laser Tag is an immensely popular event that involves participants, playing in a 5-on-5 format using infrared blasters as a form of laser ‘gun’ that is fired at sensors worn on opposing participants' suits during the game. The registered teams will be given time slots to arrive at the venue. Players will be taught how to use the guns and debriefed about the rules in the arena before each game. Each team will have five members.","Udaan is a simulation of the business ecosystem, where the speaker introduces the students to the intricacies of business that lie beyond the ideation and prototype building phase. The students will be handling different positions of responsibility in a start-up and will engage in a hypothetical situation in order to understand the complexity of the business world.","It's an event with a touch of technology in which the participants have to complete a maze.There will be checkpoints in a route where he/she has to answer some questions (technical) to continue the game"]
var eventDate=["Date: 12th October to 12th October","Date: 12th October to 12th October","Date: 21th September to 23th September","Date: 11th October to 13th October","Date: 14th September to 15th September","Date: 14th September to 15th September","Date: 21th September to 22th September","Date: 14th September to 15th September","Date: 12th October to 12th October","Date: 13th October to 13th October","Date: 12th October to 12th October","Date: 11th October to 11th October","Date: 11th October to 11th October","Date: 11th October to 13th October","Date: 11th October to 11th October","Date: 11th October to 12th October"]
var eventTime=["Timing: 08:00 to 19:00","Timing: 07:00 to 00:00","Timing: 10:00 to 20:00","Timing: 09:00 to 19:30","Timing: 16:00 to 00:00","Timing: 08:00 to 15:30","Timing: 08:00 to 16:00","Timing: 09:00 to 18:00","Timing: 10:00 to 14:00","Timing: 10:00 to 16:00","Timing: 09:00 to 16:00","Timing: 11:00 to 19:00","Timing: 06:00 to 10:00","Timing: 09:00 to 19:00","Timing: 11:00 to 19:00","Timing: 11:00 to 18:00"]
var eventVenue=["Venue: SJT ANNEX","Venue: Anna Auditorium","Venue: Channa Reddy Auditorium","Venue: CS Hall","Venue: TT GALLERY 2(VOC)","Venue: TT GALLERY 2","Venue: SJT507","Venue: SJT 307","Venue: SMV G09","Venue: MB 210","Venue: Sarojini Naidu Gallery","Venue: SJT 107","Venue: TT Basketball Court","Venue: SJT 311 and SJT 308","Venue: SJT 606","Venue: CS Hall Basketball Court"]
var eventFee=["Registration Fee: ₹ 3000","Registration Fee: ₹ 300","Registration Fee: ₹ 0","Registration Fee: ₹ 3500","Registration Fee: ₹ 550","Registration Fee: ₹ 150","Registration Fee: ₹ 600","Registration Fee: ₹ 500","Registration Fee: ₹ 150","Registration Fee: ₹ 150","Registration Fee: ₹ 100","Registration Fee: ₹ 100","Registration Fee: ₹ 0","Registration Fee: ₹ 150","Registration Fee: ₹ 120","Registration Fee: ₹ 200"]

var myIndex = 0

class eventsViewContoller: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventNames.count
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=eventsTableView.dequeueReusableCell(withIdentifier: "iden1", for: indexPath)
        cell.backgroundColor = .black
        cell.textLabel?.text=eventNames[indexPath.row]
        cell.textLabel?.textColor = .white
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segway", sender: self)
    }
    
    
    @IBOutlet weak var eventsTableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        eventsTableView.delegate=self
        eventsTableView.dataSource=self
        
    }
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let eventsVC = segue.destination as? eventDescriptionViewController{
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
        }
    }
    
}

