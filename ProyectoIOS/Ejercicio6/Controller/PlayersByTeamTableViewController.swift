//
//  PlayersByTeamTableViewController.swift
//  Ejercicio6
//
//  Created by Javi Trujillo on 5/4/21.
//

import UIKit

class PlayersByTeamTableViewController: UITableViewController {
    
    //Creo un array que contenga todos los jugadores del equipo recuperadas del api
    var playersArray: [Player] = []
    
    
    //Esta variable "team", es la que se recoge en el segue. Es muy importante, ya que lo que recoge es el "shortName" del equipo recogido, que son unas siglas de ese equipo que son las que luego se introducen en la URL de la api. Esas siglas están escritas así porque son las que la API reconoce para mostrar cada equipo en cuestión. Es decir, no se puede tocar el shortname "ATL" del equipo con nombre "Atlanta Hawks", porque ese es el id por que el la API tiene guardado a ese equipo, y si se modifica, no se cargarán los jugadores en la API y por tanto en esta aplicación.
    var team = ""
    
    //Inicializamos la variable del jugador actual que luego utilizaremos para darle datos y pasarlos a la próxima pantalla con el segue
    var currentPlayer = Player(id: 0, sportsDataID: "", status: "", teamID: 0, team: "", jersey: 0, positionCategory: "", position: "", firstName: "", lastName: "", height: 1, weight: 1, birthdate: "", birthCity: "", birthState: "", birthCountry: "", highSchool: "", college: "", salary: 1, photoUrl: "", experience: 1, sportRadarPlayerID: "", rotoworldPlayerID: 1, rotoWirePlayerID: 1, fantasyAlarmPlayerID: 1, statsPlayerID: 1, sportsDirectPlayerID: 1, xmlTeamPlayerID: 1, injuryStatus: "", injuryBodyPart: "", injuryStartDate: "", injuryNotes: "", fanDuelPlayerID: 1, draftKingsPlayerID: 1, yahooPlayerID: 1, fanDuelName: "", draftKingsName: "", yahooName: "", depthChartPosition: "", depthChartOrder: 1, globalTeamID: 1, fantasyDraftName: "", fantasyDraftPlayerID: 1, usaTodayPlayerID: 1, usaTodayHeadshotUrl: "", usaTodayHeadshotNoBackgroundUrl: "", usaTodayHeadshotUpdated: "", usaTodayHeadshotNoBackgroundUpdated: "", nbaDotComPlayerID: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Cargamos la función principal
        loadData()

        //LA URL usada para esto es: https://fly.sportsdata.io/v3/nba/stats/json/Players/BKN?key=b52544ea304746c78679aab147b715da
        
        //Como vamos a hacer una petición para recuperar los datos de Internet, tenemos que añadir a. Info.plis el parámetro allow arbitrary loads, y ponerlo a YES
    }
    
    // MARK: - Private methods
    
    private func loadData() {
        //Creamos una constante con la key de la api
        let apiKey = "b52544ea304746c78679aab147b715da"
        
        //Creamos una constante con la URL
        let apiUrl = "https://fly.sportsdata.io/v3/nba/stats/json/Players/\(team)?key=\(apiKey)"
                
         //Inicializamos la url, pero con un if porque puede darse el caso de que no encuentre la url
        if let url = URL(string: apiUrl) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                guard let data = data else { return }
                
//               //Descomprimimos el json para mostrarlo por consola y poder comprobar que va bien
//                if let jsonString = String(data: data, encoding: .utf8) {
//                    print(jsonString)
//                }
    
                //Recuperamos los datos para añadirlos a nuestro array
                do {
                    let player = try JSONDecoder().decode([Player].self, from: data)
                    self.playersArray = player
                } catch {
                    print("Error al recuperar los datos")
                }
                
                //Para actualizar la tabla con los datos:
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            }.resume() //Esto hace que si la URLSession está suspensa, se inicialice otra vez
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Esto devuelve el número de celdas
        return playersArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Convertimos la celda en tipo PlayerTableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCellId", for: indexPath) as! PlayerTableViewCell
        
        
        //Jugador actual
        let currentPlayer = playersArray[indexPath.row]

        //Le pasamos a cada celda el array para que se completen todas. IndexPath.row es la celda actual
        cell.loadPlayer(player: currentPlayer)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Esto es para que muestre la pantalla del jugador que está seleccionado
        currentPlayer = playersArray[indexPath.row]
        performSegue(withIdentifier: "OpenStatsVC", sender: self)
    }
        
    //MARK: - Performing segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Le damos el destino al segue
        let statsViewController: StatsViewController = segue.destination as! StatsViewController
            
        // Pass on the data to the Detail ViewController by setting it's indexPathRow value
        statsViewController.playerID = currentPlayer.id
    }
}
