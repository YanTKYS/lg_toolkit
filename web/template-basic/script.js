/*
 * Copyright (c) 2026 YanTKYS
 * SPDX-License-Identifier: MIT
 * License text: https://github.com/YanTKYS/lg_toolkit/blob/main/LICENSE
 */

(function () {
  'use strict';

  var input = document.getElementById('nameInput');
  var button = document.getElementById('helloButton');
  var result = document.getElementById('result');

  button.addEventListener('click', function () {
    var name = (input.value || '').trim();
    result.textContent = name ? 'こんにちは、' + name + ' さん。' : 'こんにちは。';
  });
})();
