import Nat "mo:base/Nat";


actor {

    public func multiply(n : Nat, m : Nat): async Nat {
        return  Nat.mul(n, m);
    };

    public func volume(n : Nat): async Nat {
        return Nat.pow(n, 3);
    };

    public func hours_to_minutes(n : Nat):  async Nat {
        return n * 60;
    };

    var counter = 0;

    public func set_counter(n : Nat):  async () {
        counter:= n;
    };

    public func get_counter():  async Nat {
        return counter;
    };

    public func test_divide(n: Nat, m : Nat): async Bool {
        if(Nat.rem(n,m) == 0){
            return true;
        } else {
            return false;
        };
    };

    public func is_even(n: Nat): async Bool {
        if(Nat.rem(n,2) == 0){
            return true;
        } else {
            return false;
        };
    };

}