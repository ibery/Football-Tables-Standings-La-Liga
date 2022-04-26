//
//  WebService.swift
//  PointTable
//
//  Created by Narkoz on 9.04.2022.
//

import Foundation

class WebService {
    
    func donwloadTeams (url: URL , completion: @escaping  ([TeamModel]?) -> () ) {
        URLSession.shared.dataTask(with: url) { data , response , error  in
            if let error = error {
                print(" error var \(error.localizedDescription)")
                completion(nil)
            }else if let data = data {
                do {
                //    print(String(decoding: data, as: UTF8.self))
                    let teamList = try JSONDecoder().decode([TeamModel].self, from: data )
              //    print("burası team list \(teamList)")
                   
                        completion(teamList)
                    
                }catch{
                    print("do try hatası \(error.localizedDescription)")
                }
            }
        }.resume()
    }
}
