//
//  Nudge.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import Foundation
import UIKit

class Nudge
{
    // Data Members
    private var _ID: Int
    private var _groupID: Int
    private var _title: String
    private var _subtitle: String
    private var _scenarioStory: String
    private var _reactionQuestion: String
    private var _reactionAnswers: [NudgeAnswer]
    private var _wrapUpSubtitle: String
    private var _wrapUpTakeAway: String
    private var _image: UIImage
    private var _therapyType: String
    private var _orderNo: Int
    
    // Properties
    var NudgeID: Int {
        return _ID
    }
    
    var NudgeGroupID: Int {
        return _groupID
    }
    
    var NudgeTitle: String {
        return _title
    }
    
    var NudgeSubtitle: String {
        return _subtitle
    }
    
    var NudgeScenario: String {
        return _scenarioStory
    }
    
    var ReactionQuestion: String {
        return _reactionQuestion
    }
    
    var ReactionAnswers: [NudgeAnswer] {
        return _reactionAnswers
    }
    
    var WrapUpSubtitle: String {
        return _wrapUpSubtitle
    }
    
    var WrapUpTakeAway: String {
        return _wrapUpTakeAway
    }
    
    var StoryImage: UIImage {
        return _image
    }
    
    var TherapyType: String {
        return _therapyType
    }
    
    var OrderNo: Int {
        return _orderNo
    }
    
    // Constructor
    init(id: Int, groupID: Int, title: String, subtitle: String, story: String, question: String, answers: [NudgeAnswer], wrapUpSubtitle: String, takeAway: String, image: String, therapy: String, order: Int) {
        self._ID = id
        self._groupID = groupID
        self._title = title
        self._subtitle = subtitle
        self._scenarioStory = story
        self._reactionQuestion = question
        self._reactionAnswers = answers
        self._wrapUpSubtitle = wrapUpSubtitle
        self._wrapUpTakeAway = takeAway
        self._image = UIImage(named: image)!
        self._therapyType = therapy
        self._orderNo = order
    }
}
