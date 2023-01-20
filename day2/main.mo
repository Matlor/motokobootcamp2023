import Int "mo:base/Int";
import Iter "mo:base/Iter";
import Text "mo:base/Text";

import Buffer "mo:base/Buffer";
import Order "mo:base/Order";
import Nat "mo:base/Nat";


actor {



    public func average_array(array : [Int]): async Int {
        var sum: Int = 0;
        for(i in array.vals()) {
            sum += i;
        };
        return sum / array.size();
    }; 


    public func count_character(t : Text, c : Char): async Nat {
        var count = 0;
        let i:Iter.Iter<Char> = Text.toIter(t);
    
        for(x in i) {
            if(x == c) {
                count+=1;
            };
        };
    return count;
    
    };



    public func factorial(n : Int):  async Int {
        var result: Int = n;
        var currentNum:Int = n;

        while(currentNum > 1) {
            result *= currentNum - 1;
            currentNum -= 1;
        };

        return result;
    };


    public func number_of_words(t : Text): async Nat {
        let i:Iter.Iter<Text> = Text.split(t, #char(' '));
        return Iter.size(i);
    };




    public func find_duplicates(a : [Nat]): async [Nat] {
        // find duplicates of the array a and store them in a separate array
        var duplicates= Buffer.Buffer<Nat>(0);
    
        for(i in a.vals()) {
            var counter=0;
            for(j in a.vals()) {
                if(i == j) {
                    counter += 1;
                };

            };
            if(counter > 1){
                duplicates.add(i);
            }
        };
        Buffer.removeDuplicates(duplicates, func(x:Nat, y:Nat) : Order.Order { 
            if(x==y){
                return #equal; 
            } else {
                return #less;
            }
        });
        
        return Buffer.toArray(duplicates);
    }; 

    public func convert_to_binary(n : Nat): async Text{
        var binary: Text = "";
        var currentNum: Nat = n;
        var remainder: Nat = 0;
        while(currentNum > 0) {
            remainder := currentNum % 2;
            binary := Text.concat(Nat.toText(remainder), binary);
            currentNum := currentNum / 2;
        };
        return binary;
    }; 


}
