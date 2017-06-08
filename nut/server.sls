{% from "nut/map.jinja" import nut with context %}

include:
  - nut

nut-server:
  service.running:
    - name: {{ nut.server_service }}
