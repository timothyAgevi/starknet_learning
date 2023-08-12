use debug::PrintTrait;
use array::ArrayTrait;

// #[derive()]
fn swap<T, impl TDrop:Drop<T>>(x: T, y: T)->Array<T>{

    let temp_val = y;
    let y = x;
    let x = temp_val;
    let mut arr = ArrayTrait::new();
    arr.append(x);
    arr.append(y);

    arr
}

fn main(){
    let x: felt252 = '1';
    let y: felt252 = '2';
    let res = swap(x, y);

    res.len().print();
    let x1 = *res.at(0);
    let y1 = *res.at(1);
    x1.print();
    y1.print();

}


#[test]
fn swap_test(){
    let x: felt252 = '1';
    let y: felt252 = '2';
    let res = swap(x, y);

    res.len().print();
    let x1 = *res.at(0);
    let y1 = *res.at(1);

    assert(x1 == '2', 'X1 Swap failed');
    assert(y1 == '1', 'Y1 Swap failed');
    assert(x1 == '1', 'Entire Swap failed');

}


