from statistics import mode
from sqlalchemy.orm import Session
from . import models
import random
from datetime import datetime
from random import randrange, uniform


def gen_purchase(db: Session):

    customer = random.choice(db.query(models.Customer).all())
    store = random.choice(db.query(models.Store).all())

    purchase = models.Purchase(customer_id=customer.customer_id,
                               store_id=store.store_id,
                               purchase_date=datetime.now()
                               )

    db.add_all([purchase])
    db.commit()

    loop = random.randint(1, 4)
    ind = 0

    while ind < loop:
        ind += 1
        product = random.choice(db.query(models.Product).all())
        product_count = random.randint(1, 4)
        product_price = random.randint(100, 10000)

        pitem = models.PurchaseItem(purchase_id=purchase.purchase_id,
                                    product_id=product.product_id,
                                    product_count=product_count,
                                    product_price=product_price
                                    )
        db.add_all([pitem])
        db.commit()