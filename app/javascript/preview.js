document.addEventListener('DOMContentLoaded', function(){
  //新規・編集 投稿ページのフォーム
  const postForm = document.getElementById('new_post');
  //プレビューを表示するためにスペースを取得
  const previewList = document.getElementById('previews');
  //新規投稿・編集ページのフォームがないならここで終了。「！」は理論否定演算子。
  if(!postForm) return null;
  console.log("preview.jsが読み込まれました");
  
  // input要素を取得
  const fileField = document.querySelector('input [type="file"][name=post[image]"]');
  // input要素で値の偏kさが起きた際に呼び出される関数
  fileField.addEventListener('change', function(e){
    console,log("input要素で値の変化が起きました");
  });
});