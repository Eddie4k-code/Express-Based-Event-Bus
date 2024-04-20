import express, {Request, Response} from 'express';
import axios from 'axios';

const app = express();


app.use(express.json());

interface IEvent {
    type: string
    data: any
}


app.post("/events", async (req: Request, res: Response) => {

    try {

        const event:IEvent = req.body;

        console.log("Received event...", event);
        
        /* Emit the events to other services */
        await axios.post('http://posts-cluster-ip-srv:4000/events', event);
        await axios.post('http://comments-cluster-ip-srv:4001/events', event);
        await axios.post('http://query-cluster-ip-srv:4003/events', event);

        res.send({"status": 'OK'});
    } catch(err: any) {
        console.log(err);
        return res.status(400).json(err.message);
    }



}); 


app.listen(4005, () => {
    console.log("Event bus on port 4005...");
});