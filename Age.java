public class Age {
    private int age;

    public Age(int age) {
        this.age = age;
    }

    public int getAge() {
        return age;
    }

    public void increaseAge(int amount) {
        age += amount;
    }
}
