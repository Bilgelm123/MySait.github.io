document.addEventListener('DOMContentLoaded', function () {
    // Инициализация слайдера
    class Slider {
        constructor(selector) {
            this.slider = document.querySelector(selector);
            // this.wrapper = this.slider.querySelector('.slider-wrapper');
            this.slides = Array.from(this.slider.querySelectorAll('.slide'));
            this.dotsContainer = this.slider.querySelector('.slider-dots');
            this.prevButton = this.slider.querySelector('.slider-prev');
            this.nextButton = this.slider.querySelector('.slider-next');

            this.currentIndex = 0;
            this.autoPlayInterval = null;
            this.touchStartX = 0;
            this.touchEndX = 0;

            this.init();
        }

        init() {
            this.createDots();
            this.setActiveSlide(0);
            this.startAutoPlay();
            this.addEventListeners();
        }

        createDots() {
            this.slides.forEach((_, index) => {
                const dot = document.createElement('div');
                dot.className = 'dot';
                dot.addEventListener('click', () => this.setActiveSlide(index));
                this.dotsContainer.appendChild(dot);
            });
        }

        setActiveSlide(index) {
            if (index < 0) index = this.slides.length - 1;
            if (index >= this.slides.length) index = 0;

            this.slides[this.currentIndex].classList.remove('active');
            this.dotsContainer.children[this.currentIndex].classList.remove('active');

            this.currentIndex = index;

            this.slides[this.currentIndex].classList.add('active');
            this.dotsContainer.children[this.currentIndex].classList.add('active');
            this.wrapper.style.transform = `translateX(-${this.currentIndex * 100}%)`;
        }

        startAutoPlay() {
            this.autoPlayInterval = setInterval(() => {
                this.nextSlide();
            }, 5000);
        }

        stopAutoPlay() {
            clearInterval(this.autoPlayInterval);
        }

        nextSlide() {
            this.setActiveSlide(this.currentIndex + 1);
        }

        prevSlide() {
            this.setActiveSlide(this.currentIndex - 1);
        }

        handleTouchStart(e) {
            this.touchStartX = e.changedTouches[0].screenX;
        }

        handleTouchEnd(e) {
            this.touchEndX = e.changedTouches[0].screenX;
            const diff = this.touchStartX - this.touchEndX;

            if (Math.abs(diff) > 50) {
                if (diff > 0) this.nextSlide();
                else this.prevSlide();
            }
        }

        addEventListeners() {
            this.prevButton.addEventListener('click', () => {
                this.stopAutoPlay();
                this.prevSlide();
                this.startAutoPlay();
            });

            this.nextButton.addEventListener('click', () => {
                this.stopAutoPlay();
                this.nextSlide();
                this.startAutoPlay();
            });

            this.slider.addEventListener('touchstart', (e) => this.handleTouchStart(e));
            this.slider.addEventListener('touchend', (e) => this.handleTouchEnd(e));

            this.slider.addEventListener('mouseenter', () => this.stopAutoPlay());
            this.slider.addEventListener('mouseleave', () => this.startAutoPlay());
        }
    }

    // Инициализация основного слайдера
    new Slider('.hero-slider');

    // Общие функции
    const initModals = () => {
        document.querySelectorAll('.modal-trigger').forEach(trigger => {
            trigger.addEventListener('click', () => {
                const target = document.getElementById(trigger.dataset.target);
                if (target) target.style.display = 'flex';
            });
        });

        document.querySelectorAll('.modal-close').forEach(closeBtn => {
            closeBtn.addEventListener('click', () => {
                closeBtn.closest('.modal').style.display = 'none';
            });
        });

        document.addEventListener('click', (e) => {
            if (e.target.classList.contains('modal')) {
                e.target.style.display = 'none';
            }
        });
    };
});

document.addEventListener('DOMContentLoaded', function () {
    const toggle = document.querySelector('.mobile-menu-toggle');
    const menu = document.querySelector('.nav-menu');

    toggle?.addEventListener('click', function () {
        this.classList.toggle('active');
        menu.classList.toggle('active');
        document.body.style.overflow = menu.classList.contains('active') ? 'hidden' : '';
    });

    // Закрытие при клике вне меню
    document.addEventListener('click', (e) => {
        if (!e.target.closest('.nav-menu') &&
            !e.target.closest('.mobile-menu-toggle')) {
            toggle?.classList.remove('active');
            menu?.classList.remove('active');
            document.body.style.overflow = '';
        }
    });

    // Закрытие при ресайзе
    window.addEventListener('resize', () => {
        if (window.innerWidth > 992) {
            toggle?.classList.remove('active');
            menu?.classList.remove('active');
            document.body.style.overflow = '';
        }
    });
});