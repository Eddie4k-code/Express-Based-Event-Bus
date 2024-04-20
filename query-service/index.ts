import express, {Request, Response} from 'express';

const app = express();

app.use(express.json());

interface IComment {
    id: string,
    content: string,
    postId: string
}

interface IPost {
    id: string
    title: string
    comments: IComment[]
}


interface IEvent {
    type: string,
    data: any
}

// store posts
const posts: Map<string, IPost> = new Map<string, IPost>();

app.get("/posts", async (req: Request, res: Response) => {
    return res.status(200).json(posts);
});


app.post("/events", async (req: Request, res: Response) => {


    const event: IEvent = req.body;

    /* Process the Event PostCreated */

    if (event.type === 'PostCreated') {

        const {id, title} = event.data;

        posts.set(id, {id, title, comments: []});

    }

    /* Process the event CommentCreated */

    if (event.type == 'CommentCreated') {

        const {id, content, postId} = event.data;

        const post = posts.get(postId);

        post?.comments.push({id, content, postId})

    }

    res.send({"status": "OK"});

});

app.listen(4003, () => {
    console.log("Query service on port 4003");
});
