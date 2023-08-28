<section>
  <div class="text-center container">
    <h4 class="mt-4 mb-5"><strong>Best Selling</strong></h4>

    <div class="row">
      <#list featureProductList as product>
      <div class="col-lg-4 col-md-12 mb-4">
        <div class="card">
          <div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light" data-mdb-ripple-color="light">
            <#if product.mediumImageInfo??>
              <img width="90%" class="w-100" src="/store/content/productImage/${product.mediumImageInfo.productContentId}">
            <#else>
              <#if product.smallImageInfo??>
                <img width="90%" class="w-100" src="/store/content/productImage/${product.smallImageInfo.productContentId}" >
              </#if>
            </#if>
            <a href="/b2b/product/${product.productId}">
              <div class="mask">
                <div class="d-flex justify-content-start align-items-end h-100">
                  <h5><span class="badge bg-primary ms-2">New</span></h5>
                </div>
              </div>
              <div class="hover-overlay">
                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
              </div>
            </a>
          </div>
          <div class="card-body">
            <a href="" class="text-reset">
              <h5 class="card-title mb-3">${product.productName}</h5>
            </a>
            <a href="" class="text-reset">
              <p>Category</p>
            </a>
            <h6 class="mb-3">$${product.price}</h6>
          </div>
        </div>
      </div>
      </#list>
    </div>

  </div>
</section>