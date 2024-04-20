import axios from 'axios';
import { randomBytes } from 'crypto';
import express, {Request, Response} from 'express';



const app = express();

interface IPosts {
    id: string
    title: string
}

const posts: Record<string, IPosts> = {

}


interface IEvent {
    type: string
    data: any
}


app.use(express.json())

app.get("/posts", async (req: Request, res: Response) => {

    return res.status(200).json(posts)

});

app.post("/posts", async (req: Request, res: Response) => {

    try {

        const id: string = randomBytes(4).toString();


        const {title} = req.body;
    
        posts[id] = {
            id, title
        }

        let event: IEvent = {
            type: "PostCreated",
            data: posts[id]
        }

        await axios.post('http://localhost:4005/events', event);



    
    
        return res.status(200).json({"post": {id, title}})

    } catch (err: any) {
        return res.status(400).json(err.message)
    }

  

});


app.post("/events", async (req: Request, res:Response) => {

    const event: IEvent = req.body;

    console.log("Post Service just Received Event ", event.type);

    res.send({"status": "OK"});

});


app.listen(4000, () => {
    console.log("Listening on Port 4000");



});

