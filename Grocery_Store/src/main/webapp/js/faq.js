/**
 * 
 */
document.querySelectorAll('.faq-question').forEach((question) => {
    question.addEventListener('click', () => {
        const faq = question.parentElement;
        faq.classList.toggle('open');

        // Close others
        document.querySelectorAll('.faq').forEach((other) => {
            if (other !== faq) {
                other.classList.remove('open');
            }
        });
    });
});
