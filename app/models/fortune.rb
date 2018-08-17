def fortune(age)
    age = age.to_i
    if age == 28
       return "This will be your best year yet!" 
    end
    
    fortuneList = [
        "Never eat soggy waffles",
        "Give puppies a chance.",
        "Always do your stretches.",
        "Consider working in doctors' offices and always be prepared.",
        "Do you have the best way to kill enemies?",
        "Did you try to think about the ramifications of your actions?",
        "Never do something bad, unless you need to.",
        "How do I increase productivity today?",
        "When I say mean things, I don't mean them.", 
        "Never lose your temper or else you will die.",
        "Always believe in someone else, even if they're wrong."
    ]
    
    randomfortune = fortuneList.sample
    
    return randomfortune
end

def shout(word)
    return word.upcase + "!!!!!"
end
