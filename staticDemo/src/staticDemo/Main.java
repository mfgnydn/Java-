package staticDemo;

public class Main {

	public static void main(String[] args) {
		ProductManager manager = new ProductManager();
		Product product = new Product();
		product.name="";
		product.id=10;
		product.price=250;
		manager.add(product);

	}
	

}
