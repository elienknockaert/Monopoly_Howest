from flask import Flask, render_template, abort, request

app = Flask(__name__)
import DbClass
import sercom

import MySQLdb as mdb
con = mdb.connect('localhost', 'monopoly', 'elienknockaert', 'dbmonopoly')
cur = con.cursor()



@app.route('/')
def index():
    # try:
    print("test")
    return render_template('index.html')
    # except:
    #     abort(404)


@app.route('/index')
def index2():
    try:
        return render_template('index.html')
    except:
        abort(404)


@app.route('/geschiedenis')
def geschiedenis():

    spelersName = DbClass.DbClass().getdata("SELECT Naam FROM spelers")
    spelersPion = DbClass.DbClass().getdata("SELECT Pion FROM spelers")
    spelersSaldo = DbClass.DbClass().getdata("SELECT Saldo FROM spelers")
    try:
        return render_template('geschiedenis.html',
                               spelersName=spelersName,
                               spelersPion=spelersPion,
                               spelersSaldo=spelersSaldo)
    except:
        abort(404)

@app.route('/nieuwspel', methods=['GET','POST'])
def get_data():
    if request.method == 'POST':
        speler1 = request.form['speler1']
        speler2 = request.form['speler2']
        speler3 = request.form['speler3']
        speler4 = request.form['speler4']
        pion1 = request.form['pion1']
        pion2 = request.form['pion2']
        pion3 = request.form['pion3']
        pion4 = request.form['pion4']

        cur.execute("UPDATE spelers SET Naam = '" + speler1 + "' WHERE ID = '1'")
        cur.execute("UPDATE spelers SET Naam = '" + speler2 + "' WHERE ID = '2'")
        cur.execute("UPDATE spelers SET Naam = '" + speler3 + "' WHERE ID = '3'")
        cur.execute("UPDATE spelers SET Naam = '" + speler4 + "' WHERE ID = '4'")
        cur.execute("UPDATE spelers SET Pion = '" + pion1 + "' WHERE ID = '1'")
        cur.execute("UPDATE spelers SET Pion = '" + pion2 + "' WHERE ID = '2'")
        cur.execute("UPDATE spelers SET Pion = '" + pion3 + "' WHERE ID = '3'")
        cur.execute("UPDATE spelers SET Pion = '" + pion4 + "' WHERE ID = '4'")
        cur.execute("UPDATE spelers SET Saldo = 30000 WHERE ID = '1'")
        cur.execute("UPDATE spelers SET Saldo = 30000 WHERE ID = '2'")
        cur.execute("UPDATE spelers SET Saldo = 30000 WHERE ID = '3'")
        cur.execute("UPDATE spelers SET Saldo = 30000 WHERE ID = '4'")
        con.commit()

    spelersName = DbClass.DbClass().getdata("SELECT RFID FROM spelers WHERE ID = '1'")
    import sercom
    if spelersName == '322372502645':
        sercom.Serial().write_name(spelersName)
    return render_template('nieuwspel.html')

@app.route('/bord')
def bord():
    try:
        return render_template('bord.html')
    except:
        abort(404)


@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.html')


if __name__ == '__main__':
    app.run(host="0.0.0.0", debug=True)
    #app.run(debug=True)
