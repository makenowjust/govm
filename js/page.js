$(function () {
  var
  $data = $('#data');

  $('.navlist a').click(function () {
    var
    $el = $(this),
    url = $el.attr('href').slice(1);

    $.ajax('./pages/' + url.replace('-', '/') + '.md')
      .done(function (data) {
        $data.html(render(data));
      })
      .fail(function (xhr, status, err) {
        $data.html([
          '<h2>' + xhr.status + ' - ' +  xhr.statusText + '</h2>',
          '<img src="./img/govm-logo.png" alt="govm logo">',
        ].join('\n'));
      });
  });

  var
  url = location.hash;
  if (url.length >= 1) {
    $('.navlist a').filter(function (idx, el) {
      if ($(el).attr('href') === url) {
        $(el).trigger('click');
      }
    });
  }

  function render(data) {
    return marked(data, {
      gfm: true,
      tables: true,
      breaks: true,
      pedantic: false,
      sanitize: false,
      smartLists: true,
      smartypants: false,
    });
  }
});
