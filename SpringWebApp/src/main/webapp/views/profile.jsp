<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>

    <style>
        /* General Page Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h2 {
            color: #333;
            margin: 20px 0;
        }

        /* Color Gallery */
        .gallery {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 15px;
            padding: 20px;
        }

        .gallery div {
            width: 300px;
            height: 200px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .gallery div:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <h2>Welcome, ${model_name}</h2>
    <div class="gallery">
        <!-- Dynamic Color Blocks -->
        <div style="background-color: #FF6347;"></div> <!-- Tomato -->
        <div style="background-color: #3CB371;"></div> <!-- Medium Sea Green -->
        <div style="background-color: #1E90FF;"></div> <!-- Dodger Blue -->
        <div style="background-color: #FFD700;"></div> <!-- Gold -->
        <div style="background-color: #8A2BE2;"></div> <!-- Blue Violet -->
    </div>
	<a href="logout">Logout</a>
</body>
</html>
