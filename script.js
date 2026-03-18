// Animations logo + texte
window.addEventListener('DOMContentLoaded', () => {
  const logo = document.querySelector('.logo');
  const texte = document.getElementById('texte');

  if (logo) {
    // Apparition du logo
    setTimeout(() => {
      logo.style.opacity = '1';
    }, 500);

    // Déplacement du logo
    setTimeout(() => {
      logo.classList.add('move-left');
    }, 3000);

    logo.addEventListener('transitionend', (e) => {
      if (e.propertyName === 'transform' && texte) {
        texte.classList.add('show');
      }
    });
  }
});

// Gestion du préloader + désactivation scroll
window.addEventListener("load", function () {
  setTimeout(function () {
    const preloader = document.getElementById("preloader");
    if (!preloader) return;

    // Ajoute du fondu
    preloader.classList.add("fade-out");

    // Quand la transition est finie → retire le preloader + réactive le scroll
    preloader.addEventListener('transitionend', () => {
      preloader.style.display = 'none';
      document.body.classList.remove('is-loading'); // réactive scroll
    }, { once: true });
  }, 1500);
});


function openPopup(id) {
  const popup = document.getElementById(id);
  if (!popup) return;
  popup.style.display = "flex";
  setTimeout(() => popup.classList.add("show"), 10); 
}




function closePopup() {
  // Ferme toutes les popups ouvertes
  document.querySelectorAll(".popup.show").forEach(popup => {
    popup.classList.remove("show");
    setTimeout(() => popup.style.display = "none", 300);
  });
}




// Apparition des projets en scroll
const projects = document.querySelectorAll('.project');

function checkProjects() {
  const trigger = window.innerHeight * 0.8;
  projects.forEach(project => {
    const top = project.getBoundingClientRect().top;
    if (top < trigger) {
      project.classList.add('visible');
    }
  });
}

// Vérifie à l'ouverture
window.addEventListener('load', checkProjects);
// Vérifie en scroll
window.addEventListener('scroll', checkProjects);
