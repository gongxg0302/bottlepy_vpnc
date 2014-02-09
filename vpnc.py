from bottle import route, run, template, request
import time
import os.path
@route('/vpnc', method="GET")
def vpnvpncc():
    if os.path.isfile('/var/run/vpnc/pid'):
        label = 'label-success'
        result = 'active'
    else:
        label = 'label-important'
        result = 'inactive'
    if unicode (request.query.get ('connect', ''), "utf-8") == 'true':
        if os.path.isfile('/var/run/vpnc/pid'):
            pass
        else:
            os.popen('vpnc --dpd-idle 0 /etc/vpnc/default.conf')
        #time.sleep(2)
        label = 'label-success'
        result = 'active'
    elif unicode (request.query.get ('disconnect', ''), "utf-8") == 'true':
        if os.path.isfile('/var/run/vpnc/pid'):
            os.popen('vpnc-disconnect')
        else:
            pass
        #time.sleep(2)
        label = 'label-important'
        result = 'inactive'
    return template('/root/bottlepy_vpnc/templates/vpnc.tpl',label=label, result=result)

run(host='192.168.1.1', port=80)
