export function renderPagination(resultCount, currentPage, pageSize) {
    const container = document.getElementById("pagination");
    container.innerHTML = "";

    const windowSize = 5;
    const start = Math.max(0, currentPage - Math.floor(windowSize / 2));
    const end = start + windowSize;

    // Prev
    const prevBtn = createButton("«", () => loadWorkouts(currentPage - 1));
    prevBtn.disabled = currentPage === 0;
    container.appendChild(prevBtn);

    // Page numbers
    for (let i = start; i < end; i++) {
        const btn = createButton(i + 1, () => loadWorkouts(i));
        if (i === currentPage) btn.classList.add("active");
        container.appendChild(btn);
    }

    // Next
    const nextBtn = createButton("»", () => loadWorkouts(currentPage + 1));
    nextBtn.disabled = resultCount < pageSize;
    container.appendChild(nextBtn);
}

function createButton(text, onClick) {
    const btn = document.createElement("button");
    btn.textContent = text;
    btn.onclick = onClick;
    return btn;
}