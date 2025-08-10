<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin TRIPHIVE</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
<style>
    :root {
        --imperial-green: #005a4b; /* Vert impérial */
        --imperial-green-light: #007a63;
    }

    body {
        background-color: #f8f9fa;
    }

    .sidebar {
        min-height: 100vh;
        background-color: var(--imperial-green);
        color: white;
position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  width: 16.6667%; /* col-md-3 = 3/12 = 25% mais tu peux ajuster */
  padding-top: 1rem;
  overflow-y: auto;  
  }

    .sidebar .nav-link {
        color: white;
        font-weight: 500;
        border-radius: .375rem;
    }

    .sidebar .nav-link:hover,
    .sidebar .nav-link.active {
        background-color: var(--imperial-green-light);
    }

    .content {
        padding: 2rem;
    }

    form {
        background: white;
        padding: 1rem;
        border-radius: .5rem;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }

    .btn-success {
        background-color: var(--imperial-green);
        border-color: var(--imperial-green);
    }

    .btn-success:hover {
        background-color: var(--imperial-green-light);
        border-color: var(--imperial-green-light);
    }
</style>
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <nav class="col-md-3 col-lg-2 d-md-block sidebar collapse" id="sidebarMenu">
            <div class="position-sticky">
                <h4 class="text-center mb-4">Admin TRIPHIVE</h4>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="#" onclick="showSection('dashboard')">
                            <i class="bi bi-speedometer2"></i> Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="collapse" href="#destMenu" role="button" aria-expanded="false" aria-controls="destMenu">
                            <i class="bi bi-geo-alt"></i> Destination
                        </a>
                        <div class="collapse" id="destMenu">
                            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small ps-3">
                                <li><a href="#" class="nav-link" onclick="showSection('pays')">Pays</a></li>
                                <li><a href="#" class="nav-link" onclick="showSection('destination')">Destination</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" onclick="showSection('gallery')">
                            <i class="bi bi-images"></i> Gallery
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" onclick="showSection('guide')">
                            <i class="bi bi-person-badge"></i> Guide
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="collapse" href="#clientsMenu" role="button" aria-expanded="false" aria-controls="clientsMenu">
                            <i class="bi bi-people"></i> Clients
                        </a>
                        <div class="collapse" id="clientsMenu">
                            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small ps-3">
                                <li><a href="#" class="nav-link" onclick="showSection('listeClients')">Liste clients</a></li>
                                <li><a href="#" class="nav-link" onclick="showSection('resHotel')">Réservations client hôtel</a></li>
                                <li><a href="#" class="nav-link" onclick="showSection('resGuide')">Réservations guide</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" onclick="showSection('paiement')">
                            <i class="bi bi-credit-card"></i> Paiement
                        </a>
                    </li>
                    <li class="nav-item mt-3">
                        <a class="nav-link text-danger fw-bold" href="loginAdmin.jsp">
                            <i class="bi bi-box-arrow-right"></i> Déconnexion
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <!-- Contenu -->
        <main class="col-md-9 ms-sm-auto col-lg-10 content">
            <!-- SECTION TABLEAU DE BORD -->
<div id="dashboard" class="section">
    <h2>Tableau de Bord</h2>

    <!-- Stat Cards -->
    <div class="row g-4 mb-4">
        <div class="col-md-2">
            <div class="card text-center shadow-sm border-success">
                <div class="card-body">
                    <h5 class="card-title text-success">Pays</h5>
                    <h3>15</h3>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="card text-center shadow-sm border-primary">
                <div class="card-body">
                    <h5 class="card-title text-primary">Destinations</h5>
                    <h3>45</h3>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="card text-center shadow-sm border-warning">
                <div class="card-body">
                    <h5 class="card-title text-warning">Réservations Hôtel</h5>
                    <h3>120</h3>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="card text-center shadow-sm border-danger">
                <div class="card-body">
                    <h5 class="card-title text-danger">Réservations Guide</h5>
                    <h3>80</h3>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="card text-center shadow-sm border-info">
                <div class="card-body">
                    <h5 class="card-title text-info">Guides</h5>
                    <h3>25</h3>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="card text-center shadow-sm border-dark">
                <div class="card-body">
                    <h5 class="card-title text-dark">Clients</h5>
                    <h3>300</h3>
                </div>
            </div>
        </div>
    </div>

    <!-- Graphiques -->
    <div class="row g-4">
        <div class="col-md-12">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white">
                    Réservations par jour (Hôtel & Guide)
                </div>
                <div class="card-body">
                    <canvas id="reservationsChart" height="100"></canvas>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card shadow-sm">
                <div class="card-header bg-success text-white">
                    Paiements par jour
                </div>
                <div class="card-body">
                    <canvas id="paiementsChart" height="100"></canvas>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card shadow-sm">
                <div class="card-header bg-warning text-white">
                    Taux de connexion
                </div>
                <div class="card-body">
                    <canvas id="connexionsChart" height="100"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>


            <div id="pays" class="section" style="display:none;">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2>Gestion des Pays</h2>
        <!-- Bouton Modal Ajouter -->
        <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addCountryModal">
            <i class="bi bi-plus-circle"></i> Ajouter un pays
        </button>
    </div>

    <!-- Tableau des pays -->
    <div class="table-responsive">
        <table class="table table-striped table-bordered align-middle">
            <thead class="table-success">
                <tr>
                    <th>Nom du pays</th>
                    <th>Description</th>
                    <th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>France</td>
                    <td>Pays de l'Europe de l'Ouest célèbre pour sa gastronomie et sa culture.</td>
                    <td class="text-center">
                        <button class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#editCountryModal">
                            <i class="bi bi-pencil-square"></i>
                        </button>
                        <button class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteCountryModal">
                            <i class="bi bi-trash"></i>
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>Italie</td>
                    <td>Pays d'Europe du Sud connu pour ses monuments historiques et sa cuisine.</td>
                    <td class="text-center">
                        <button class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#editCountryModal">
                            <i class="bi bi-pencil-square"></i>
                        </button>
                        <button class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteCountryModal">
                            <i class="bi bi-trash"></i>
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<!-- Modal Ajouter Pays -->
<div class="modal fade" id="addCountryModal" tabindex="-1" aria-labelledby="addCountryModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-success text-white">
        <h5 class="modal-title" id="addCountryModalLabel">Ajouter un pays</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <label class="form-label">Nom du pays</label>
            <input type="text" class="form-control" placeholder="Ex: Espagne">
          </div>
          <div class="mb-3">
            <label class="form-label">Description</label>
            <textarea class="form-control" rows="3" placeholder="Entrez une description..."></textarea>
          </div>
          <div class="text-end">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
            <button type="submit" class="btn btn-success">Enregistrer</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Modal Modifier Pays -->
<div class="modal fade" id="editCountryModal" tabindex="-1" aria-labelledby="editCountryModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-warning text-dark">
        <h5 class="modal-title" id="editCountryModalLabel">Modifier un pays</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <label class="form-label">Nom du pays</label>
            <input type="text" class="form-control" value="France">
          </div>
          <div class="mb-3">
            <label class="form-label">Description</label>
            <textarea class="form-control" rows="3">Pays de l'Europe de l'Ouest célèbre pour sa gastronomie et sa culture.</textarea>
          </div>
          <div class="text-end">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
            <button type="submit" class="btn btn-warning text-white">Modifier</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Modal Supprimer Pays -->
<div class="modal fade" id="deleteCountryModal" tabindex="-1" aria-labelledby="deleteCountryModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-danger text-white">
        <h5 class="modal-title" id="deleteCountryModalLabel">Confirmer la suppression</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body">
        Voulez-vous vraiment supprimer ce pays ?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
        <button type="button" class="btn btn-danger">Supprimer</button>
      </div>
    </div>
  </div>
</div>

    <!-- Modal Ajouter Pays -->
    <div class="modal fade" id="addCountryModal" tabindex="-1" aria-labelledby="addCountryModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header bg-success text-white">
            <h5 class="modal-title" id="addCountryModalLabel">Ajouter un pays</h5>
            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Fermer"></button>
        </div>
        <div class="modal-body">
            <form>
            <div class="mb-3">
                <label class="form-label">Nom du pays</label>
                <input type="text" class="form-control" placeholder="Ex: Espagne">
            </div>
            <div class="mb-3">
                <label class="form-label">Description</label>
                <textarea class="form-control" rows="3" placeholder="Entrez une description..."></textarea>
            </div>
            <div class="text-end">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
                <button type="submit" class="btn btn-success">Enregistrer</button>
            </div>
            </form>
        </div>
        </div>
    </div>
    </div>


          <div id="destination" class="section" style="display:none;">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2>Gestion des Destinations</h2>
        <!-- Bouton Modal Ajouter -->
        <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addDestinationModal">
            <i class="bi bi-plus-circle"></i> Ajouter une destination
        </button>
    </div>

    <!-- Tableau des destinations -->
    <div class="table-responsive">
        <table class="table table-striped table-bordered align-middle">
            <thead class="table-success">
                <tr>
                    <th>Pays</th>
                    <th>Ville</th>
                    <th>Description</th>
                    <th>Jours</th>
                    <th>Prix (€)</th>
                    <th>Personnes</th>
                    <th>Catégorie</th>
                    <th>Promotion</th>
                    <th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>France</td>
                    <td>Paris</td>
                    <td>Visite de la capitale avec ses monuments iconiques.</td>
                    <td>5</td>
                    <td>800</td>
                    <td>2</td>
                    <td>Excursion urbaine</td>
                    <td>-15%</td>
                    <td class="text-center">
                        <button class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#editDestinationModal">
                            <i class="bi bi-pencil-square"></i>
                        </button>
                        <button class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteDestinationModal">
                            <i class="bi bi-trash"></i>
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>Italie</td>
                    <td>Rome</td>
                    <td>Découverte de la ville éternelle et de son histoire.</td>
                    <td>7</td>
                    <td>950</td>
                    <td>4</td>
                    <td>Voyage culturel</td>
                    <td>-50%</td>
                    <td class="text-center">
                        <button class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#editDestinationModal">
                            <i class="bi bi-pencil-square"></i>
                        </button>
                        <button class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteDestinationModal">
                            <i class="bi bi-trash"></i>
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<!-- Modal Ajouter Destination -->
<div class="modal fade" id="addDestinationModal" tabindex="-1" aria-labelledby="addDestinationModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header bg-success text-white">
        <h5 class="modal-title" id="addDestinationModalLabel">Ajouter une destination</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label">Pays</label>
              <select class="form-select">
                <option>France</option>
                <option>Italie</option>
                <option>Espagne</option>
              </select>
            </div>
            <div class="col-md-6">
              <label class="form-label">Ville</label>
              <input type="text" class="form-control" placeholder="Ex: Marseille">
            </div>
            <div class="col-12">
              <label class="form-label">Description</label>
              <textarea class="form-control" rows="3" placeholder="Entrez une description..."></textarea>
            </div>
            <div class="col-md-3">
              <label class="form-label">Nombre de jours</label>
              <input type="number" class="form-control" min="1">
            </div>
            <div class="col-md-3">
              <label class="form-label">Prix (€)</label>
              <input type="number" class="form-control" min="0">
            </div>
            <div class="col-md-3">
              <label class="form-label">Nombre de personnes</label>
              <input type="number" class="form-control" min="1">
            </div>
            <div class="col-md-6">
            <label class="form-label">Catégorie</label>
            <select class="form-select">
                <option>Week-end</option>
                <option>Vacances</option>
                <option>Road trip</option>
                <option>Voyage historique</option>
                <option>Voyage en famille</option>
                <option>Voyage à la plage</option>
            </select>
            </div>

            <div class="col-md-3">
              <label class="form-label">Promotion</label>
              <input type="text" class="form-control" placeholder="Ex: -15%">
            </div>
          </div>
          <div class="text-end mt-3">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
            <button type="submit" class="btn btn-success">Enregistrer</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Modal Modifier Destination -->
<div class="modal fade" id="editDestinationModal" tabindex="-1" aria-labelledby="editDestinationModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header bg-warning text-dark">
        <h5 class="modal-title" id="editDestinationModalLabel">Modifier une destination</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label">Pays</label>
              <select class="form-select">
                <option selected>France</option>
                <option>Italie</option>
                <option>Espagne</option>
              </select>
            </div>
            <div class="col-md-6">
              <label class="form-label">Ville</label>
              <input type="text" class="form-control" value="Paris">
            </div>
            <div class="col-12">
              <label class="form-label">Description</label>
              <textarea class="form-control" rows="3">Visite de la capitale avec ses monuments iconiques.</textarea>
            </div>
            <div class="col-md-3">
              <label class="form-label">Nombre de jours</label>
              <input type="number" class="form-control" value="5">
            </div>
            <div class="col-md-3">
              <label class="form-label">Prix (€)</label>
              <input type="number" class="form-control" value="800">
            </div>
            <div class="col-md-3">
              <label class="form-label">Nombre de personnes</label>
              <input type="number" class="form-control" value="2">
            </div>
            <div class="col-md-6">
            <label class="form-label">Catégorie</label>
            <select class="form-select">
                <option>Week-end</option>
                <option>Vacances</option>
                <option>Road trip</option>
                <option>Voyage historique</option>
                <option>Voyage en famille</option>
                <option>Voyage à la plage</option>
            </select>
            </div>
            <div class="col-md-3">
              <label class="form-label">Promotion</label>
              <input type="text" class="form-control" value="-15%">
            </div>
          </div>
          <div class="text-end mt-3">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
            <button type="submit" class="btn btn-warning text-white">Modifier</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Modal Supprimer Destination -->
<div class="modal fade" id="deleteDestinationModal" tabindex="-1" aria-labelledby="deleteDestinationModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-danger text-white">
        <h5 class="modal-title" id="deleteDestinationModalLabel">Confirmer la suppression</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body">
        Voulez-vous vraiment supprimer cette destination ?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
        <button type="button" class="btn btn-danger">Supprimer</button>
      </div>
    </div>
  </div>
</div>
<div id="gallery" class="section" style="display:none;">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2>Gestion de la Gallery</h2>
        <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addPhotoModal">
            <i class="bi bi-plus-circle"></i> Ajouter une photo
        </button>
    </div>

    <!-- Filtre par catégorie -->
    <div class="mb-3">
        <label class="form-label">Filtrer par catégorie :</label>
        <select id="filterCategory" class="form-select w-auto d-inline-block">
            <option value="">Toutes</option>
            <option>Tour du monde</option>
            <option>Tour Océanique</option>
            <option>Tour d'été</option>
            <option>Tour sportif</option>
        </select>
    </div>

    <!-- Tableau des photos -->
    <div class="table-responsive">
        <table class="table table-striped table-bordered align-middle" id="photoTable">
            <thead class="table-success">
                <tr>
                    <th>Nom</th>
                    <th>Catégorie</th>
                    <th>Photo</th>
                    <th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr data-category="Tour du monde">
                    <td>Photo Eiffel</td>
                    <td>Tour du monde</td>
                    <td><img src="https://via.placeholder.com/80" class="img-thumbnail"></td>
                    <td class="text-center">
                        <button class="btn btn-danger btn-sm">
                            <i class="bi bi-trash"></i>
                        </button>
                    </td>
                </tr>
                <tr data-category="Tour Océanique">
                    <td>Plage Bora Bora</td>
                    <td>Tour Océanique</td>
                    <td><img src="https://via.placeholder.com/80" class="img-thumbnail"></td>
                    <td class="text-center">
                        <button class="btn btn-danger btn-sm">
                            <i class="bi bi-trash"></i>
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<!-- MODAL AJOUTER PHOTO -->
<div class="modal fade" id="addPhotoModal" tabindex="-1" aria-labelledby="addPhotoModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header bg-success text-white">
        <h5 class="modal-title" id="addPhotoModalLabel">Ajouter des photos</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body">
        <form id="photoForm">
            <div id="photoInputs">
                <div class="row g-3 align-items-end photo-entry mb-3">
                    <div class="col-md-4">
                        <label class="form-label">Nom de la photo</label>
                        <input type="text" class="form-control" placeholder="Ex: Tour Eiffel">
                    </div>
                    <div class="col-md-3">
                        <label class="form-label">Catégorie</label>
                        <select class="form-select">
                            <option>Tour du monde</option>
                            <option>Tour Océanique</option>
                            <option>Tour d'été</option>
                            <option>Tour sportif</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label class="form-label">Fichier</label>
                        <input type="file" class="form-control">
                    </div>
                    <div class="col-md-2 text-center">
                        <button type="button" class="btn btn-success btn-sm add-entry"><i class="bi bi-plus-circle"></i></button>
                        <button type="button" class="btn btn-danger btn-sm remove-entry"><i class="bi bi-dash-circle"></i></button>
                    </div>
                </div>
            </div>
            <div class="text-end">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
                <button type="submit" class="btn btn-success">Enregistrer</button>
            </div>
        </form>
      </div>
    </div>
  </div>
</div>
<div id="guide" class="section" style="display:none;">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2>Gestion des Guides</h2>
        <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addGuideModal">
            <i class="bi bi-plus-circle"></i> Ajouter un guide
        </button>
    </div>

    <!-- Tableau des guides -->
    <div class="table-responsive">
        <table class="table table-striped table-bordered align-middle">
            <thead class="table-success">
                <tr>
                    <th>Nom</th>
                    <th>Pays</th>
                    <th>Ville</th>
                    <th>Téléphone</th>
                    <th>Email</th>
                    <th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Jean Dupont</td>
                    <td>France</td>
                    <td>Paris</td>
                    <td>+33 6 12 34 56 78</td>
                    <td>jean.dupont@example.com</td>
                    <td class="text-center">
                        <button class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#editGuideModal">
                            <i class="bi bi-pencil-square"></i>
                        </button>
                        <button class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteGuideModal">
                            <i class="bi bi-trash"></i>
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>Maria Rossi</td>
                    <td>Italie</td>
                    <td>Rome</td>
                    <td>+39 345 678 9012</td>
                    <td>maria.rossi@example.com</td>
                    <td class="text-center">
                        <button class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#editGuideModal">
                            <i class="bi bi-pencil-square"></i>
                        </button>
                        <button class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteGuideModal">
                            <i class="bi bi-trash"></i>
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<!-- MODAL AJOUTER GUIDE -->
<div class="modal fade" id="addGuideModal" tabindex="-1" aria-labelledby="addGuideModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-success text-white">
        <h5 class="modal-title" id="addGuideModalLabel">Ajouter un guide</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <label class="form-label">Nom</label>
            <input type="text" class="form-control" placeholder="Nom complet">
          </div>
          <div class="mb-3">
            <label class="form-label">Pays</label>
            <input type="text" class="form-control" placeholder="Ex: France">
          </div>
          <div class="mb-3">
            <label class="form-label">Ville</label>
            <input type="text" class="form-control" placeholder="Ex: Paris">
          </div>
          <div class="mb-3">
            <label class="form-label">Téléphone</label>
            <input type="tel" class="form-control" placeholder="Ex: +33 6 12 34 56 78">
          </div>
          <div class="mb-3">
            <label class="form-label">Email</label>
            <input type="email" class="form-control" placeholder="Ex: guide@example.com">
          </div>
          <div class="text-end">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
            <button type="submit" class="btn btn-success">Enregistrer</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- MODAL MODIFIER GUIDE -->
<div class="modal fade" id="editGuideModal" tabindex="-1" aria-labelledby="editGuideModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-warning text-dark">
        <h5 class="modal-title" id="editGuideModalLabel">Modifier un guide</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <label class="form-label">Nom</label>
            <input type="text" class="form-control" value="Jean Dupont">
          </div>
          <div class="mb-3">
            <label class="form-label">Pays</label>
            <input type="text" class="form-control" value="France">
          </div>
          <div class="mb-3">
            <label class="form-label">Ville</label>
            <input type="text" class="form-control" value="Paris">
          </div>
          <div class="mb-3">
            <label class="form-label">Téléphone</label>
            <input type="tel" class="form-control" value="+33 6 12 34 56 78">
          </div>
          <div class="mb-3">
            <label class="form-label">Email</label>
            <input type="email" class="form-control" value="jean.dupont@example.com">
          </div>
          <div class="text-end">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
            <button type="submit" class="btn btn-warning text-white">Modifier</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- MODAL SUPPRIMER GUIDE -->
<div class="modal fade" id="deleteGuideModal" tabindex="-1" aria-labelledby="deleteGuideModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-danger text-white">
        <h5 class="modal-title" id="deleteGuideModalLabel">Confirmer la suppression</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body">
        Voulez-vous vraiment supprimer ce guide ?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
        <button type="button" class="btn btn-danger">Supprimer</button>
      </div>
    </div>
  </div>
</div>

<div id="listeClients" class="section" style="display:none;">
    <h2>Liste des Clients</h2>
    <div class="table-responsive">
        <table class="table table-striped table-bordered align-middle">
            <thead class="table-success">
                <tr>
                    <th>Nom</th>
                    <th>Prénoms</th>
                    <th>Adresse</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Dupont</td>
                    <td>Jean</td>
                    <td>12 Rue de Paris, France</td>
                    <td>jean.dupont@example.com</td>
                </tr>
                <tr>
                    <td>Rossi</td>
                    <td>Maria</td>
                    <td>Via Roma 45, Italie</td>
                    <td>maria.rossi@example.com</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<!-- SECTION RESERVATIONS HOTEL -->
<div id="resHotel" class="section" style="display:none;">
    <h2>Réservations Client Hôtel</h2>
    <div class="table-responsive">
        <table class="table table-striped table-bordered align-middle">
            <thead class="table-success">
                <tr>
                    <th>Nom Client</th>
                    <th>Nom Hôtel</th>
                    <th>Pays</th>
                    <th>Ville</th>
                    <th>Date de réservation</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Jean Dupont</td>
                    <td>Hôtel de Paris</td>
                    <td>France</td>
                    <td>Paris</td>
                    <td>2025-08-10</td>
                </tr>
                <tr>
                    <td>Maria Rossi</td>
                    <td>Grand Hotel Rome</td>
                    <td>Italie</td>
                    <td>Rome</td>
                    <td>2025-08-12</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<!-- SECTION RESERVATIONS GUIDE -->
<div id="resGuide" class="section" style="display:none;">
    <h2>Réservations Guide</h2>
    <div class="table-responsive">
        <table class="table table-striped table-bordered align-middle">
            <thead class="table-success">
                <tr>
                    <th>Nom Client</th>
                    <th>Pays</th>
                    <th>Ville</th>
                    <th>Nom Guide</th>
                    <th>Date de réservation</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Jean Dupont</td>
                    <td>France</td>
                    <td>Paris</td>
                    <td>Paul Martin</td>
                    <td>2025-08-15</td>
                </tr>
                <tr>
                    <td>Maria Rossi</td>
                    <td>Italie</td>
                    <td>Rome</td>
                    <td>Luca Bianchi</td>
                    <td>2025-08-18</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<div id="paiement" class="section" style="display:none;">
    <h2>Historique des Paiements</h2>
    <div class="table-responsive">
        <table class="table table-striped table-bordered align-middle">
            <thead class="table-success">
                <tr>
                    <th>Prix (€)</th>
                    <th>Date de paiement</th>
                    <th>Nom du client</th>
                    <th class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>800</td>
                    <td>2025-08-05</td>
                    <td>Jean Dupont</td>
                    <td class="text-center">
                        <button class="btn btn-info btn-sm" data-bs-toggle="modal" data-bs-target="#factureModal">
                            <i class="bi bi-receipt"></i> Voir facture
                        </button>
                    </td>
                </tr>
                <tr>
                    <td>950</td>
                    <td>2025-08-07</td>
                    <td>Maria Rossi</td>
                    <td class="text-center">
                        <button class="btn btn-info btn-sm" data-bs-toggle="modal" data-bs-target="#factureModal">
                            <i class="bi bi-receipt"></i> Voir facture
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<!-- MODAL FACTURE -->
<div class="modal fade" id="factureModal" tabindex="-1" aria-labelledby="factureModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title" id="factureModalLabel">Facture</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Fermer"></button>
      </div>
      <div class="modal-body" id="factureContent">
        <div class="p-4">
            <h4 class="text-center">TRIPHIVE - FACTURE</h4>
            <hr>
            <p><strong>Nom du client :</strong> Jean Dupont</p>
            <p><strong>Date de paiement :</strong> 2025-08-05</p>
            <p><strong>Montant :</strong> 800 €</p>
            <hr>
            <p><strong>Détails :</strong></p>
            <ul>
                <li>Destination : Paris, France</li>
                <li>Nombre de jours : 5</li>
                <li>Catégorie : Excursion urbaine</li>
            </ul>
            <p class="mt-4">Merci pour votre confiance.</p>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
        <button type="button" class="btn btn-primary" onclick="imprimerFacture()">
            <i class="bi bi-printer"></i> Imprimer la facture
        </button>
      </div>
    </div>
  </div>
</div>


        </main>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    function showSection(id) {
        document.querySelectorAll('.section').forEach(sec => sec.style.display = 'none');
        document.getElementById(id).style.display = 'block';
        document.querySelectorAll('.nav-link').forEach(link => link.classList.remove('active'));
        document.querySelectorAll(`.nav-link[onclick="showSection('${id}')"]`).forEach(link => link.classList.add('active'));
    }

    // Affiche Dashboard par défaut
    showSection('dashboard');

     // Filtrage par catégorie
    document.getElementById('filterCategory').addEventListener('change', function(){
        const category = this.value;
        document.querySelectorAll('#photoTable tbody tr').forEach(row => {
            if (!category || row.dataset.category === category) {
                row.style.display = '';
            } else {
                row.style.display = 'none';
            }
        });
    });

    // Ajout/Suppression dynamique des champs
    document.getElementById('photoInputs').addEventListener('click', function(e){
        if (e.target.closest('.add-entry')) {
            const entry = e.target.closest('.photo-entry');
            const clone = entry.cloneNode(true);
            clone.querySelectorAll('input').forEach(input => input.value = '');
            document.getElementById('photoInputs').appendChild(clone);
        }
        if (e.target.closest('.remove-entry')) {
            const entries = document.querySelectorAll('.photo-entry');
            if (entries.length > 1) {
                e.target.closest('.photo-entry').remove();
            }
        }
    });

function imprimerFacture(){
    let factureContent = document.getElementById('factureContent').innerHTML;
    let originalContent = document.body.innerHTML;
    document.body.innerHTML = factureContent;
    window.print();
    document.body.innerHTML = originalContent;
    location.reload();
}

new Chart(document.getElementById('reservationsChart'), {
    type: 'line',
    data: {
        labels: ['1 Août', '2 Août', '3 Août', '4 Août', '5 Août', '6 Août', '7 Août'],
        datasets: [
            {
                label: 'Hôtel',
                data: [12, 19, 3, 5, 2, 3, 10],
                borderColor: 'blue',
                fill: false
            },
            {
                label: 'Guide',
                data: [5, 10, 8, 3, 7, 4, 6],
                borderColor: 'orange',
                fill: false
            }
        ]
    }
});

// Paiements par jour
new Chart(document.getElementById('paiementsChart'), {
    type: 'line',
    data: {
        labels: ['1 Août', '2 Août', '3 Août', '4 Août', '5 Août', '6 Août', '7 Août'],
        datasets: [{
            label: 'Paiements (€)',
            data: [500, 700, 800, 400, 600, 900, 1000],
            borderColor: 'green',
            fill: false
        }]
    }
});

// Taux de connexion
new Chart(document.getElementById('connexionsChart'), {
    type: 'line',
    data: {
        labels: ['1 Août', '2 Août', '3 Août', '4 Août', '5 Août', '6 Août', '7 Août'],
        datasets: [{
            label: 'Taux de connexion (%)',
            data: [60, 70, 65, 80, 75, 85, 90],
            borderColor: 'red',
            fill: false
        }]
    }
});
</script>

</body>
</html>
