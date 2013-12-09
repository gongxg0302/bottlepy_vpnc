from bottle import route, run, template, request
import time
import os.path
@route('/vpnc', method="GET")
def vpnvpncc():
    if os.path.isfile('/Users/xiaogang/test.txt'):
        label = 'label-success'
        result = 'actvie'
    else:
        label = 'label-important'
        result = 'inactvie'
	#GET for when the LEDs are toggled or flashed
	#if request.query.get('Led1On','').strip():
    if unicode (request.query.get ('connect', ''), "utf-8") == 'true':
        if os.path.isfile('/Users/xiaogang/test.txt'):
            pass
        else:
            os.popen('touch /Users/xiaogang/test.txt')
        #time.sleep(2)
        label = 'label-success'
        result = 'active'
    elif unicode (request.query.get ('disconnect', ''), "utf-8") == 'true':
        if os.path.isfile('/Users/xiaogang/test.txt'):
            os.popen('rm /Users/xiaogang/test.txt')
        else:
            pass
        #time.sleep(2)
        label = 'label-important'
        result = 'inactive'
    return template('templates/vpnc.tpl',label=label, result=result)

run(host='localhost', port=8080)
