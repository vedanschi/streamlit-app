
# Streamlit Spiral Visualization App with Docker

![Streamlit](https://img.shields.io/badge/Streamlit-FF4B4B?style=for-the-badge&logo=Streamlit&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)

A Dockerized Streamlit application that generates and visualizes beautiful spiral patterns using Altair.

## Features

- 🌀 Interactive spiral generator with customizable points and turns
- 📊 Real-time visualization with Altair charts
- 🐳 Ready-to-run Docker configuration
- 🚀 Lightweight Python 3.9-slim base image
- 🔧 Simple development setup

## Quick Start

### With Docker (Recommended)

1. Build the Docker image:
   ```bash
   docker build -t streamlit-spiral .
   ```

2. Run the container:
   ```bash
   docker run -p 8501:8501 streamlit-spiral
   ```

3. Access the app at: [http://localhost:8501](http://localhost:8501)

### Local Development

1. Clone the repository
2. Set up virtual environment:
   ```bash
   python -m venv .venv
   # Activate:
   # Windows: .venv\Scripts\activate
   # Mac/Linux: source .venv/bin/activate
   ```

3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

4. Run the app:
   ```bash
   streamlit run hello.py
   ```

## Project Structure

```
streamlit-app/
├── Dockerfile          # Docker configuration
├── hello.py           # Main Streamlit application
├── requirements.txt   # Python dependencies
└── README.md          # This file
```

## Technical Details

### Application Code (`hello.py`)
- Generates mathematical spiral patterns
- Uses Streamlit widgets for user interaction
- Visualizes data with Altair charts
- Displays the source code with `st.echo`

### Docker Configuration
- Based on `python:3.9-slim` for small image size
- Multi-stage build for optimization
- Exposes port 8501 for Streamlit
- Automatic dependency installation

### Requirements
- streamlit==1.12.0
- altair==4.2.0
- pandas==1.4.2
- matplotlib==3.5.1

## Customization

To modify the application:
1. Edit `hello.py` to change the visualization
2. Update `requirements.txt` for new dependencies
3. Rebuild the Docker image:
   ```bash
   docker build -t streamlit-spiral .
   ```

## Troubleshooting

**Port already in use?**
```bash
# Use a different port (e.g., 8502)
docker run -p 8502:8501 streamlit-spiral
```

**Docker build fails?**
- Check internet connection
- Verify all files are in the correct directory
- Ensure Docker is running

