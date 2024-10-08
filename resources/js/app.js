import './bootstrap';
import dayjs from 'dayjs';
import relativeTime from 'dayjs/plugin/relativeTime';

// Extend dayjs with the relativeTime plugin
dayjs.extend(relativeTime);

// Set up a flag to check if the user has interacted with the page
let canPlayNotificationSound = false;

// Ensure user interaction to enable audio playback
document.addEventListener('click', function enableAudioPlayback() {
    canPlayNotificationSound = true;
    console.log('User interaction detected. Audio playback is now enabled.');
    document.removeEventListener('click', enableAudioPlayback);
});

// Function to play notification sound
function playNotificationSound() {
    const audioElement = document.getElementById('notificationAudio');
    if (canPlayNotificationSound && audioElement) {
        audioElement.play().then(() => {
            console.log('Notification sound played successfully.');
        }).catch(error => {
            console.error('Audio playback failed:', error);
        });
    } else if (!canPlayNotificationSound) {
        console.log('User has not interacted with the document yet. Cannot play audio.');
    } else {
        console.error('Notification audio element not found.');
    }
}

// Function to update "time ago" for all notifications
function updateTimeAgo() {
    const notifications = document.querySelectorAll('.notification-item');
    notifications.forEach((notification) => {
        const createdAt = notification.getAttribute('data-created-at');
        const timeAgoElement = notification.querySelector('.notification-timestamp');
        if (createdAt) {
            timeAgoElement.textContent = dayjs(createdAt).fromNow();
        }
    });
}

// Function to add new notification to the list and play sound
function addNewNotification(order, customer) {
    const createdAt = new Date(order.created_at);

    // Display notification in the list
    $('.notifications-menu').prepend(`
        <a class="dropdown-item notification-item" href="#" data-created-at="${createdAt}">
            <div class="notification-each d-flex">
                <div class="me-3 notifyimg  bg-info brround">
                    <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" viewBox="0 0 24 24">
                        <path d="M19.5,7H16V5.9169922c0-2.2091064-1.7908325-4-4-4s-4,1.7908936-4,4V7H4.5C4.4998169,7,4.4996338,7,4.4993896,7C4.2234497,7.0001831,3.9998169,7.223999,4,7.5V19c0.0018311,1.6561279,1.3438721,2.9981689,3,3h10c1.6561279-0.0018311,2.9981689-1.3438721,3-3V7.5c0-0.0001831,0-0.0003662,0-0.0006104C19.9998169,7.2234497,19.776001,6.9998169,19.5,7z M9,5.9169922c0-1.6568604,1.3431396-3,3-3s3,1.3431396,3,3V7H9V5.9169922z M19,19c-0.0014038,1.1040039-0.8959961,1.9985962-2,2H7c-1.1040039-0.0014038-1.9985962-0.8959961-2-2V8h3v2.5C8,10.776123,8.223877,11,8.5,11S9,10.776123,9,10.5V8h6v2.5c0,0.0001831,0,0.0003662,0,0.0005493C15.0001831,10.7765503,15.223999,11.0001831,15.5,11c0.0001831,0,0.0003662,0,0.0006104,0C15.7765503,10.9998169,16.0001831,10.776001,16,10.5V8h3V19z"></path>
                    </svg>
                </div>
                <div>
                    <span class="notification-label mb-1">New Order from ${customer.name}</span>
                    <span class="notification-subtext text-muted notification-timestamp">${dayjs(createdAt).fromNow()}</span>
                </div>
            </div>
        </a>
    `);

    // Show pulse effect
    document.querySelector('.nav-link .pulse').style.display = 'block';

    // Play the notification sound
    playNotificationSound();

    // Show toastr notification
    toastr.success(`New order from ${customer.name}`, 'New Order');
}

// Listen for Laravel Echo event for new orders
window.Echo.channel('orders')
    .listen('.order.created', (event) => {
        const { order, customer } = event;

        // Add new notification and play sound
        addNewNotification(order, customer);
    });

// Add a click event listener to the notifications dropdown
document.querySelector('.notifications .nav-link').addEventListener('click', () => {
    // Hide the pulse effect when the user clicks to view notifications
    document.querySelector('.nav-link .pulse').style.display = 'none';
});

// Set an interval to update "time ago" text every 60 seconds
setInterval(updateTimeAgo, 60000);

// Initial update for "time ago" (in case there are existing notifications on page load)
updateTimeAgo();

