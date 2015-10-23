package springapp.service;

import java.util.List;

import repository.ProductDao;
import springapp.domain.Product;

public class SimpleProductManager implements ProductManager {
	//private List<Product> products;
    private ProductDao productDao;

    public List<Product> getProducts() {
        //return products;
    	return productDao.getProductList();
    }

    public void increasePrice(int percentage) {
    	List<Product> products = productDao.getProductList();
    	if (products != null){
    		for (Product p: products){
    			p.setPrice(p.getPrice()*(100+percentage)/100);
    			productDao.saveProduct(p);
    		}
    	}
    }

    public void setProductDao(ProductDao productDao) {
        this.productDao = productDao;
    }

}