<?php
session_start();
include("application/users.php");
include("application/db.php");

$result = mysqli_query($conn, "SELECT * FROM job");
?>
<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Администрация округа</title>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
	<link rel="stylesheet" href="style.css">
	<style>
		.form-group {
			margin-bottom: 1.5rem;
		}

		.ancet-container {
			display: flex;
			flex-direction: row;
			justify-content: center;
			align-items: center;
			width: 100%;
			height: calc(100dvh - 80px);
		}
	</style>
</head>

<body>
	<!-- Навигация -->
	<nav class="nav-container">
		<div class="nav-header">
			<div class="nav-logo">
				<img src="images/bg.png" alt="Логотип округа">
			</div>
			<div class="mobile-menu-toggle">
				<div class="hamburger">
					<span></span>
					<span></span>
					<span></span>
				</div>
			</div>
		</div>
		<ul class="nav-menu">
			<li class="nav-logo">
				<img src="images/bg.png" alt="Логотип округа">
			</li>
			<li class="nav-item mega-menu">
				<a href="index.php" class="nav-link">
					<i class="fas fa-home"></i> Главная
				</a>
			</li>
			<li class="nav-item mega-menu">
				<a class="nav-link just">
					<span>
						<i class="fas fa-briefcase"></i> Вакансии
					</span>
					<i class="fa fa-chevron-circle-down"></i>
				</a>
				<div class="mega-content">
					<div class="mega-column">
						<h4>Категории вакансий</h4>
						<ul>
							<li><a href="job.php"><i class="fas fa-user-tie"></i> Административные</a></li>
							<li><a href="job.php"><i class="fas fa-wrench"></i> Технические</a></li>
							<li><a href="job.php"><i class="fas fa-graduation-cap"></i> Образование</a></li>
						</ul>
					</div>
					<div class="mega-column">
						<h4>Последние вакансии</h4>
						<div class="card mini-card">
							<div class="card-icon blue">
								<i class="fas fa-bullhorn"></i>
							</div>
							<h5>Специалист по работе с населением</h5>
							<p>Оклад: 45 000 руб.</p>
						</div>
					</div>
				</div>
			</li>
			<li class="nav-item">
				<a href="services.php" class="nav-link">
					<i class="fas fa-list-alt"></i> Услуги
				</a>
			</li>
			<li class="nav-item">
				<a href="booking.php" class="nav-link">
					<i class="fas fa-calendar-check"></i> Запись
				</a>
			</li>
			<li class="nav-item">
				<a href="cont.php" class="nav-link">
					<i class="fas fa-map-marker-alt"></i> Контакты
				</a>
			</li>
		</ul>
	</nav>
	<main class="ancet-container">
		<div class="card">
			<div class="card-header">
				<h3><i class="fa fa-user"></i> Заполните анкету</h3>
			</div>
			<div class="card-body jc-sb">
				<form class="cinema-form" method="post" action="form.php">
					<?php if (isset($message)): ?>
						<div class="form-message">
							<?php echo $message; ?>
						</div>
					<?php endif; ?>
					<div class="form-group">
						<label class="film-label">
							<i class="fas fa-user-circle"></i>
							Полное ФИО
						</label>
						<input type="text" class="film-input" placeholder="Джеймс Бонд" required>
					</div>
					<div class="form-group">
						<label class="film-label">
							<i class="fas fa-calendar-check"></i>
							Возраст
						</label>
						<input type="number" class="film-input" placeholder="Сколько лет от роду" min="18" required>
					</div>
					<div class="form-group">
						<label class="film-label">
							<i class="fas fa-phone-alt"></i>
							Контактный номер
						</label>
						<input type="tel" class="film-input" placeholder="+7 (XXX) XXX-XX-XX"
							pattern="\+7\s?[0-9]{3}\s?[0-9]{3}-?[0-9]{2}-?[0-9]{2}" required>
					</div>
					<button type="submit" class="btn primary">
						<i class="fas fa-ticket-alt"></i>
						Отправить заявку
					</button>
				</form>
			</div>
		</div>
	</main>


	<!-- Лоадер -->
	<div class="loader">
		<div class="loader-spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
		<p>Загрузка данных...</p>
	</div>
	<footer style="text-align: center;">
		<p>&copy; <b>Перепубликация материалов запрещается. Права на авторство юридически защищены <em><u> 2016 — 2025
						RAYON-ZALESOVO.RU</u></em>.</b></p>
	</footer>
	<script src="script.js"></script>
</body>

</html>