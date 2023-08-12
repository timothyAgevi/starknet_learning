use core::traits::Into;
use core::option::OptionTrait;
use debug::PrintTrait;
use traits::TryInto;

fn main() {
    let pow_2: felt252 = calculatePower(3, 0);
    // pow_2.print();
    add_nums_in_tupple();
}

fn calculatePower(base: felt252, exponent: u32) -> felt252 {
    let mut result: felt252 = 1;
    let mut count: u32 = 0;

    if (exponent < 1) {
        return 1;
    }

    loop {
        if (count == exponent) {
            break;
        }

        result = result * base;

        count += 1;
    };

    return result;
}


fn add_nums_in_tupple() {
    let tup = (1, 2, 3, 3);

    let (a, b, c, d) = tup;
    let sum = a + b + c + d;

    let sum_256: u256 = sum.into();
    sum_256.print();

}
