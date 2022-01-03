//
//  StoryBrain.swift
//  StoryChoice
//
//  Created by Hiroaki-Hirabayashi on 2022/01/01.
//

import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "あなたの車は、携帯電話の電波も届かない人里離れた山道でタイヤをパンクさせてしまいましまい、あなたはヒッチハイクをすることにしました。錆びたピックアップトラックがあなたの横でゴロゴロと音を立てて停まります。つばの広い帽子をかぶり、魂のない目をした男があなたのために助手席のドアを開け、「乗らないか、少年」と尋ねてきます。",
            choice1: "乗ります! ありがとう!", choice1Destination: 2,
            choice2: "殺人犯かと尋ねる", choice2Destination: 1
        ),
        Story(
            title: "彼はその質問に動じることなく、ゆっくりと頷く。",
            choice1: "冗談? 乗ります。", choice1Destination: 2,
            choice2: "やはりタイヤ交換するので大丈夫です。", choice2Destination: 3
        ),
        Story(
            title: "運転し始めると、見知らぬ男は母親との関係について話し始める。彼は刻々と怒りを募らせていく。彼はあなたにグローブボックスを開けるように言ってきた。中には血のついたナイフ、切断された2本の指、そしてB'zのカセットテープが入っている。彼はグローブボックスに手を伸ばす。",
            choice1: "B'z大好き! カセットテープを渡す", choice1Destination: 5,
            choice2: "ナイフを持って彼を刺せ", choice2Destination: 4
        ),
        Story(
            title: "道具もないのにタイヤ交換大変じゃない? 街まで送るよ",
            choice1: "確かに。。乗ります。", choice1Destination: 2,
            choice2: "悪い人かと尋ねる", choice2Destination: 1
        ),
        Story(
            title: "ガタン!と車が揺れ目が覚める。彼は怖い夢を見ていたようだ。",
            choice1: "最初に戻る", choice1Destination: 0,
            choice2: "終わる", choice2Destination: 0
        ),
        Story(
            title: "ガタン!と車が揺れ目が覚める。彼は怖い夢を見ていたようだ。",
            choice1: "最初に戻る", choice1Destination: 0,
            choice2: "終わる", choice2Destination: 0
        )
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}

