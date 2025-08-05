//Header Files to be included here
int add(int a, int b) {
    return a + b;
}

int fact(int n) {
    if (n <= 1) {
        return 1;
    }
    return n * fact(n - 1);
}