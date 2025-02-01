const API_URL = "https://heartspace-backend.onrender.com";

function submitMood() {
    const mood = document.getElementById("moodInput").value;
    fetch(`${API_URL}/mood`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({ mood })
    })
    .then(response => response.json())
    .then(data => {
        alert("Your mood has been shared!");
    })
    .catch(error => {
        alert("Error sharing mood.");
        console.error(error);
    });
}
