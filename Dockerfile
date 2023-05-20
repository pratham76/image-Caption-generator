FROM python:3
EXPOSE 8501
WORKDIR /imagecaption
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade pip
COPY . .
CMD ["streamlit", "run", "app.py"]
