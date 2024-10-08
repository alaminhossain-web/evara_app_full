<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pusher Test</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
  
</head>
<body>
  <h1>Pusher Test</h1>
  <p>
    Try publishing an event to channel <code>my-channel</code>
    with event name <code>form-submitted</code>.
  </p>
   <!-- Hidden audio element -->
   <audio id="notificationAudio" preload="auto">
    <source src="{{ asset('audio/nice.mp3') }}" type="audio/mpeg">
    Your browser does not support the audio element.
</audio>
<button onclick="document.getElementById('notificationAudio').play()">Test Sound</button>

<!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <!-- Include Toastr JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>

<!-- Your app.js or bootstrap.js script -->
<script src="{{ asset('build/assets/app-fe3a9aed.js') }}"></script>
</body>
</html>
