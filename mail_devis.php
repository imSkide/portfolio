<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $to = "skideprods@gmail.com";

    function clean($data) {
        return htmlspecialchars(trim($data), ENT_QUOTES, 'UTF-8');
    }

    $prenom    = clean($_POST['prenom'] ?? '');
    $nom       = clean($_POST['nom'] ?? '');
    $telephone = clean($_POST['telephone'] ?? '');
    $email     = clean($_POST['email'] ?? '');
    $event     = clean($_POST['event'] ?? '');
    $date      = clean($_POST['date'] ?? '');
    $message   = clean($_POST['message'] ?? '');

    if (!$prenom || !$nom || !$email) {
        header("Location: devis.php?error=1");
        exit();
    }

    $subject = "Demande de devis - $event";

    $body  = "Nouvelle demande de devis\n\n";
    $body .= "Prénom : $prenom\n";
    $body .= "Nom : $nom\n";
    $body .= "Téléphone : $telephone\n";
    $body .= "Email : $email\n";
    $body .= "Événement : $event\n";
    $body .= "Date : $date\n\n";
    $body .= "Message :\n$message\n";

    $headers  = "From: contact@tondomaine.com\r\n";
    $headers .= "Reply-To: $email\r\n";
    $headers .= "Content-Type: text/plain; charset=UTF-8\r\n";

    if (mail($to, $subject, $body, $headers)) {
        header("Location: devis.html?success=1");
    } else {
        header("Location: devis.html?error=1");
    }
    exit();
}
header("Location: devis.html");
exit();
