Bilkul Anurudh Singh! 😎 Chalo ek Samsung jaisi professional website banate hain, jisme Samsung ka logo, navbar, smartphone ki image, products aur “Buy Now” button hoga.

Hum HTML, CSS aur JavaScript ka use karenge. Ye website mobile aur computer dono par achchhi dikhegi. Ye ek learning/demo project hai, official Samsung website nahi.

## Website ka preview design

## SAMSUNG

Mobile

TV & Audio

NEW GENERATION · GALAXY AI

# Galaxy S Series

The next big thing is here.

End of Summer Sale Buy Samsung Galaxy S25 Ultra | Price & Deals | Samsung New Zealand

Buy Now

Learn More

## 1. Website ka complete code

Is code ko `index.html` naam ki file mein save karo. Ismein HTML, CSS aur JavaScript teeno included hain.

HTMLWrap linesCopy codePreview

```

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Samsung | Anurudh Singh</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: Arial, sans-serif;
    }

    body {
      background: #fff;
      color: #111;
    }

    /* Navigation Bar */
    nav {
      height: 75px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 0 7%;
      background: white;
      position: sticky;
      top: 0;
      z-index: 10;
      box-shadow: 0 2px 10px #00000010;
    }

    .logo {
      font-size: 27px;
      font-weight: 900;
      letter-spacing: 2px;
    }

    nav ul {
      display: flex;
      gap: 25px;
      list-style: none;
    }

    nav a {
      color: #111;
      text-decoration: none;
      font-weight: bold;
      font-size: 14px;
    }

    nav a:hover {
      color: #1675ef;
    }

    /* Hero Section */
    .hero {
      min-height: 570px;
      padding: 60px 8%;
      background: linear-gradient(120deg, #f3f5f8, #dce5f0);
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 30px;
    }

    .hero-text {
      max-width: 500px;
    }

    .hero-text h1 {
      font-size: clamp(38px, 5vw, 65px);
      margin: 15px 0;
      line-height: 1.08;
    }

    .hero-text p {
      color: #555;
      font-size: 18px;
      line-height: 1.7;
      margin-bottom: 25px;
    }

    .hero img {
      width: 48%;
      max-width: 500px;
      border-radius: 20px;
      object-fit: contain;
    }

    .btn {
      display: inline-block;
      background: #111;
      color: white;
      padding: 14px 28px;
      border-radius: 30px;
      border: 2px solid #111;
      text-decoration: none;
      cursor: pointer;
      font-weight: bold;
      transition: 0.3s;
    }

    .btn:hover {
      background: white;
      color: #111;
    }

    /* Products */
    .products {
      padding: 65px 7%;
      text-align: center;
    }

    .products h2 {
      font-size: 36px;
      margin-bottom: 12px;
    }

    .subtitle {
      color: #666;
      margin-bottom: 35px;
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(3, minmax(0, 1fr));
      gap: 24px;
    }

    .card {
      background: #f5f5f5;
      border-radius: 20px;
      padding: 22px;
      transition: 0.3s;
    }

    .card:hover {
      transform: translateY(-7px);
      box-shadow: 0 10px 25px #00000012;
    }

    .card img {
      width: 100%;
      height: 210px;
      object-fit: contain;
      mix-blend-mode: multiply;
    }

    .card h3 {
      font-size: 22px;
      margin: 15px 0 8px;
    }

    .card p {
      color: #666;
      margin-bottom: 18px;
    }

    .card .btn {
      padding: 10px 22px;
      font-size: 13px;
    }

    /* Footer */
    footer {
      background: #111;
      color: white;
      text-align: center;
      padding: 30px 15px;
      line-height: 2;
    }

    footer span {
      color: #8bbcff;
    }

    /* Mobile Responsive */
    @media (max-width: 750px) {
      nav {
        padding: 0 5%;
      }

      nav ul {
        gap: 10px;
      }

      nav a {
        font-size: 11px;
      }

      .logo {
        font-size: 20px;
      }

      .hero {
        flex-direction: column;
        text-align: center;
        padding: 45px 6%;
      }

      .hero img {
        width: 100%;
        max-width: 400px;
      }

      .product-grid {
        grid-template-columns: 1fr;
      }

      .products h2 {
        font-size: 30px;
      }
    }
  </style>
</head>

<body>

  <!-- Navbar -->
  <nav>
    <div class="logo">SAMSUNG</div>

    <ul>
      <li><a href="#home">Home</a></li>
      <li><a href="#products">Mobiles</a></li>
      <li><a href="#about">About</a></li>
    </ul>
  </nav>

  <!-- Hero Section -->
  <section class="hero" id="home">
    <div class="hero-text">
      <p>DISCOVER THE NEXT GENERATION</p>

      <h1>Galaxy Innovation</h1>

      <p>
        Experience amazing technology, powerful performance
        and a design made for your world.
      </p>

      <a href="#products" class="btn">Explore Products</a>
    </div>

    <img
      src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=900&q=85"
      alt="Smartphone"
    >
  </section>

  <!-- Products Section -->
  <section class="products" id="products">
    <h2>Explore Our Products</h2>

    <p class="subtitle">
      Discover technology for every part of your life.
    </p>

    <div class="product-grid">

      <div class="card">
        <img
          src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=600&q=80"
          alt="Smartphone"
        >
        <h3>Galaxy Smartphones</h3>
        <p>Powerful performance. Beautiful design.</p>
        <button class="btn" onclick="showMessage('Smartphones')">
          Explore
        </button>
      </div>

      <div class="card">
        <img
          src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=600&q=80"
          alt="Smartwatch"
        >
        <h3>Galaxy Watch</h3>
        <p>Stay connected with your world.</p>
        <button class="btn" onclick="showMessage('Galaxy Watch')">
          Explore
        </button>
      </div>

      <div class="card">
        <img
          src="https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?auto=format&fit=crop&w=600&q=80"
          alt="Television"
        >
        <h3>Samsung TV</h3>
        <p>Bring entertainment to life.</p>
        <button class="btn" onclick="showMessage('Samsung TV')">
          Explore
        </button>
      </div>

    </div>
  </section>

  <!-- Footer -->
  <footer id="about">
    <h2>SAMSUNG</h2>
    <p>Technology that inspires the world.</p>
    <p>Demo website created by <span>Anurudh Singh</span></p>
    <p>© 2026 | Personal Learning Project</p>
  </footer>

  <script>
    function showMessage(product) {
      alert(
        "Thank you for exploring " + product +
        "! This is a demo website created by Anurudh Singh."
      );
    }
  </script>

</body>
</html>
```

## 2. Website ko kaise chalayen?

1. Apne computer ya laptop par VS Code ya Notepad kholo.
2. Upar ka poora code copy karke paste karo.
3. File ko `index.html` naam se save karo.
4. File par double-click karo. Website browser mein open ho jayegi.

Internet connection hone par online images load hongi.

## 3. Is website mein kya-kya hai?

- Samsung-style navigation bar.
- Smartphone hero section.
- Mobile, smartwatch aur TV ke product cards.
- Hover animation aur working demo buttons.
- Mobile-friendly responsive design.
- Footer mein tumhara naam, Anurudh Singh.

Dhyan rahe: Ye front-end demo hai. Real product purchasing, login, payment aur admin panel ke liye alag functionality banani hogi. Samsung ka naam aur branding yahan sirf educational demo ke liye use ki gayi hai.

Anurudh, ab batao: tumhe sirf HTML website chahiye ya ek advanced Samsung website jisme login page, product details, shopping cart aur buy button bhi kaam karein?
