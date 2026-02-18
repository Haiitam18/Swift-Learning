func getWeight() -> Double?{
    print("Enter your weight:")
    guard let input = readLine(), let weight = Double(input), weight > 0 else {
        print("Invalid input")
        return nil
    }
    return weight
}

func getHeight() -> Double?{
    print("Enter your height:")
    guard let input = readLine(), let height = Double(input), height > 0 else {
        print("Invalid input")
        return nil
    }
    return height
}

func bmi(weight: Double, height : Double) -> Double {
    return weight / (height * height)
}

func main(){
    guard let weight = getWeight(), let height = getHeight() else {
        print("Could not calculate BMI due to invalid input")
        return
    }
    
    let result = bmi(weight: weight, height: height)
    print("Your BMI is \(result)")
    if result < 18.5 {
        print("You are underweight")
    } else if result < 24.9 {
        print("You are normal weight")
    } else {
        print("You are Overweight")
    }
    
}

main()

