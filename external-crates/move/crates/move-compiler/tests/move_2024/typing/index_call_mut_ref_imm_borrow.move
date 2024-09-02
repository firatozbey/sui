module 0x42::t {

public struct X has copy, drop { i: u64 }
public struct Y has copy, drop { x: X }

#[syntax(index)]
public fun f(self: &X, _i: u64): &u64 { &self.i }

public fun foo (x: &mut X, y1: &mut Y, y2: &mut Y) {
    let i = 0;
    let _x = &x[i];
    let _y1 = &y1.x[i];
    let _z1 = &y2.x[i];
}

}
