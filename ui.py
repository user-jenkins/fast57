import gradio as gr
import requests
import json

def get_states():
    response = requests.get("http://localhost:8000/states")
    if response.status_code == 200:
        return json.loads(response.content)
    else:
        return None

with gr.Blocks() as demo:
    dropdown = gr.Dropdown(label="Select a state", choices=["Alabama", "Alaska", ...])
    dropdown.update(get_states)
    demo.launch()