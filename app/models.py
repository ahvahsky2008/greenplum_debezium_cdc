from sqlalchemy import BigInteger, Column, DateTime, Float, ForeignKey, Text, text
from sqlalchemy.orm import relationship
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()
metadata = Base.metadata


class Category(Base):
    __tablename__ = 'categories'

    category_id = Column(BigInteger, primary_key=True)
    category_name = Column(Text)


class Customer(Base):
    __tablename__ = 'customers'

    customer_id = Column(BigInteger, primary_key=True)
    customer_name = Column(Text)


class Manufacturer(Base):
    __tablename__ = 'manufacturers'

    manufacturer_id = Column(BigInteger, primary_key=True)
    manufacturer_name = Column(Text)


class Store(Base):
    __tablename__ = 'stores'

    store_id = Column(BigInteger, primary_key=True)
    store_name = Column(Text)


class Product(Base):
    __tablename__ = 'products'

    product_id = Column(BigInteger, primary_key=True)
    product_name = Column(Text)
    manufacturer_id = Column(ForeignKey('manufacturers.manufacturer_id'))
    category_id = Column(ForeignKey('categories.category_id'))

    category = relationship('Category')
    manufacturer = relationship('Manufacturer')


class Purchase(Base):
    __tablename__ = 'purchases'

    purchase_id = Column(BigInteger, primary_key=True, server_default=text("nextval('public_purchases_seq'::regclass)"))
    customer_id = Column(ForeignKey('customers.customer_id'))
    store_id = Column(ForeignKey('stores.store_id'))
    purchase_date = Column(DateTime, server_default=text("now()"))

    customer = relationship('Customer')
    store = relationship('Store')


class PurchaseItem(Base):
    __tablename__ = 'purchase_items'

    purchase_id = Column(ForeignKey('purchases.purchase_id'), primary_key=True, nullable=False)
    product_id = Column(ForeignKey('products.product_id'), primary_key=True, nullable=False)
    product_count = Column(BigInteger)
    product_price = Column(Float)

    product = relationship('Product')
    purchase = relationship('Purchase')