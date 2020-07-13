$(function (e) {
  $.ajaxSetup({
    headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
  });//ajax token
  // document.getElementById('wangeditor').onclick=function(){
  //   _wangeditor.txt.html('');//清空
  // };
  $('#preview').click(function (e) {
    $('.title:eq(0)>h2').text($('#title').val() || '未命名');
    $('.title:eq(0)>div>div:first-of-type>span').text($('#author').val());
    $('.title:eq(0)>div>div:nth-of-type(2)>span').text($('#time').val());
    $('.title:eq(0)>div>div:last-of-type>span').text($('#sort').val());
    $('.content').eq(0).html(_wangeditor.txt.html());
    console.log(_wangeditor.txt.html());
  });

  /*$('#wangeditor').one('click',function (e) {
    _wangeditor.txt.html('');
  });*/

  $('#submit').click(function (e) {
    let title = $('#title').val() || '未命名';
    let author = $('#author').val();
    let time = $('#time').val();
    let sort = $('#sort').val();
    let content = _wangeditor.txt.html();
    let Abbreviation = _wangeditor.txt.text();
    console.log(title, author, time, sort, content);
    $.ajax({
      url: '/new/add',
      method: 'POST',
      dataType: "json",
      data: {
        title: title,
        email: author,
        time: time,
        dirs: sort,
        content: content,
        Abbreviation: Abbreviation,
      },
      success: function (data) {
        if (data.error !== 0) {
          return;
        }
        // console.log(data.error);
        _wangeditor.txt.html('');
        let flag = window.confirm('添加成功,是否需要去查看');
        if (flag) {
          window.location.href = "/admin/newSelect";
        }

      }, error: function (data) {
        console.log('error');
        // 动态在页面添加错误提示信息
        let str = '<div class="alert alert-danger" role="alert">上传失败</div>';
        $("#submit").after(str);
      }
    })
  });

  $('#change').click(function (e) {
    let title = $('#title').val() || '未命名';
    let author = $('#author').val();
    let time = $('#time').val();
    let sort = $('#sort').val();
    let content = _wangeditor.txt.html();
    let Abbreviation = _wangeditor.txt.text();
    let id = $('[name=id]').val();
    console.log(title, author, time, sort, content);
    $.ajax({
      url: '/new/change',
      method: 'POST',
      dataType: "json",
      data: {
        id: id,
        title: title,
        email: author,
        time: time,
        dirs: sort,
        content: content,
        Abbreviation: Abbreviation,
      },
      success: function (data) {
        if (data.error !== 0) {
          return;
        }
        // console.log(data.error);
        _wangeditor.txt.html('');
        let flag = window.confirm('修改成功,是否需要去查看');
        if (flag) {
          window.location.href = "/admin/newSelect";
        }

      }, error: function (data) {
        console.log('error');
        // 动态在页面添加错误提示信息
        let str = '<div class="alert alert-danger" role="alert">更新失败</div>';
        $("#change").after(str);
      }
    })
  });


  function urls(val) {
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


  $('#file').on('change', function (e) {
    let url = urls(this.files[0]);
    // console.log(url);
    $('.imgH').addClass('getImg');
    $('.imgH').removeClass('imgH');
    $('#file+.getImg img:eq(1)').attr('src', url);

    //上传图片
    // console.log(this.files[0]);
    let formData = new FormData();
    formData.append("file", this.files[0]);
    formData.append("email", $('#email').val());
    $.ajax({
      url: '/admin/changeInfoImg',
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

  //提交
  $('#userInfo').on('click', function (e) {
    let name = $('#name').val();
    let email = $('#email').val();
    let gender = $('[name=gender]').val();
    let introduction = $('#text').val();
    let id = $('[name=id]').val();


    $.ajax({
      url: '/admin/changeInfo',
      method: 'POST',
      dataType: "json",
      data: {
        id: id,
        name: name,
        email: email,
        gender: gender,
        introduction: introduction
      },
      success: function (data) {
        if (data.error !== 0) {
          return;
        }
        let flag = window.confirm('修改成功,是否需要去查看');
        if (flag) {
          window.location.reload();
        }

      }, error: function (data) {
        console.log('error');
        // 动态在页面添加错误提示信息
        let str = '<div class="alert alert-danger" role="alert">更新失败</div>';
        $("#userInfo").after(str);
      }
    })

  })
});
