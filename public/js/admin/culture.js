$(function (e) {
  $.ajaxSetup({
    headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
  });//ajax token


  //预览
  $('#preview').click(function (e) {
    $('.title:eq(0)>h2').text($('#title').val() || '未命名');
    $('.title:eq(0)>div>div:first-of-type>span').text($('#author').val());
    $('.title:eq(0)>div>div:nth-of-type(2)>span').text($('#time').val());
    $('.title:eq(0)>div>div:nth-of-type(3)>span').text($('#sort').val());
    $('.title:eq(0)>div>div:last-of-type>span').text($('#sort2').val());
    $('.content').eq(0).html(_wangeditor.txt.html());
  });

  $('#preview2').click(function (e) {
    $('.title:eq(0)>h2').text($('#title').val() || '未命名');
    $('.title:eq(0)>div>div:first-of-type>span').text($('#author').val());
    $('.title:eq(0)>div>div:nth-of-type(2)>span').text($('#time').val());
    $('.title:eq(0)>div>div:nth-of-type(3)>span').text($('#sort').val());
    $('.title:eq(0)>div>div:last-of-type>span').text($('#sort2').val());
    $('.content2:eq(0)').val(1);
  });


 /* $('#wangeditor').one('click', function (e) {
    _wangeditor.txt.html('');
  });*/
  $('#videoA').hide();
  $('#videoV').hide();
 if($('#sort').val()=='展柜'||$('#sort').val() == "图集"){
   $('.editor').css('display', 'block');
   $('.video').css('display', 'none');
   $('#videoA').hide();
   $('#videoV').hide();
 }else {
   $('.video').css('display', 'block');
   $('.editor').css('display', 'none');
   $('#videoA').show();
   $('#videoV').show();
 }
  $('#sort').change(function (e) {
    let val = $(this).val();
    if (val == "展柜" || val == "图集") {
      $('.editor').css('display', 'block');
      $('.video').css('display', 'none');
      $('#videoA').hide();
      $('#videoV').hide();
    } else {
      $('.video').css('display', 'block');
      $('.editor').css('display', 'none');
      $('#videoA').show();
      $('#videoV').show();
    }
  });

  function urls(str) {
    let imgReg = /<img.*?(?:>|\/>)/gi;
    let srcReg = /src=[\'\"]?([^\'\"]*)[\'\"]?/i;
    let arr = str.match(imgReg);  // arr 为包含所有img标签的数组
    let srcArr = [];
    for (let i = 0; i < arr.length; i++) {
      let src = arr[i].match(srcReg);
      //获取图片地址
      srcArr.push(src[1]);
    }
    srcArr['str'] = srcArr.join(',');//字符串地址以逗号分割
    return srcArr;
  }

  $('#editorS').click(function (e) {
    let title = $('#title').val() || '未命名';
    let author = $('#author').val();
    let time = $('#time').val();
    let sort = $('#sort').val();
    let sort2 = $('#sort2').val();
    let content = _wangeditor.txt.html();
    let Abbreviation = _wangeditor.txt.text();
    let src = urls(content);
    // console.log(src['str']);
    // console.log(title, author, time, sort, content,sort2);
    $.ajax({
      url: '/culture/add',
      method: 'POST',
      dataType: "json",
      data: {
        title: title,
        email: author,
        introduction: content,
        intro: Abbreviation,
        types: sort,
        form: sort2,
        portrait: src['str'],
      },
      success: function (data) {
        if (data.error !== 0) {
          return;
        }
        console.log(data.error);
        _wangeditor.txt.html('');
        let flag = window.confirm('添加成功,是否需要去查看');
        if (flag) {
          window.location.href = "/admin/cultureSelect";
        }

      }, error: function (data) {
        console.log('error');
        let str = '<div class="alert alert-danger" role="alert">上传失败</div>';
        $("#editorS").after(str);
      }
    })
  });


  function srcS(val) {
    let url = null;
    if (window.webkitURL != undefined) {
      url = window.webkitURL.createObjectURL(val);
    } else if (window.URL != undefined) {
      url = window.URL.createObjectURL(val);
    } else if (window.createObjectURL != undefined) {
      url = window.createObjectURL(val);
    } else {
      url = null;
    }
    return url;
  }


  $('#file').change(function (e) {
    let url = srcS(this.files[0]);
    // window.location.reload();
    let val=$('#sort').val();
    if(val=='视频'){
      $('#videoV').show();
      $('#videoA').hide();
      $('#videoV').append('<source src="'+url+'" type="video/mp4">');
    }else {
      $('#videoV').hide();
      $('#videoA').show();
      $('#videoA').append('<source src="'+url+'" type="audio/mpeg">');
    }
  });

  $('#videoS').click(function (e) {
/*    let data = [];
    data.push({
      title: $('#title').val() || '未命名',
      email: $('#author').val(),
      intro: $('#textareas').val(),
      types: $('#sort').val(),
      form: $('#sort2').val(),
    });
    console.log(data[0]);*/
    let file = $('#file')[0].files[0];
    let formData = new FormData();
    // formData.append('data', data);
    formData.append('file', file);
    formData.append('title', $('#title').val() || '未命名');
    formData.append('email', $('#author').val());
    formData.append('intro', $('#textareas').val()|| '暂无描述');
    formData.append('types', $('#sort').val());
    formData.append('form', $('#sort2').val());
    $.ajax({
      url: '/culture/add2',
      method: 'POST',
      dataType: "json",
      data: formData,
      processData: false,
      contentType: false,
      success: function (data) {
          let str=`<div class="alert alert-primary" role="alert">
        ${data}
          </div>`;
          $('#data').replaceWith(str);
      }, error: function (data) {
          let str=`<div class="alert alert-primary" role="alert">
        ${data}
          </div>`;
          $('#data').replaceWith(str);
      }
    })
  });

  //更改
  $('#editorCg').click(function (e) {
    let title = $('#title').val() || '未命名';
    let author = $('#author').val();
    let sort = $('#sort').val();
    let sort2 = $('#sort2').val();
    let content = _wangeditor.txt.html();
    let Abbreviation = _wangeditor.txt.text();
    let src = urls(content);
    let id= $('[name=id]').val();
    $.ajax({
      url: '/culture/change',
      method: 'POST',
      dataType: "json",
      data: {
        title: title,
        email: author,
        introduction: content,
        intro: Abbreviation,
        types: sort,
        form: sort2,
        portrait: src['str'],
        id:id,
      },
      success: function (data) {
        if (data.error !== 0) {
          return;
        }
        console.log(data.error);
        _wangeditor.txt.html('');
        let flag = window.confirm('更改成功,是否需要去查看');
        if (flag) {
          window.location.href = "/admin/cultureSelect";
        }

      }, error: function (data) {
        console.log('error');
        let str = '<div class="alert alert-danger" role="alert">上传失败</div>';
        $("#editorS").after(str);
      }
    })
  });

});
