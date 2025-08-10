<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Connexion Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<style>
    /* Dégradé animé vert impérial */
    body {
        height: 100vh;
        background: linear-gradient(-45deg, #00563B, #0A7D54, #38B26C, #00563B);
        background-size: 400% 400%;
        animation: gradientBG 12s ease infinite;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: 'Segoe UI', sans-serif;
    }
    @keyframes gradientBG {
        0% {background-position: 0% 50%;}
        50% {background-position: 100% 50%;}
        100% {background-position: 0% 50%;}
    }
    /* Carte glassmorphism */
    .login-card {
        background: rgba(255, 255, 255, 0.1);
        backdrop-filter: blur(15px);
        border-radius: 20px;
        padding: 2rem;
        width: 100%;
        max-width: 380px;
        color: white;
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
        animation: fadeInUp 1s ease-out;
    }
    @keyframes fadeInUp {
        from {opacity: 0; transform: translateY(30px);}
        to {opacity: 1; transform: translateY(0);}
    }
    .login-card h3 {
        text-align: center;
        margin-bottom: 1.5rem;
        font-weight: bold;
    }
    .form-control {
        background: rgba(255, 255, 255, 0.2);
        border: none;
        color: white;
    }
    .form-control:focus {
        box-shadow: none;
        border: 2px solid #38B26C;
        background: rgba(255, 255, 255, 0.3);
    }
    .form-label {
        font-weight: bold;
    }
    .btn-custom {
        background: linear-gradient(90deg, #38B26C, #0A7D54);
        border: none;
        color: white;
        transition: 0.4s;
    }
    .btn-custom:hover {
        background: linear-gradient(90deg, #0A7D54, #38B26C);
        transform: scale(1.05);
    }
    .input-group-text {
        background: rgba(255, 255, 255, 0.2);
        border: none;
        color: white;
    }
    #errorMsg {
        text-align: center;
        font-size: 0.9rem;
    }
</style>
</head>
<body>

<div class="login-card">
    <h3><i class="bi bi-shield-lock"></i> Admin Login</h3>
    <div id="errorMsg" class="alert alert-danger py-2 d-none">Identifiants incorrects</div>

    <form id="loginForm">
        <div class="mb-3">
            <label class="form-label">Nom d'utilisateur</label>
            <div class="input-group">
                <span class="input-group-text"><i class="bi bi-person"></i></span>
                <input type="text" class="form-control" id="username" placeholder="admin" required>
            </div>
        </div>
        <div class="mb-3">
            <label class="form-label">Mot de passe</label>
            <div class="input-group">
                <span class="input-group-text"><i class="bi bi-key"></i></span>
                <input type="password" class="form-control" id="password" placeholder="********" required>
            </div>
        </div>
        <button type="submit" class="btn btn-custom w-100 mt-3">Se connecter</button>
    </form>
</div>

<script>
document.getElementById("loginForm").addEventListener("submit", function(e) {
    e.preventDefault();
    const user = document.getElementById("username").value.trim();
    const pass = document.getElementById("password").value.trim();
    
    if(user === "admin" && pass === "admin123"){
        window.location.href = "admin.jsp";
    } else {
        document.getElementById("errorMsg").classList.remove("d-none");
    }
});
</script>

</body>
</html>
