{% from "nut/map.jinja" import nut with context %}

include:
  - nut

nut-client:
  service.running:
    - name: {{ nut.client_service }}
