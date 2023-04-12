# Confluent Cloud Invoices Visualization

Download Confluent Cloud invoices as CSV and visualize them based on resource type and month.

## Instructions

Clone the repository
```
$ git clone git@github.com:senadjukic/confluent-cloud-invoices-viz.git && \
cd confluent-cloud-invoices-viz
```

*Download over the Confluent Cloud UI all the bills that you want to visualize in the download folder "/invoices"* <br>
https://docs.confluent.io/cloud/current/billing/overview.html#view-and-download-invoices

Option 1: Build Container with pre-installed packages
```
docker build --tag invoices-cc .
docker run -p 8888:8888 -v $(pwd):/home/jovyan/work --rm --name invoices-cc-csv invoices-cc
```

Option 2: Just run container and install packages later
```
docker run -p 8888:8888 -v $(pwd):/home/jovyan/work --rm --name invoices-cc-csv jupyter/minimal-notebook
```

