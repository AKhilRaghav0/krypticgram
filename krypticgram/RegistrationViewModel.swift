//
//  RegistrationViewModel.swift
//  Instagram
//
//  Created by akhil on 18/03/24.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published  var username = ""
    @Published  var email = ""
    @Published  var password = ""
}
