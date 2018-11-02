struct MyQuestionAnswerer {
    
    let dislikes: [String] = [
        "cats",
        "coconut",
        "shrimp",
        "lobster",
        "shellfish",
        
    ];
    
    let likes: [String] = [
        "chinese food",
        "bicycle",
        "stanley kubrick",
        "alfred hitchcock",
        "astronomy",
        "cartography"
    ];
    
    
    func responseTo(question: String) -> String {
        let lowercaseQuestion: String = question.lowercased();

        for dislike in dislikes {
            if lowercaseQuestion.range(of: dislike) != nil {
                return "I detest \(dislike).  You've touched a raw nerve there."
            }
        }
        
        for like in likes {
            if lowercaseQuestion.range(of: like) != nil {
                return "I like \(like)."
            }
        }

        return "I have no strong opinion.";
    }
    
}
