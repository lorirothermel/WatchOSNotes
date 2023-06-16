//
//  Note.swift
//  WatchOSNotes Watch App
//
//  Created by Lori Rothermel on 6/16/23.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
