FROM kestra/kestra:latest

USER root

RUN /usr/bin/pip install pandas openpyxl pyarrow duckdb numpy --break-system-packages -q

RUN sed -i 's/include-system-site-packages = false/include-system-site-packages = true/' /app/.venv/pyvenv.cfg