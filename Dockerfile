FROM ansibleplaybookbundle/apb-base
# MAINTAINER {{ $MAINTAINER }}

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGV0aGVycGFkLWFwYgppbWFnZTogYW5zaWJsZXBsYXlib29rYnVu\
ZGxlL2V0aGVycGFkLWFwYgpkZXNjcmlwdGlvbjogTm90ZSB0YWtpbmcgd2ViIGFwcGxpY2F0aW9u\
CmJpbmRhYmxlOiBUcnVlCmFzeW5jOiBvcHRpb25hbAptZXRhZGF0YTogCiAgZG9jdW1lbnRhdGlv\
blVybDogaHR0cHM6Ly9naXRodWIuY29tL2V0aGVyL2V0aGVycGFkLWxpdGUvd2lraQogIGltYWdl\
VXJsOiBodHRwczovL3RyYW5zbGF0ZXdpa2kubmV0L2ltYWdlcy90aHVtYi82LzZmL0V0aGVycGFk\
X2xpdGUuc3ZnLzIwMHB4LUV0aGVycGFkX2xpdGUuc3ZnLnBuZwogIGRlcGVuZGVuY2llczogWydk\
b2NrZXIuaW8vbWFyaWFkYjpsYXRlc3QnLCAnZG9ja2VyLmlvL3R2ZWxvY2l0eS9ldGhlcnBhZC1s\
aXRlOmxhdGVzdCddCiAgZGlzcGxheU5hbWU6IEV0aGVycGFkIChBUEIpCiAgbG9uZ0Rlc2NyaXB0\
aW9uOiBBbiBhcGIgdGhhdCBkZXBsb3lzIEV0aGVycGFkIExpdGUKICBwcm92aWRlckRpc3BsYXlO\
YW1lOiAiUmVkIEhhdCwgSW5jLiIKcGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlw\
dGlvbjogQSBzaW5nbGUgZXRoZXJwYWQgYXBwbGljYXRpb24gd2l0aCBubyBEQgogICAgZnJlZTog\
dHJ1ZQogICAgbWV0YWRhdGE6CiAgICAgIGRpc3BsYXlOYW1lOiBEZWZhdWx0CiAgICAgIGxvbmdE\
ZXNjcmlwdGlvbjogVGhpcyBwbGFuIHByb3ZpZGVzIGEgc2luZ2xlIEV0aGVycGFkIGFwcGxpY2F0\
aW9uIHdpdGggbm8gZGF0YWJhc2UKICAgICAgY29zdDogJDAuMDAKICAgIHBhcmFtZXRlcnM6CiAg\
ICAgIC0gbmFtZTogbWFyaWFkYl9uYW1lCiAgICAgICAgcmVxdWlyZWQ6IHRydWUKICAgICAgICBk\
ZWZhdWx0OiBldGhlcnBhZAogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIHRpdGxlOiBNYXJp\
YURCIERhdGFiYXNlIE5hbWUKICAgICAgLSBuYW1lOiBtYXJpYWRiX3VzZXIKICAgICAgICByZXF1\
aXJlZDogdHJ1ZQogICAgICAgIGRlZmF1bHQ6IGV0aGVycGFkCiAgICAgICAgdGl0bGU6IE1hcmlh\
REIgVXNlcgogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIG1heGxlbmd0aDogNjMKICAgICAg\
LSBuYW1lOiBtYXJpYWRiX3Bhc3N3b3JkCiAgICAgICAgZGVmYXVsdDogYWRtaW4KICAgICAgICB0\
eXBlOiBzdHJpbmcKICAgICAgICBkZXNjcmlwdGlvbjogQSByYW5kb20gYWxwaGFudW1lcmljIHN0\
cmluZyBpZiBsZWZ0IGJsYW5rCiAgICAgICAgdGl0bGU6IE1hcmlhREIgUGFzc3dvcmQKICAgICAg\
LSBuYW1lOiBtYXJpYWRiX3Jvb3RfcGFzc3dvcmQKICAgICAgICBkZWZhdWx0OiBhZG1pbgogICAg\
ICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlc2NyaXB0aW9uOiByb290IHBhc3N3b3JkIGZvciBt\
YXJpYWRiCiAgICAgICAgdGl0bGU6IFJvb3QgUGFzc3dvcmQK"

ADD playbooks /opt/apb/actions
ADD roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}

USER apb
