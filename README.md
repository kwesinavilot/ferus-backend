# Ferus

Ferus is an Integrated Knowledge Management System designed to streamline the creation, categorization, and retrieval of knowledge resources within an organization. The system supports CRUD operations for articles, document uploads, and AI-powered search capabilities using Azure services.

---

## Features

### Core Functionalities
1. **Knowledge Management**
   - Create, read, update, and delete (CRUD) articles.
   - Categorize articles for easy retrieval.

2. **Document Management**
   - Upload and manage documents.
   - Store files in Azure Blob Storage with metadata in the database.

3. **Search and AI Integration**
   - AI-powered search using Azure Cognitive Search.
   - Integration with Azure OpenAI for content generation.

4. **User Management**
   - Role-based access control for secure operations.

---

## Project Structure

```plaintext
ikms/
├── manage.py
├── ikms/                   # Core project folder
│   ├── settings/           # Environment-specific settings
│   │   ├── base.py
│   │   ├── dev.py
│   │   ├── prod.py
│   ├── urls.py             # Root URL configurations
│   ├── wsgi.py             # WSGI entry point
├── apps/                   # Apps for modular functionalities
│   ├── knowledge/          # Manages articles (CRUD APIs)
│   │   ├── migrations/
│   │   ├── models.py
│   │   ├── serializers.py
│   │   ├── views.py
│   │   ├── urls.py
│   │   ├── admin.py
│   │   ├── tests.py
│   ├── documents/          # Handles document uploads and management
│   │   ├── migrations/
│   │   ├── models.py
│   │   ├── serializers.py
│   │   ├── views.py
│   │   ├── urls.py
│   │   ├── admin.py
│   │   ├── tests.py
│   ├── users/              # Handles authentication and roles
│   │   ├── migrations/
│   │   ├── models.py
│   │   ├── serializers.py
│   │   ├── views.py
│   │   ├── urls.py
│   │   ├── admin.py
│   │   ├── tests.py
├── services/               # External service integrations
│   ├── azure_openai.py     # Azure OpenAI integration
│   ├── azure_search.py     # Azure Cognitive Search integration
│   ├── blob_storage.py     # Azure Blob Storage for documents
├── static/                 # Static files (CSS, JS, etc.)
├── media/                  # Media files (uploaded documents)
├── requirements.txt        # Python dependencies
├── README.md               # Project overview
```

---

## Getting Started

### Prerequisites
- Python 3.10+
- Django 4.x
- Azure account with Blob Storage, Cognitive Search, and OpenAI services enabled.

### Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/ikms.git
   cd ikms
   ```

2. **Create a Virtual Environment**:
   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install Dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

4. **Set Up Environment Variables**:
   Create a `.env` file in the project root and add the following:
   ```env
   DEBUG=True
   SECRET_KEY=your_secret_key
   ALLOWED_HOSTS=localhost,127.0.0.1
   DATABASE_URL=postgres://user:password@localhost:5432/ikms
   AZURE_BLOB_CONNECTION_STRING=your_azure_blob_connection_string
   AZURE_SEARCH_ENDPOINT=your_azure_search_endpoint
   AZURE_SEARCH_KEY=your_azure_search_key
   AZURE_OPENAI_KEY=your_openai_api_key
   ```

5. **Run Migrations**:
   ```bash
   python manage.py makemigrations
   python manage.py migrate
   ```

6. **Start the Development Server**:
   ```bash
   python manage.py runserver
   ```

---

## API Endpoints

### Articles (Knowledge Management)
| Method | Endpoint           | Description             |
|--------|--------------------|-------------------------|
| GET    | /api/articles/     | List all articles       |
| POST   | /api/articles/     | Create a new article    |
| GET    | /api/articles/{id}/| Retrieve an article     |
| PUT    | /api/articles/{id}/| Update an article       |
| DELETE | /api/articles/{id}/| Delete an article       |

### Documents (Document Management)
| Method | Endpoint                | Description                  |
|--------|-------------------------|------------------------------|
| POST   | /api/documents/upload/  | Upload a new document        |
| GET    | /api/documents/         | List all uploaded documents  |

### Users (Authentication and Roles)
| Method | Endpoint           | Description              |
|--------|--------------------|--------------------------|
| POST   | /api/auth/login/   | User login               |
| POST   | /api/auth/logout/  | User logout              |

---

## Technologies Used

- **Backend**: Django, Django REST Framework
- **Database**: PostgreSQL
- **Storage**: Azure Blob Storage
- **Search**: Azure Cognitive Search
- **AI Integration**: Azure OpenAI

---

## Contributing

1. Fork the repository.
2. Create a new branch: `git checkout -b feature-name`.
3. Commit your changes: `git commit -m 'Add some feature'`.
4. Push to the branch: `git push origin feature-name`.
5. Open a pull request.

---

## License
This project is licensed under the MIT License - see the LICENSE file for details.