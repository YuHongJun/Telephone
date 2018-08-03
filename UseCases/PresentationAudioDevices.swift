//
//  PresentationAudioDevices.swift
//  Telephone
//
//  Copyright © 2008-2016 Alexey Kuznetsov
//  Copyright © 2016-2018 64 Characters
//
//  Telephone is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Telephone is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//

import Domain
import Foundation

final class PresentationAudioDevices: NSObject {
    let input: [PresentationAudioDevice]
    let output: [PresentationAudioDevice]

    init(input: [PresentationAudioDevice], output: [PresentationAudioDevice]) {
        self.input = input
        self.output = output
    }
}

extension PresentationAudioDevices {
    override func isEqual(_ object: Any?) -> Bool {
        guard let devices = object as? PresentationAudioDevices else { return false }
        return isEqual(to: devices)
    }

    override var hash: Int {
        return NSArray(array: input).hash ^ NSArray(array: output).hash
    }

    private func isEqual(to devices: PresentationAudioDevices) -> Bool {
        return input == devices.input && output == devices.output
    }
}
