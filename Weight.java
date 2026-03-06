public class Weight {
    private int weight;

    public Weight(int weight) {
        this.weight = weight;
    }

    public int getWeight() {
        return weight;
    }

    public void increaseWeight(int amount) {
        weight += amount;
    }

    public void decreaseWeight(int amount) {
        weight -= amount;
        if (weight < 0) {
            weight = 0;
        }
    }
}
