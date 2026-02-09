export function openPopup({
                              title = 'Popup',
                              content = '',
                              buttons = []
                          }) {
    const overlay = document.createElement('div');
    overlay.className = 'popup-overlay';

    const popup = document.createElement('div');
    popup.className = 'popup';

    // Header
    const header = document.createElement('div');
    header.className = 'popup-header';

    const popupTitle = document.createElement('div');
    popupTitle.className = 'popup-title';
    popupTitle.textContent = title;

    const closeBtn = document.createElement('button');
    closeBtn.className = 'popup-close';
    closeBtn.textContent = '✕';

    header.append(popupTitle, closeBtn);

    // Body
    const body = document.createElement('div');
    body.className = 'popup-body';

    if (typeof content === 'string') {
        body.textContent = content;
    } else if (content instanceof Node) {
        body.appendChild(content);
    }

    // Footer
    const footer = document.createElement('div');
    footer.className = 'popup-footer';

    // Close logic
    function close() {
        overlay.remove();
        document.removeEventListener('keydown', escHandler);
    }

    // Buttons
    buttons.forEach(({ label, onClick, className }) => {
        const btn = document.createElement('button');
        btn.className = className || 'popup-btn';
        btn.textContent = label;

        btn.onclick = () => {
            if (onClick) onClick(close, popup);
        };

        footer.appendChild(btn);
    });

    popup.append(header, body, footer);
    overlay.appendChild(popup);
    document.body.appendChild(overlay);

    function escHandler(e) {
        if (e.key === 'Escape') close();
    }

    closeBtn.onclick = close;

    overlay.onclick = e => {
        if (e.target === overlay) close();
    };

    document.addEventListener('keydown', escHandler);

    return { close, popup, body, footer };
}

