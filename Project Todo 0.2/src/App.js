import React, { useState } from "react";

function App() {
    const [userInput, setUserInput] = useState("");
    const [todos, setTodos] = useState([]);

    const addTodo = () => {
        if (userInput.trim() === "") return;

        setTodos([...todos, userInput]);
        setUserInput("");
    };

    return (
        <div className="container">
            <div className="todo-box">
                <h1> Todo App List</h1>

                <div className="input-box">
                    <input
                        type="text"
                        placeholder="Enter your task..."
                        value={userInput}
                        onChange={(e) => setUserInput(e.target.value)}
                    />

                    <button onClick={addTodo}>+</button>
                </div>

                <ul>
                    {todos.map((todo, index) => (
                        <li key={index}>{todo}</li>
                    ))}
                </ul>
            </div>
        </div>
    );
}

export default App;








