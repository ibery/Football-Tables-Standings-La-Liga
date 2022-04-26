//
//  ViewController.swift
//  PointTable
//
//  Created by Narkoz on 6.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    private var teamListViewModel : TeamListViewModel!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName: Constants.cellNibName, bundle: nil), forCellReuseIdentifier: Constants.cellIdentifier)

        
        getData()
    }
    
    // MARK: - Methods
    
    func getData () {
        
        let url = URL(string: "https://apiv3.apifootball.com/?action=get_standings&league_id=302&APIkey=64e7c27b1d3598a56f2708b6eeb6e38fc40e8fe9c7665aec42bb1624c5101266")!
        WebService().donwloadTeams(url: url) { teamList in
            if let teamList = teamList {
                self.teamListViewModel = TeamListViewModel(teamList: teamList)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
        
    }
    
    


}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

     
        return self.teamListViewModel == nil ? 0 : self.teamListViewModel.numberOfRowInSection()
     //   return teamList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier, for: indexPath) as! TeamCell
        
        
      let teamViewModel = self.teamListViewModel.teamAtIndex(indexPath.row)




        cell.teamNameLabel?.text = teamViewModel.team_name
        cell.arrangementLabel?.text = teamViewModel.overall_league_position
        let url = URL(string: teamViewModel.team_badge)
        let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
        cell.teamLogo.image =  UIImage(data: data!)
        cell.playLabel?.text = teamViewModel.overall_league_payed
        cell.winLabel?.text = teamViewModel.overall_league_W
        cell.lostLabel?.text = teamViewModel.overall_league_L
        cell.drawLabel?.text = teamViewModel.overall_league_D
        cell.gaLabel?.text = teamViewModel.overall_league_GA
        cell.gfLabel?.text = teamViewModel.overall_league_GF
        cell.pointsLabel?.text = teamViewModel.overall_league_PTS
        

        
     
        return cell
    }
    
    
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height/20
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
}

