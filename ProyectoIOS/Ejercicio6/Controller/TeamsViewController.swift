//
//  TeamsViewController.swift
//  Ejercicio6
//
//  Created by Javi Trujillo on 21/4/21.
//

import UIKit

class TeamsViewController: UIViewController, UIPickerViewDelegate ,UIPickerViewDataSource {
    
    //Aquí tenemos los outlets del storyboard
    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var teamsPicker: UIPickerView!
    @IBOutlet weak var teamImageView: UIImageView!
    
    //Creamos e inicializamos el array de equipos con el que rellenaremos el picker
    var teamsArray: [Team] = [Team]()
    
    //Variable del equipo actual que luego utilizaremos para pasarlo por el segue
    var currentTeam = Team(name: "", shortName: "")
    
    //Creamos las constantes con los equipos que vamos a introducir en el array
    let atl = Team(name: "Atlanta Hawks", shortName: "ATL")
    let bkn = Team(name: "Brooklyn Nets", shortName: "BKN")
    let bos = Team(name: "Boston Celtics", shortName: "BOS")
    let cha = Team(name: "Charlotte Hornets", shortName: "CHA")
    let chi = Team(name: "Chicago Bulls", shortName: "CHI")
    let cle = Team(name: "Cleveland Cavaliers", shortName: "CLE")
    let dal = Team(name: "Dallas Mavericks", shortName: "DAL")
    let den = Team(name: "Denver Nuggets", shortName: "DEN")
    let det = Team(name: "Detroit Pistons", shortName: "DET")
    let gs = Team(name: "Golden State Warriors", shortName: "GS")
    let hou = Team(name: "Houston Rockets", shortName: "HOU")
    let ind = Team(name: "Indiana Pacers", shortName: "IND")
    let lac = Team(name: "Los Angeles Clippers", shortName: "LAC")
    let lal = Team(name: "Los Angeles Lakers", shortName: "LAL")
    let mem = Team(name: "Memphis Grizzlies", shortName: "MEM")
    let mia = Team(name: "Miami Heat", shortName: "MIA")
    let mil = Team(name: "Milwaukee Bucks", shortName: "MIL")
    let min = Team(name: "Minnesota Timberwolves", shortName: "MIN")
    let no = Team(name: "New Orleans Pelicans", shortName: "NO")
    let ny = Team(name: "New York Knicks", shortName: "NY")
    let okc = Team(name: "Oklahoma City Thunder", shortName: "OKC")
    let orl = Team(name: "Orlando Magic", shortName: "ORL")
    let phi = Team(name: "Philadelphia 76ers", shortName: "PHI")
    let pho = Team(name: "Phoenix Suns", shortName: "PHO")
    let por = Team(name: "Portland Trail Blazers", shortName: "POR")
    let sa = Team(name: "San Antonio Spurs", shortName: "SA")
    let sac = Team(name: "Sacramento Kings", shortName: "SAC")
    let tor = Team(name: "Toronto Raptors", shortName: "TOR")
    let uta = Team(name: "Utah Jazz", shortName: "UTA")
    let was = Team(name: "Washington Wizards", shortName: "WAS")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Insertamos todos los equipos en el array
        teamsArray.append(atl)
        teamsArray.append(bkn)
        teamsArray.append(bos)
        teamsArray.append(cha)
        teamsArray.append(chi)
        teamsArray.append(cle)
        teamsArray.append(dal)
        teamsArray.append(den)
        teamsArray.append(det)
        teamsArray.append(gs)
        teamsArray.append(hou)
        teamsArray.append(ind)
        teamsArray.append(lac)
        teamsArray.append(lal)
        teamsArray.append(mem)
        teamsArray.append(mia)
        teamsArray.append(mil)
        teamsArray.append(min)
        teamsArray.append(no)
        teamsArray.append(ny)
        teamsArray.append(okc)
        teamsArray.append(orl)
        teamsArray.append(phi)
        teamsArray.append(pho)
        teamsArray.append(por)
        teamsArray.append(sa)
        teamsArray.append(sac)
        teamsArray.append(tor)
        teamsArray.append(uta)
        teamsArray.append(was)
        
        //Inyectamos el picker en la vista
        self.teamsPicker.delegate = self
        self.teamsPicker.dataSource = self
    }
    
    
    //MARK: - Picker data source
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teamsArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //Aquí introducimos el array en el picker
        return teamsArray[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //Aquí lo que hacemos es que la label muestre lo que tenemos seleccionado en el picker
        teamLabel.text = teamsArray[row].name.uppercased()
        
        //Insertamos la imagen del equipo
        if let image = UIImage(named: teamsArray[row].shortName) {
            teamImageView.image = image
        }
    }
    
    //MARK: - Performing segue
    
    @IBAction func pressButton(_ sender: Any) {
        //Al pulsar el botón, iniciamos el segue
        performSegue(withIdentifier: "OpenPlayersVC", sender: self)
    }
    
    //Preparamos el segue para que el los datos del equipo que está seleccionado en el picker sea el que se envíe a la siguiente pantalla
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let playersByTeamTableViewController: PlayersByTeamTableViewController = segue.destination as! PlayersByTeamTableViewController
        
        //Hacemos que el equipo que hay en el label sea el equipo actual
        for i in 0...29 {
            if teamsArray[i].name == teamLabel.text!.capitalized {
                currentTeam = teamsArray[i]
            }
        }
        //Hacemos que la variable team del jugador de la siguiente pantalla sea la variable team del currentTeam de esta pantalla, pasándose de una pantalla a otra
        playersByTeamTableViewController.team = currentTeam.shortName
    }
    
}
