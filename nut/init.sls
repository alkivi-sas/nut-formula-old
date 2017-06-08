{% from "nut/map.jinja" import nut with context %}

nut:
  pkg.installed:
    - name: {{ nut.package }}
