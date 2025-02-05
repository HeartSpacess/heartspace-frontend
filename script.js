const API_URL = "https://heartspace-backend.onrender.com";

async function submitMood() {
    const moodInput = document.getElementById("moodInput");
    const mood = moodInput.value.trim();

    // ✅ Prevent empty mood submissions
    if (!mood) {
        alert("Please enter a mood before submitting.");
        return;
    }

    // Disable button to prevent multiple submissions
    const submitButton = document.getElementById("submitMoodButton");
    submitButton.disabled = true;
    submitButton.innerText = "Sharing...";

    try {
        const response = await fetch(`${API_URL}/mood`, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ mood })
        });

        const data = await response.json();

        if (!response.ok) {
            throw new Error(data.message || "Failed to share mood.");
        }

        alert("✅ Your mood has been shared successfully!");
        moodInput.value = ""; // Clear input after submission

    } catch (error) {
        alert(`❌ Error: ${error.message}`);
        console.error("Mood Sharing Error:", error);

    } finally {
        submitButton.disabled = false;
        submitButton.innerText = "Share Mood";
    }
}
