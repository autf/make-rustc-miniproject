use cra::add;
mod mod01;

fn main() {
    let a = 3;
    let b = 4;

    use mod01::mul;
    let res = add(mul(a, a), mul(b, b));

    println!("{}", res);
}
