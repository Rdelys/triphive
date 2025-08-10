<!-- Header Topbar -->
<div class="container-fluid bg-success px-5 d-none d-lg-block">
    <div class="row gx-0">
        <div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
            <div class="d-inline-flex align-items-center" style="height: 45px;">
                <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-twitter fw-normal"></i></a>
                <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-facebook-f fw-normal"></i></a>
                <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-linkedin-in fw-normal"></i></a>
                <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-instagram fw-normal"></i></a>
                <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle" href=""><i class="fab fa-youtube fw-normal"></i></a>
            </div>
        </div>
        <div class="col-lg-4 text-center text-lg-end">
            <div class="d-inline-flex align-items-center" style="height: 45px;">
                <!-- Bouton Enregistrer -->
                <a href="#" data-bs-toggle="modal" data-bs-target="#registerModal">
                    <small class="me-3 text-light"><i class="fa fa-user me-2"></i>Enregistrer</small>
                </a>
                <!-- Bouton Connexion -->
                <a href="#" data-bs-toggle="modal" data-bs-target="#loginModal">
                    <small class="me-3 text-light"><i class="fa fa-sign-in-alt me-2"></i>Connexion</small>
                </a>
                <!-- Dashboard visible seulement si connecté -->
                <% if (session.getAttribute("user") != null) { %>
                    <div class="dropdown">
                        <a href="#" class="dropdown-toggle text-light" data-bs-toggle="dropdown">
                            <small><i class="fa fa-home me-2"></i> Mon Tableau de bord</small>
                        </a>
                        <div class="dropdown-menu rounded">
                            <a href="#" class="dropdown-item"><i class="fas fa-user-alt me-2"></i> Mon Profil</a>
                            <a href="#" class="dropdown-item"><i class="fas fa-comment-alt me-2"></i> Messagerie</a>
                            <a href="#" class="dropdown-item"><i class="fas fa-bell me-2"></i> Notifications</a>
                            <a href="#" class="dropdown-item"><i class="fas fa-cog me-2"></i> Paramètres</a>
                            <a href="#" class="dropdown-item"><i class="fas fa-power-off me-2"></i> Déconnexion</a>
                        </div>
                    </div>
                <% } %>
            </div>
        </div>
    </div>
</div>

<!-- Styles Glassmorphism -->
<!-- Styles Glassmorphism Compact -->
<style>
    .modal-content {
        background: rgba(255, 255, 255, 0.08);
        backdrop-filter: blur(15px);
        border-radius: 18px;
        border: 1px solid rgba(255, 255, 255, 0.25);
        color: white;
        box-shadow: 0 8px 32px rgba(0,0,0,0.3);
        animation: slideUp 0.35s ease-out;
    }
    .modal-header {
        border-bottom: none;
        text-align: center;
    }
    .modal-title {
        font-weight: 600;
        font-size: 1.25rem;
        letter-spacing: 0.5px;
    }
    .form-control {
        background: rgba(255, 255, 255, 0.15);
        border: none;
        color: white;
        padding: 10px 12px;
        border-radius: 12px;
    }
    .form-control::placeholder {
        color: rgba(255, 255, 255, 0.7);
    }
    .btn-modern {
        background: linear-gradient(135deg, #ff4b2b, #ff416c);
        border: none;
        border-radius: 50px;
        color: #fff;
        padding: 10px 0;
        font-size: 1rem;
        font-weight: 500;
        transition: transform 0.2s ease;
    }
    .btn-modern:hover {
        transform: scale(1.03);
    }
    @keyframes slideUp {
        from { transform: translateY(25px); opacity: 0; }
        to { transform: translateY(0); opacity: 1; }
    }
</style>

<!-- Modal Enregistrement Compact -->
<div class="modal fade" id="registerModal" tabindex="-1" aria-labelledby="registerModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="registerModalLabel">Créer un compte</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <input type="text" class="form-control" placeholder="Nom d'utilisateur">
          </div>
          <div class="mb-3">
            <input type="email" class="form-control" placeholder="Adresse e-mail">
          </div>
          <div class="mb-3">
            <input type="password" class="form-control" placeholder="Mot de passe">
          </div>
          <button type="submit" class="btn-modern w-100">S’enregistrer</button>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Modal Connexion Compact -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="loginModalLabel">Connexion</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <input type="email" class="form-control" placeholder="Adresse e-mail">
          </div>
          <div class="mb-3">
            <input type="password" class="form-control" placeholder="Mot de passe">
          </div>
          <button type="submit" class="btn-modern w-100">Se connecter</button>
        </form>
      </div>
    </div>
  </div>
</div>
