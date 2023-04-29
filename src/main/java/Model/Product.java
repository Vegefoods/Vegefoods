package Model;

public class Product {
	private int product_id;
	private String name;
	private String description;
	private double price;
	private String image;
	private int cate_id;
	private boolean isWish;

	public Product() {
	}

	public Product(int product_id, String name, String description, double price, String image, int cate_id,
			boolean isWish) {
		this.product_id = product_id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.image = image;
		this.cate_id = cate_id;
		this.isWish = isWish;
	}

	public Product(String name, String description, double price, String image, int cate_id, boolean isWish) {
		this.name = name;
		this.description = description;
		this.price = price;
		this.image = image;
		this.cate_id = cate_id;
		this.isWish = isWish;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getCate_id() {
		return cate_id;
	}

	public void setCate_id(int cate_id) {
		this.cate_id = cate_id;
	}

	public boolean isWish() {
		return isWish;
	}

	public void setWish(boolean isWish) {
		this.isWish = isWish;
	}

	@Override
	public String toString() {
		return "Product [product_id=" + product_id + ", name=" + name + ", description=" + description + ", price="
				+ price + ", image=" + image + ", cate_id=" + cate_id + ", isWish=" + isWish + "]";
	}

}
