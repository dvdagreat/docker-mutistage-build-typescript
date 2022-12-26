import express, { Request, Response } from "express";

const app = express();
const port = 5000;

app.get("/", (req: Request, res: Response) => {
  return res.json({
    works: "true",
  });
});

app.listen(port, () => console.log(`application started at port ${port}`));
