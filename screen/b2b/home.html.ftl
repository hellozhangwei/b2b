
      <!--Section: Products v.3-->
      <section class="text-center mb-4">
        <div class="row wow fadeIn">
          <#list pcmpList as pcmp>
          <#assign productPriceOut = ec.service.sync().name("mantle.product.PriceServices.get#ProductPrice").parameter("productId", pcmp.productId).call()>
          <!--todo in-map=[productId:productId, priceUomId:priceUomId, productStoreId:productStoreId, vendorPartyId:vendorPartyId, customerPartyId:customerPartyId]-->

          <!--Grid column-->
          <div class="col-lg-3 col-md-6 mb-4">
            <!--Card-->
            <div class="card">

              <!--Card image-->
              <div class="view overlay">
                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg" class="card-img-top"
                     alt="">
                <a>
                  <div class="mask rgba-white-slight"></div>
                </a>
              </div>
              <!--Card image-->

              <!--Card content-->
              <div class="card-body text-center">
                <!--Category & Title-->
                <a href="" class="grey-text">
                  <h5>Shirt</h5>
                </a>
                <h5>
                  <strong>
                    <a href="${pcmp.productId}" class="dark-grey-text text-truncate" style="display: block"> ${pcmp.productName}
                    </a>
                  </strong>
                </h5>

                <h4 class="font-weight-bold blue-text">
                  <strong>${productPriceOut.price} $</strong>
                </h4>

              </div>
              <!--Card content-->

            </div>
            <!--Card-->
          </div>
          </#list>


        </div>
        <!--Grid row-->

      </section>
      <!--Section: Products v.3-->

      <!--Pagination-->
      <nav class="d-flex justify-content-center wow fadeIn">
        <ul class="pagination pg-blue">

          <!--Arrow left-->
          <li class="page-item disabled">
            <a class="page-link" href="#" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
              <span class="sr-only">Previous</span>
            </a>
          </li>

          <li class="page-item active">
            <a class="page-link" href="#">1
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">2</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">3</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">4</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">5</a>
          </li>

          <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
              <span class="sr-only">Next</span>
            </a>
          </li>
        </ul>
      </nav>
      <!--Pagination-->

