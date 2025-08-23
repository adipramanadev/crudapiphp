# Flutter CRUD with PHP API

A simple Flutter project demonstrating CRUD operations using PHP REST API backend.

## Project Structure

```
crudapiphp/
├── android/            # Android specific files
├── ios/               # iOS specific files
├── lib/               # Flutter source code
│   ├── home.dart      # Home screen UI and logic
│   ├── addpage.dart   # Add item screen
│   └── main.dart      # Entry point
├── web/               # Web specific files
├── server/            # PHP API files
│   ├── getdata.php    # Read operation
│   ├── add.php        # Create operation
│   ├── update.php     # Update operation
│   ├── delete.php     # Delete operation
│   └── conn.php       # Database connection
├── pubspec.yaml       # Flutter dependencies
└── README.md         # Project documentation
```

## Features

- ✅ Create new items with name, code, price, and stock
- 📖 Read and display items in a list
- 🔄 Update existing items
- ❌ Delete items
- 💅 Clean and responsive UI
- 🌐 Cross-platform support (Android, iOS, Web)

## Setup Instructions

### 1. Database Setup
```sql
CREATE TABLE items (
    id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100) NOT NULL,
    item_code VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);
```

### 2. PHP Backend Setup

1. Install XAMPP/WAMP server
2. Copy the `server` folder contents to:
   - XAMPP: `C:/xampp/htdocs/apiphp/`
   - WAMP: `C:/wamp64/www/apiphp/`
3. Update database credentials in `conn.php`

### 3. Flutter Setup

```bash
# Get dependencies
flutter pub get

# Run the app
flutter run
```

## API Endpoints

| Endpoint | Method | Description |
|----------|--------|-------------|
| /getdata.php | GET | Fetch all items |
| /add.php | POST | Create new item |
| /update.php | POST | Update existing item |
| /delete.php | POST | Delete an item |

## Troubleshooting

### Common Issues

1. **Connection Refused**
   - Ensure PHP server is running
   - Check correct host:
     - Android Emulator: `10.0.2.2`
     - iOS Simulator: `localhost`
     - Web: `localhost`

2. **CORS Issues (Web)**
   Add to PHP files:
   ```php
   header('Access-Control-Allow-Origin: *');
   header('Access-Control-Allow-Methods: GET, POST');
   header('Access-Control-Allow-Headers: Content-Type');
   ```

### Development Tips

- Enable PHP error reporting for debugging:
  ```php
  error_reporting(E_ALL);
  ini_set('display_errors', 1);
  ```
- Use Postman to test API endpoints
- Check Flutter DevTools for network requests

## Dependencies

- http: ^1.1.0
- flutter: sdk: flutter

## License

This project is open-sourced under the MIT license.

