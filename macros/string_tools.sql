{% macro hello_world(name=none) %}
    {% if name %}
        'Hello, {{ name }}! Welcome to dbt!'
    {% else %}
        'Hello, World! Welcome to dbt!'
    {% endif %}
{% endmacro %}
