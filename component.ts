export class Component {
    private state: string;

    constructor(initialState: string) {
        this.state = initialState;
    }

    render() {
        console.log(`Component state: ${this.state}`);
    }

    setState(newState: string) {
        this.state = newState;
        this.render();
    }
}
