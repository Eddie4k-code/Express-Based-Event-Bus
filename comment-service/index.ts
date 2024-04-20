import axios from 'axios';
import { randomBytes } from 'crypto';
import express, {Request, Response} from 'express';



const app = express();


app.use(express.json())

const commentsByPostId: any = {};


interface IEvent {
    type: string,
    data: any
}

app.get("/posts/:id/comments", async (req: Request, res: Response) => {

    try {

        res.status(200).json(commentsByPostId[req.params.id] || []);

    } catch(err) {


        return res.status(400).json(err);

    }

    

});

app.post("/posts/:id/comments", async (req: Request, res: Response) => {

    try {

        const commentId = randomBytes(4).toString('hex');

        const {content} = req.body;


        const comments = commentsByPostId[req.params.id] || [];


        comments.push({id: commentId, content: content});

        commentsByPostId[req.params.id] = comments;

        let event = {
            type: 'CommentCreated',
            data: {
                id: commentId,
                content: content,
                postId: req.params.id
            }
        };

        /* Notify the event bus of this event */

        await axios.post("http://localhost:4005/events", event);


        return res.status(200).json(comments);


    } catch(err: any) {
        console.log(err);
        return res.status(400).json(err.message);
    }

});

/* Recieve events from the event bus */

app.post("/events", async (req: Request, res:Response) => {

    const event: IEvent = req.body;

    console.log("Comments Service just Received Event ", event.type);

    res.send({"status": "OK"});

});


app.listen(4001, () => {
    console.log("Listening on Port 4001");
});

