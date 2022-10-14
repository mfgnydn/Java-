package abstractClasses;

public class Main {

	public static void main(String[] args) {
		WomanGameCalculator womanGameCalculator = new WomanGameCalculator();
		womanGameCalculator.gameOver();
		womanGameCalculator.hesapla();
		
		GameCalculator gameCalculator = new ManGameCalculator();
		gameCalculator.gameOver();
		gameCalculator.hesapla();
	}

}
