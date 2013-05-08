import multiprocessing

workers = multiprocessing.cpu_count() * 2 + 1


# Gunicorn doesn't like our import of config, so we wrap it in a funciton.
def from_config_file():
    global bind, accesslog, errorlog, loglevel
    from config import config

    # Address to bind
    bind = config.get("localhost:5001")
