void main() {
  Calculator c = new Calculator();
  print("The gross total : ${c.ret_tot()}");
  print("Discount :${c.ret_dis()}");
  print("Max debt :${c.max_debt}");
}

abstract class Calculate_Total {
  int ret_tot();
}

abstract class Calculate_Discount {
  int ret_dis();
}

abstract class Debt {
  int max_debt;
}

class Calculator implements Calculate_Total, Calculate_Discount, Debt {
  int ret_tot() {
    return 1000;
  }

  int ret_dis() {
    return 50;
  }

  int max_debt = 5;
}
