from flask import Flask,render_template, abort
app = Flask(__name__)


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
    import DbClass
    spelersName = DbClass.DbClass().getdata("SELECT Naam FROM spelers")
    spelersPion = DbClass.DbClass().getdata("SELECT Pion FROM spelers")
    spelersSaldo = DbClass.DbClass().getdata("SELECT Saldo FROM spelers")
    try:
        return render_template('geschiedenis.html',
                               spelersName = spelersName,
                               spelersPion = spelersPion,
                               spelersSaldo = spelersSaldo)
    except:
        abort(404)

@app.route('/nieuwspel')
def nieuwspel():
    try:
        return render_template('nieuwspel.html')
    except:
        abort(404)
@app.route('/nieuwspel.html')
def nieuwspel2():
    try:
        return render_template('nieuwspel.html')
    except:
        abort(404)

@app.route('/nieuwspel?<LoveYouMarco>')
def nieuwspel3(LoveYouMarco):
    try:
        return render_template('nieuwspel.html',LoveYouMarco=LoveYouMarco)
    except:
        abort(404)

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
    app.run(host="0.0.0.0",debug=True)