document.addEventListener('DOMContentLoaded', function(){
  //新規・編集 投稿ページのフォーム
  const postForm = document.getElementById('receipt-image');
  //新規投稿・編集ページのフォームがないならここで終了。「！」は理論否定演算子。
  if(!postForm) return null;
  console.log("preview.jsが読み込まれました");
});