//
//  QariAudioDeleteInteractor.swift
//  Quran
//
//  Created by Mohamed Afifi on 4/23/17.
//
//  Quran for iOS is a Quran reading application for iOS.
//  Copyright (C) 2017  Quran.com
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//

import PromiseKit

struct QariAudioDeleteInteractor: Interactor {

    func execute(_ qari: Qari) -> Promise<Void> {
        return DispatchQueue.default.promise2 {
            try FileManager.default.removeItem(at: qari.localFolder())
        }
    }
}