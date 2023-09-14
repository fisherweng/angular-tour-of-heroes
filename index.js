const express = require('express');
const app = express();

app.use(express.static("dist/angular-tour-of-heroes"))
app.get('/', (req, res) => {
    res.redirect("/");
});

const port = parseInt(process.env.PORT) || 8080;
// const port = 4200;
app.listen(port, () => {
  console.log(`angular-tour-of-heroes: listening on port ${port}`);
});