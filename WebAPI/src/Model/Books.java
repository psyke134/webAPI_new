package Model;

public class Books {	
	
	private int book_id;
	private int category_id;
	private String name;
	private float price;
	private int save;
	private String author;
	private String overview;
	private String image;
	private boolean flash_sale;
	private String publisher;
	private String publish_date;
	private int page_count;
	private String dimensions;
	private float shipping_weight;
	private String stock;
	private String book_format;
	private boolean is_trending;
	
	public Books(int book_id, int category_id, String name, float price, int save, String author, String overview, String image,
			boolean flash_sale, String publisher, String publish_date, int page_count, String dimensions,
			float shipping_weight, String stock, String book_format, boolean is_trending)
	{
		this.book_id = book_id;
		this.category_id = category_id;
		this.name = name;
		this.price = price;
		this.save = save;
		this.author = author;
		this.overview = overview;
		this.image = image;
		this.flash_sale = flash_sale;
		this.publisher = publisher;
		this.publish_date = publish_date;
		this.page_count = page_count;
		this.dimensions = dimensions;
		this.shipping_weight = shipping_weight;
		this.stock = stock;
		this.book_format = book_format;
		this.is_trending = is_trending;

	}
	
	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	
	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
	
	public int getSave() {
		return save;
	}

	public void setSave(int save) {
		this.save = save;
	}
	
	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}


	public String getOverview() {
		return overview;
	}

	public void setOverview(String overview) {
		this.overview = overview;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public boolean getFlat_sale() {
		return flash_sale;
	}

	public void setFlat_sale(boolean flat_sale) {
		this.flash_sale = flat_sale;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getPublish_date() {
		return publish_date;
	}

	public void setPublish_date(String publish_date) {
		this.publish_date = publish_date;
	}

	public int getPage_count() {
		return page_count;
	}

	public void setPage_count(int page_count) {
		this.page_count = page_count;
	}

	public String getDemensions() {
		return dimensions;
	}

	public void setDemensions(String dimensions) {
		this.dimensions = dimensions;
	}

	public float getShipping_weight() {
		return shipping_weight;
	}

	public void setShipping_weight(float shipping_weight) {
		this.shipping_weight = shipping_weight;
	}

	public String getStock() {
		return stock;
	}

	public void setStock(String stock) {
		this.stock = stock;
	}

	public String getBook_format() {
		return book_format;
	}

	public void setBook_format(String book_format) {
		this.book_format = book_format;
	}

	public boolean getIs_trend() {
		return is_trending;
	}

	public void setIs_trend(boolean is_trending) {
		this.is_trending = is_trending;
	}

}
