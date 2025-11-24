import { Orientation } from 'mmsmart-screen-orientation-lock';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    Orientation.echo({ value: inputValue })
}
