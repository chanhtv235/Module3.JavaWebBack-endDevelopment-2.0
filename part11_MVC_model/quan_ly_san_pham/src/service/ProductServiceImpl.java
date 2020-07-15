package service;

import model.Product;

import java.util.*;

public class ProductServiceImpl implements ProductService  {
    private static Map<Integer,Product> products;
  static {
      products = new HashMap<>();
      products.put(1, new Product(1,"Nokia",1000,"Hàng chính hãng"));
      products.put(2, new Product(2,"SamSung",2000,"Hàng chính hãng"));
      products.put(3, new Product(3,"Iphone",3000,"Hàng chính hãng"));
      products.put(4, new Product(4,"Blackberry",4000,"Hàng chính hãng"));
      products.put(5, new Product(5,"Honda",5000,"Hàng chính hãng"));
  }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values()) ;
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(),product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }
}
