//
//  UsersHelper.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 15/10/2024.
//

class UsersHelper {
    static func filterUsersByName(users: [User], filterText: String) -> [User] {
        if filterText.isEmpty {
            return users
        } else {
            return users.filter {
                $0.firstName.lowercased().contains(filterText.lowercased()) ||
                $0.lastName.lowercased().contains(filterText.lowercased())
            }
        }
    }
}
