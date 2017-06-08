{% from "nut/map.jinja" import nut with context %}

include:
  - nut.client
  - nut.server

nut_conf:
  file.managed:
    - name: {{ nut.nut_conf }}
    - user: root
    - group: nut
    - mode: 640
    - template: jinja
    - source: salt://nut/templates/nut.conf.jinja
    - context:
      config: {{ nut.config }}
    - watch_in:
      - service: nut-server

ups_conf:
  file.managed:
    - name: {{ nut.ups_conf }}
    - user: root
    - group: nut
    - mode: 640
    - template: jinja
    - source: salt://nut/templates/ups.conf.jinja
    - context:
      config: {{ nut.config }}
    - watch_in:
      - service: nut-server

upsd_conf:
  file.managed:
    - name: {{ nut.upsd_conf }}
    - user: root
    - group: nut
    - mode: 640
    - template: jinja
    - source: salt://nut/templates/upsd.conf.jinja
    - context:
      config: {{ nut.config }}
    - watch_in:
      - service: nut-server

upsd_users:
  file.managed:
    - name: {{ nut.upsd_users }}
    - user: root
    - group: nut
    - mode: 640
    - template: jinja
    - source: salt://nut/templates/upsd.users.jinja
    - context:
      config: {{ nut.config }}
    - watch_in:
      - service: nut-server

upsmon_conf:
  file.managed:
    - name: {{ nut.upsmon_conf }}
    - user: root
    - group: nut
    - mode: 640
    - template: jinja
    - source: salt://nut/templates/upsmon.conf.jinja
    - context:
      config: {{ nut.config }}
    - watch_in:
      - service: nut-server

/var/lib/nut/upssched:
  file.directory:
    - mode: 770

upssched_conf:
  file.managed:
    - name: {{ nut.upssched_conf }}
    - user: root
    - group: nut
    - mode: 640
    - template: jinja
    - source: salt://nut/templates/upssched.conf.jinja
    - context:
      config: {{ nut.config }}
    - watch_in:
      - service: nut-server

nut_alert:
  file.managed:
    - name: {{ nut.alert }}
    - user: root
    - group: nut
    - mode: 755
    - template: jinja
    - source: salt://nut/templates/alert.sh.jinja
    - context:
      config: {{ nut.config }}
    - watch_in:
      - service: nut-server

