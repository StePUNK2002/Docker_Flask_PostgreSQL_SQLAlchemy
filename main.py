from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://newuser:password@db:5432/test'
db = SQLAlchemy(app)


class Post(db.Model):
    __tablename__ = 'posts'

    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(120))
    likes = db.Column(db.Integer)


@app.route('/')
def index():
    posts = Post.query.all()
    return str(posts)


if __name__ == '__main__':
    with app.app_context():
        db.create_all()
    app.run(debug=False)
