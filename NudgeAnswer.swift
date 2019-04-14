//
//  NudgeAnswer.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import Foundation

class NudgeAnswer {
    
    // Data Members
    private var _ID: Int
    private var _nudgeID: Int
    private var _answerText: String
    private var _order: Int
    
    // Properties
    var ID: Int {
        return _ID
    }
    
    var NudgeID: Int {
        return _nudgeID
    }
    
    var AnswerText: String {
        return _answerText
    }
    
    var Order: Int {
        return _order
    }
    
    // Constructor
    init(id: Int, nudgeID: Int, answer: String, order: Int) {
        self._ID = id
        self._nudgeID = nudgeID
        self._answerText = answer
        self._order = order
    }
}
