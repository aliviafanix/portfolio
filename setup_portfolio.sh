#!/bin/bash

# Создаем основную структуру папок
mkdir -p portfolio/{cafe,shop,blog,weather}

# Перемещаем файлы портфолио в корневую папку portfolio
mv portfolio-index.html portfolio/index.html
mv portfolio-styles.css portfolio/portfolio-styles.css

# Перемещаем файлы кафе в подпапку cafe
mv index.html portfolio/cafe/
mv styles.css portfolio/cafe/
mv menu.html portfolio/cafe/
mv coffee.html portfolio/cafe/
mv desserts.html portfolio/cafe/
mv breakfast.html portfolio/cafe/
mv booking.html portfolio/cafe/

# Создаем файлы для магазина электроники
cat > portfolio/shop/index.html << 'EOF'
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechStore - Магазин электроники</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <nav>
            <div class="logo">TechStore</div>
            <ul class="nav-links">
                <li><a href="#smartphones">Смартфоны</a></li>
                <li><a href="#laptops">Ноутбуки</a></li>
                <li><a href="#accessories">Аксессуары</a></li>
                <li><a href="#cart" class="cart-button">Корзина <span class="cart-count">0</span></a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="hero">
            <h1>Лучшие цены на электронику</h1>
            <p>Найдите свой идеальный гаджет</p>
        </section>

        <section id="smartphones" class="products">
            <h2>Смартфоны</h2>
            <div class="products-grid">
                <!-- Карточки товаров -->
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 TechStore. Все права защищены.</p>
    </footer>
</body>
</html>
EOF

cat > portfolio/shop/styles.css << 'EOF'
:root {
    --primary-color: #2c3e50;
    --accent-color: #3498db;
    --bg-color: #f8f9fa;
    --text-color: #2c3e50;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    line-height: 1.6;
    background-color: var(--bg-color);
    color: var(--text-color);
}

header {
    background: white;
    box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    position: fixed;
    width: 100%;
    top: 0;
}

.nav-links {
    display: flex;
    list-style: none;
    gap: 2rem;
}

.hero {
    height: 60vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('https://placehold.co/1920x1080');
    color: white;
}
EOF

# Создаем файлы для блога
cat > portfolio/blog/index.html << 'EOF'
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Мой блог о веб-разработке</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <nav>
            <div class="logo">DevBlog</div>
            <ul class="nav-links">
                <li><a href="#home">Главная</a></li>
                <li><a href="#articles">Статьи</a></li>
                <li><a href="#about">Обо мне</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="featured-posts">
            <h2>Последние публикации</h2>
            <div class="posts-grid">
                <article class="post-card">
                    <img src="https://placehold.co/400x300" alt="Post 1">
                    <div class="post-content">
                        <h3>Введение в React Hooks</h3>
                        <p>Узнайте, как использовать хуки в React для создания более чистого кода...</p>
                        <div class="post-meta">
                            <span>15 марта 2024</span>
                            <span>5 мин чтения</span>
                        </div>
                    </div>
                </article>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 DevBlog. Все права защищены.</p>
    </footer>
</body>
</html>
EOF

cat > portfolio/blog/styles.css << 'EOF'
:root {
    --primary-color: #2d3436;
    --accent-color: #6c5ce7;
    --bg-color: #ffffff;
    --text-color: #2d3436;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    line-height: 1.6;
    background-color: var(--bg-color);
    color: var(--text-color);
}

.posts-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 2rem;
    padding: 2rem;
}

.post-card {
    background: white;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 5px 15px rgba(0,0,0,0.1);
    transition: transform 0.3s;
}

.post-card:hover {
    transform: translateY(-5px);
}
EOF

# Создаем файлы для погодного приложения
cat > portfolio/weather/index.html << 'EOF'
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather App</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <div class="weather-app">
            <h1>Прогноз погоды</h1>
            <div class="search">
                <input type="text" placeholder="Введите город...">
                <button>Поиск</button>
            </div>
            <div class="weather-info">
                <div class="city">Москва</div>
                <div class="temperature">20°C</div>
                <div class="description">Солнечно</div>
                <div class="details">
                    <div>Влажность: 60%</div>
                    <div>Ветер: 5 м/с</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
EOF

cat > portfolio/weather/styles.css << 'EOF'
:root {
    --primary-color: #00b894;
    --bg-color: #dfe6e9;
    --card-bg: rgba(255, 255, 255, 0.9);
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    background-color: var(--bg-color);
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.weather-app {
    background: var(--card-bg);
    padding: 2rem;
    border-radius: 20px;
    box-shadow: 0 10px 20px rgba(0,0,0,0.1);
    width: 100%;
    max-width: 400px;
}

.search {
    display: flex;
    gap: 1rem;
    margin: 2rem 0;
}

.search input {
    flex: 1;
    padding: 0.5rem;
    border: 1px solid #ddd;
    border-radius: 5px;
}

.search button {
    padding: 0.5rem 1rem;
    background: var(--primary-color);
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.weather-info {
    text-align: center;
}

.temperature {
    font-size: 3rem;
    font-weight: bold;
    margin: 1rem 0;
}
EOF

echo "Структура проекта создана успешно!"
echo "
Созданная структура:
portfolio/
├── index.html
├── portfolio-styles.css
├── cafe/
│   ├── index.html
│   ├── styles.css
│   ├── menu.html
│   ├── coffee.html
│   ├── desserts.html
│   ├── breakfast.html
│   └── booking.html
├── shop/
│   ├── index.html
│   └── styles.css
├── blog/
│   ├── index.html
│   └── styles.css
└── weather/
    ├── index.html
    └── styles.css" 