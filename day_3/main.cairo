use debug::PrintTrait;

fn print_odd_numbers(n: u32){
    let mut counter:u32 = 1;
    loop {
        if(counter >= n){
            break;
        }
        if(counter % 2 != 0){
            counter.print();
        }
        counter += 1; 
    }
}


fn main(){
    print_odd_numbers(10);
}

