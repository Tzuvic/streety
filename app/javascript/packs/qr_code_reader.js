import { BrowserQRCodeReader } from '@zxing/library';

const codeReader = new BrowserQRCodeReader();

codeReader
  .decodeFromInputVideoDevice(undefined, 'video')
  .then((result) => {
    // process the result
    // console.log(result.text)

    // document.getElementById('code-result').textContent = 'SCAN SUCCESSFUL!'
    document.getElementById('code-result').classList.remove("hidden-success");

     setTimeout(function(){
       //put your code in here to be delayed by 2 seconds
       window.location.href = `${result}`;
     },2500);

    // const sendtopage = window.location.href = `${result}`;
  })
  .catch(err => console.error(err));
