<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MAha · smart shopping</title>
  <!-- Font Awesome 6 (free) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Inter', system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
    }

    body {
      background: #f4f6fa;
      color: #1e293b;
      line-height: 1.5;
    }

    /* modern header / navbar */
    .top-bar {
      background: #ffffffdd;
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.02);
      padding: 0.8rem 2rem;
      position: sticky;
      top: 0;
      z-index: 50;
      display: flex;
      align-items: center;
      justify-content: space-between;
      border-bottom: 1px solid #e9eef2;
    }

    .logo-area {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .logo-icon {
      background: #1e3c5c;
      color: white;
      width: 42px;
      height: 42px;
      border-radius: 14px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 1.8rem;
      font-weight: 600;
      box-shadow: 0 8px 14px -6px rgba(0,40,80,0.25);
    }

    .logo-text {
      font-size: 1.7rem;
      font-weight: 700;
      letter-spacing: -0.5px;
    }
    .logo-text span {
      color: #1e3c5c;
      background: linear-gradient(145deg, #1e3c5c, #2b4c7c);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .logo-text .maha-light {
      font-weight: 300;
      color: #64748b;
      -webkit-text-fill-color: #64748b;
    }

    .search-bar {
      flex: 1;
      max-width: 520px;
      margin: 0 2rem;
    }
    .search-bar form {
      display: flex;
      background: white;
      border: 1px solid #dce3eb;
      border-radius: 40px;
      padding: 0.4rem 0.4rem 0.4rem 1.5rem;
      box-shadow: 0 2px 8px rgba(0,0,0,0.02);
      transition: all 0.15s;
    }
    .search-bar form:focus-within {
      border-color: #1e3c5c;
      box-shadow: 0 4px 16px rgba(30,60,92,0.12);
    }
    .search-bar input {
      flex: 1;
      border: none;
      outline: none;
      background: transparent;
      font-size: 1rem;
      padding: 0.6rem 0;
    }
    .search-bar button {
      background: #1e3c5c;
      border: none;
      color: white;
      padding: 0.7rem 1.8rem;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      cursor: pointer;
      transition: background 0.2s;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .search-bar button:hover {
      background: #112a44;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 1.8rem;
    }
    .header-actions a {
      text-decoration: none;
      color: #2c3e50;
      font-weight: 500;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: color 0.2s;
    }
    .header-actions a:hover {
      color: #1e3c5c;
    }
    .badge-icon {
      background: #e44a4a;
      color: white;
      font-size: 0.7rem;
      font-weight: 600;
      padding: 2px 8px;
      border-radius: 30px;
      margin-left: 6px;
    }

    /* main layout */
    .container {
      max-width: 1400px;
      margin: 0 auto;
      padding: 1.8rem 2rem;
    }

    /* hero banner */
    .hero {
      background: linear-gradient(135deg, #0b1e2f 0%, #1f3b58 100%);
      border-radius: 32px;
      padding: 3rem 3.5rem;
      margin-bottom: 3rem;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      box-shadow: 0 25px 40px -16px rgba(0,32,64,0.4);
    }
    .hero-text h1 {
      font-size: 2.8rem;
      font-weight: 700;
      line-height: 1.2;
      margin-bottom: 1rem;
    }
    .hero-text p {
      font-size: 1.2rem;
      opacity: 0.85;
      margin-bottom: 2rem;
      max-width: 500px;
    }
    .hero-btn {
      background: white;
      color: #1e3c5c;
      border: none;
      padding: 0.9rem 2.4rem;
      border-radius: 40px;
      font-weight: 600;
      font-size: 1.1rem;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      box-shadow: 0 20px 30px -10px rgba(0,0,0,0.3);
      cursor: pointer;
      transition: transform 0.15s, background 0.2s;
    }
    .hero-btn:hover {
      background: #f0f4fe;
      transform: scale(1.02);
    }
    .hero-offer {
      background: rgba(255,255,255,0.08);
      backdrop-filter: blur(8px);
      border-radius: 60px;
      padding: 1.5rem 2.2rem;
      border: 1px solid rgba(255,255,255,0.15);
    }
    .hero-offer .big {
      font-size: 2.2rem;
      font-weight: 800;
      display: block;
      line-height: 1.2;
    }
    .hero-offer .small {
      font-size: 1rem;
      opacity: 0.8;
      letter-spacing: 0.3px;
    }

    /* category strip */
    .section-title {
      font-size: 1.8rem;
      font-weight: 650;
      margin-bottom: 1.5rem;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .section-title i {
      color: #1e3c5c;
      font-size: 2rem;
    }

    .category-grid {
      display: flex;
      gap: 1.5rem;
      flex-wrap: wrap;
      margin-bottom: 3rem;
    }
    .cat-item {
      background: white;
      padding: 0.8rem 2rem 0.8rem 1.5rem;
      border-radius: 60px;
      box-shadow: 0 8px 18px -10px rgba(0,0,0,0.08);
      display: flex;
      align-items: center;
      gap: 12px;
      font-weight: 550;
      font-size: 1.2rem;
      border: 1px solid #eef3f8;
      transition: all 0.15s;
      cursor: default;
    }
    .cat-item i {
      color: #1e3c5c;
      font-size: 1.5rem;
    }
    .cat-item:hover {
      border-color: #bdd3e8;
      background: #f9fcff;
      box-shadow: 0 12px 22px -14px #1e3c5c55;
    }

    /* product cards */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 2rem 1.5rem;
      margin: 2rem 0 3rem;
    }

    .product-card {
      background: white;
      border-radius: 24px;
      padding: 1.5rem 1.2rem 1.5rem;
      box-shadow: 0 15px 30px -14px rgba(30, 60, 92, 0.12);
      transition: all 0.2s ease;
      border: 1px solid rgba(0,0,0,0.02);
      display: flex;
      flex-direction: column;
      position: relative;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 28px 38px -18px #1e3c5c;
      border-color: #d7e3ef;
    }

    .product-badge {
      position: absolute;
      top: 18px;
      right: 18px;
      background: #e15555;
      color: white;
      font-size: 0.75rem;
      font-weight: 700;
      padding: 4px 12px;
      border-radius: 40px;
      letter-spacing: 0.3px;
    }

    .product-img {
      width: 100%;
      aspect-ratio: 1/1;
      background: #f1f5f9;
      border-radius: 20px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 1.4rem;
      color: #1e3c5c;
      font-size: 3.5rem;
      transition: background 0.2s;
    }
    .product-card:hover .product-img {
      background: #e6eef9;
    }

    .product-title {
      font-size: 1.25rem;
      font-weight: 650;
      margin-bottom: 0.4rem;
    }
    .product-desc {
      color: #5f6c80;
      font-size: 0.9rem;
      margin-bottom: 1rem;
      line-height: 1.4;
    }
    .product-footer {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: auto;
      border-top: 1px solid #eef3f8;
      padding-top: 1rem;
    }
    .price {
      font-size: 1.5rem;
      font-weight: 700;
      color: #1e3c5c;
    }
    .price small {
      font-size: 0.9rem;
      font-weight: 400;
      color: #7c8ba0;
    }
    .add-to-cart {
      background: #1e3c5c;
      border: none;
      color: white;
      width: 46px;
      height: 46px;
      border-radius: 50%;
      font-size: 1.4rem;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      transition: background 0.15s, transform 0.1s;
      box-shadow: 0 8px 14px -10px #0f2a40;
    }
    .add-to-cart:hover {
      background: #143049;
      transform: scale(1.05);
    }

    /* extra highlight */
    .feature-bar {
      display: flex;
      gap: 2rem;
      background: white;
      border-radius: 30px;
      padding: 2rem 2.5rem;
      margin: 3rem 0 2rem;
      justify-content: space-around;
      flex-wrap: wrap;
      border: 1px solid #e6ecf3;
    }
    .feature-item {
      display: flex;
      align-items: center;
      gap: 1rem;
      font-weight: 500;
    }
    .feature-item i {
      font-size: 2.2rem;
      color: #1e3c5c;
      opacity: 0.9;
    }

    /* footer */
    .footer {
      margin-top: 4rem;
      border-top: 1px solid #dce5ed;
      padding: 2.5rem 2rem 1rem;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      color: #3f5369;
    }
    .footer-col p {
      margin: 0.5rem 0;
      font-weight: 300;
    }
    .footer-logo {
      font-weight: 700;
      font-size: 1.8rem;
      letter-spacing: -0.5px;
      color: #1e3c5c;
    }
    .social a {
      color: #2c3e50;
      margin-right: 1.4rem;
      font-size: 1.5rem;
      transition: color 0.2s;
    }
    .social a:hover {
      color: #1e3c5c;
    }
    .copyright {
      text-align: center;
      width: 100%;
      margin-top: 2rem;
      color: #75869c;
      font-size: 0.9rem;
    }

    /* responsive touches */
    @media (max-width: 800px) {
      .top-bar { flex-wrap: wrap; gap: 1rem; }
      .search-bar { order: 3; margin: 0; max-width: 100%; min-width: 100%; }
      .hero { flex-direction: column; text-align: center; gap: 2rem; }
      .hero-offer { width: 100%; text-align: center; }
    }
  </style>
</head>
<body>
  <!-- header / navigation -->
  <header class="top-bar">
    <div class="logo-area">
      <div class="logo-icon">M</div>
      <div class="logo-text"><span>MAha</span><span class="maha-light"> shopping</span></div>
    </div>

    <div class="search-bar">
      <form>
        <input type="text" placeholder="Search for products, brands & more..." aria-label="search">
        <button type="submit"><i class="fas fa-search"></i> Search</button>
      </form>
    </div>

    <div class="header-actions">
      <a href="#"><i class="far fa-heart"></i> Wishlist <span class="badge-icon">12</span></a>
      <a href="#"><i class="far fa-user-circle"></i> Sign in</a>
      <a href="#"><i class="fas fa-shopping-bag"></i> Cart <span class="badge-icon">3</span></a>
    </div>
  </header>

  <main class="container">
    <!-- hero banner with MAha vibe -->
    <section class="hero">
      <div class="hero-text">
        <h1>MAha <span style="font-weight:300;">·</span> your smart cart</h1>
        <p>Fresh styles, electronics, daily needs — all in one place. express delivery.</p>
        <button class="hero-btn"><i class="fas fa-bolt"></i> MAha flash sale</button>
      </div>
      <div class="hero-offer">
        <span class="big">Up to 60%</span>
        <span class="small">on MAha select • today only</span>
      </div>
    </section>

    <!-- category quick picks -->
    <div class="section-title"><i class="fas fa-compass"></i> browse by category</div>
    <div class="category-grid">
      <div class="cat-item"><i class="fas fa-mobile-alt"></i> Electronics</div>
      <div class="cat-item"><i class="fas fa-tshirt"></i> Fashion</div>
      <div class="cat-item"><i class="fas fa-home"></i> Home & living</div>
      <div class="cat-item"><i class="fas fa-running"></i> Sports</div>
      <div class="cat-item"><i class="fas fa-book"></i> Books</div>
      <div class="cat-item"><i class="fas fa-drumstick-bite"></i> Grocery</div>
    </div>

    <!-- featured products (MAha picks) -->
    <div class="section-title"><i class="fas fa-star" style="color: #f4b740;"></i> MAha top picks for you</div>
    <div class="product-grid">
      <!-- card 1 -->
      <article class="product-card">
        <div class="product-badge">−35%</div>
        <div class="product-img"><i class="fas fa-headphones" style="font-size: 4rem;"></i></div>
        <h3 class="product-title">MAha Pods 2</h3>
        <p class="product-desc">Wireless noise-cancelling, 24h battery.</p>
        <div class="product-footer">
          <span class="price">$79 <small>$119</small></span>
          <button class="add-to-cart" aria-label="Add to cart"><i class="fas fa-plus"></i></button>
        </div>
      </article>
      <!-- card 2 -->
      <article class="product-card">
        <div class="product-img"><i class="fas fa-tshirt" style="font-size: 4rem;"></i></div>
        <h3 class="product-title">MAha linen shirt</h3>
        <p class="product-desc">Premium organic cotton, regular fit.</p>
        <div class="product-footer">
          <span class="price">$39 <small>$65</small></span>
          <button class="add-to-cart"><i class="fas fa-plus"></i></button>
        </div>
      </article>
      <!-- card 3 with discount badge -->
      <article class="product-card">
        <div class="product-badge">−20%</div>
        <div class="product-img"><i class="fas fa-clock"></i></div>
        <h3 class="product-title">MAha smart watch</h3>
        <p class="product-desc">Heart rate, steps, sleep tracker.</p>
        <div class="product-footer">
          <span class="price">$129 <small>$159</small></span>
          <button class="add-to-cart"><i class="fas fa-plus"></i></button>
        </div>
      </article>
      <!-- card 4 -->
      <article class="product-card">
        <div class="product-img"><i class="fas fa-laptop"></i></div>
        <h3 class="product-title">MAhaBook Air</h3>
        <p class="product-desc">13" Retina, 8GB RAM, 256GB SSD.</p>
        <div class="product-footer">
          <span class="price">$899</span>
          <button class="add-to-cart"><i class="fas fa-plus"></i></button>
        </div>
      </article>
      <!-- card 5 (extra) -->
      <article class="product-card">
        <div class="product-badge" style="background:#368F8F;">new</div>
        <div class="product-img"><i class="fas fa-dumbbell"></i></div>
        <h3 class="product-title">MAha yoga mat</h3>
        <p class="product-desc">Non-slip, eco friendly, 6mm.</p>
        <div class="product-footer">
          <span class="price">$29</span>
          <button class="add-to-cart"><i class="fas fa-plus"></i></button>
        </div>
      </article>
      <!-- card 6 -->
      <article class="product-card">
        <div class="product-img"><i class="fas fa-couch"></i></div>
        <h3 class="product-title">MAha cushion set</h3>
        <p class="product-desc">Velvet covers, pack of 2.</p>
        <div class="product-footer">
          <span class="price">$45</span>
          <button class="add-to-cart"><i class="fas fa-plus"></i></button>
        </div>
      </article>
    </div>

    <!-- value features -->
    <div class="feature-bar">
      <div class="feature-item"><i class="fas fa-truck-fast"></i> Free delivery over $49</div>
      <div class="feature-item"><i class="fas fa-rotate-left"></i> 30-day MAha return</div>
      <div class="feature-item"><i class="fas fa-shield-heart"></i> MAha assured</div>
      <div class="feature-item"><i class="far fa-credit-card"></i> Pay on delivery</div>
    </div>

    <!-- another mini row with MAha plus -->
    <div style="display: flex; gap: 1.2rem; align-items: baseline; margin-top: 2rem;">
      <h2 style="font-weight: 650; font-size: 1.6rem;"><i class="fas fa-crown" style="color: #f1c40f;"></i> MAha plus</h2>
      <span style="color: #2b4c7c; background: #e0ebf9; padding: 0.4rem 1rem; border-radius: 60px; font-weight: 500;">Members only deals</span>
    </div>
    <div class="product-grid" style="grid-template-columns: repeat(auto-fit, minmax(240px, 1fr)); margin-top: 1rem;">
      <!-- small exclusive card -->
      <article class="product-card" style="background: #fafcff;">
        <div class="product-img"><i class="fas fa-mug-hot"></i></div>
        <h3 class="product-title">MAha ceramic mug</h3>
        <p class="product-desc">exclusive for plus members</p>
        <div class="product-footer"><span class="price">$12</span><button class="add-to-cart"><i class="fas fa-plus"></i></button></div>
      </article>
      <article class="product-card" style="background: #fafcff;">
        <div class="product-img"><i class="fas fa-shoe-prints"></i></div>
        <h3 class="product-title">running shoes</h3>
        <p class="product-desc">cloud foam, plus early access</p>
        <div class="product-footer"><span class="price">$79</span><button class="add-to-cart"><i class="fas fa-plus"></i></button></div>
      </article>
    </div>
  </main>

  <!-- footer with MAha identity -->
  <footer class="footer">
    <div class="footer-col">
      <div class="footer-logo">MAha</div>
      <p><i class="fas fa-map-pin"></i>  shopping, simplified.</p>
      <p>© 2025 MAha retail pvt.</p>
    </div>
    <div class="footer-col">
      <p><strong>shop</strong></p>
      <p>new arrivals</p>
      <p>top brands</p>
      <p>gift cards</p>
    </div>
    <div class="footer-col">
      <p><strong>help</strong></p>
      <p>contact us</p>
      <p>returns</p>
      <p>track order</p>
    </div>
    <div class="footer-col social">
      <p><strong>MAha social</strong></p>
      <a href="#"><i class="fab fa-instagram"></i></a>
      <a href="#"><i class="fab fa-facebook"></i></a>
      <a href="#"><i class="fab fa-x-twitter"></i></a>
      <a href="#"><i class="fab fa-youtube"></i></a>
    </div>
    <div class="copyright">
      MAha shopping — where desire meets convenience
    </div>
  </footer>
  <!-- tiny script (for visual demo / console heart) -->
  <script>
    (function() {
      console.log("🛍️ MAha shopping index loaded — let's find your style.");
      // optional micro interaction: all add-to-cart buttons show a friendly alert (just for demo)
      const cartButtons = document.querySelectorAll('.add-to-cart');
      cartButtons.forEach(btn => {
        btn.addEventListener('click', (e) => {
          e.preventDefault();
          const card = btn.closest('.product-card');
          const title = card?.querySelector('.product-title')?.innerText || 'item';
          alert(`✨ "${title}" added to your MAha cart (demo)`);
        });
      });
    })();
  </script>
</body>
</html>
