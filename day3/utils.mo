import Array "mo:base/Array";
import Order "mo:base/Order";
import Int "mo:base/Int";
import Buffer "mo:base/Buffer";


module {

    public func second_maximum(array : [Int]): Int {
       let sorted = Array.sort(array, Int.compare);
       sorted[sorted.size() - 1];
    };


    public func remove_even(array : [Nat]): [Nat] {
        let uneven = Array.filter(array, func (x : Nat) : Bool { x % 2 == 1 });
        return uneven; 
    };

    public func drop<T>(xs : [T], n : Nat): [T] {
        let buf = Buffer.fromArray<T>(xs);
        let newBuf = Buffer.subBuffer<T>(buf, n, buf.size());
        return Buffer.toArray<T>(newBuf);
    };

}