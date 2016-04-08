// some puked JavaScript-functions to fade out 'irrelevant' messages in a buffer

function getChatLineArray() {
  var chat_lines = document.getElementById("chatbody").children;
  return chat_array = [].slice.call(chat_lines);
}

function foldChatlog() {
  getChatLineArray().filter(function (ele) {
    return !ele.classList.contains("action") &&
           !ele.classList.contains("chat")
  }).forEach(function (ele) {
    ele.hidden = true
  })
}

function unfoldChatlog() {
  getChatLineArray().forEach(function (ele) {
    ele.hidden = false
  })
}

function toggleHide () {
  unfoldChatlog();

  var a = document.getElementById("text-toggle");
  a.text = "Text only";
  a.href = "javascript:toggleShow()";
}

function toggleShow () {
  foldChatlog();

  var a = document.getElementById("text-toggle");
  a.text = "Show infos";
  a.href = "javascript:toggleHide()";
}

toggleHide();
