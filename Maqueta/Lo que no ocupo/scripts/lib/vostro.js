var o = olivajs;
var checkboxes = document.querySelectorAll('input[type=checkbox]');
var radios = document.querySelectorAll('input[type=radio]');
var forms = document.querySelectorAll('.validate-form');
var errorMessageTxt = 'Por favor llena este campo';

function findParentElementByClass(nodeElement, className) {
  var element = nodeElement;

  while (element) {
    if (element.classList && element.classList.contains(className)) {
      return element;
    }

    element = element.parentNode;
  }

  return null;
}

window.onload = function() {
  o.DOMUtils.syncForEach((function(checkbox) {
    var checkboxWrapper = new o.DOMElement('div');

    if (checkbox.checked) {
      checkboxWrapper.addClasses(['checked']);
    }

    checkboxWrapper.addClasses(['custom-checkbox']);
    checkboxWrapper.renderBefore(checkbox.parentElement, 0);
    checkboxWrapper.getElement().appendChild(checkbox);

    checkboxWrapper.addEvents([{
      callback: (function() {
        if (!checkbox.disabled) {
          checkbox.checked = !checkbox.checked;

          if (checkbox.checked) {
            checkboxWrapper.addClasses(['checked']);

            if (findParentElementByClass(checkbox, 'card')) {
              findParentElementByClass(checkbox, 'card').classList
                .add('active');
            }
          } else {
            checkboxWrapper.removeClasses(['checked']);

            if (findParentElementByClass(checkbox, 'card')) {
              findParentElementByClass(checkbox, 'card').classList
                .remove('active');
            }
          }
        }
      }),
      name: 'click'
    }]);
  }), checkboxes);

  o.DOMUtils.syncForEach((function(form) {
    var submitButton = form.querySelector('[type=submit]');
    var inputs = form.querySelectorAll(
      'input:not([type=submit]), textarea');
    var selects = form.querySelectorAll('select');

    o.DOMUtils.syncForEach((function(input) {
      if (input) {
        input.addEventListener('keyup', function() {
          var smallElements = input.parentElement.querySelectorAll(
            'small');

          o.DOMUtils.removeElements(smallElements);
          o.DOMUtils.removeClass(input.parentElement,
            'has-error');
        });
      }
    }), inputs);

    o.DOMUtils.syncForEach((function(select) {
      if (select) {
        select.addEventListener('change', function() {
          var smallElements = select.parentElement.querySelectorAll(
            'small');

          o.DOMUtils.removeElements(smallElements);
          o.DOMUtils.removeClass(select, 'has-error');
        });
      }
    }), selects);

    if (submitButton) {
      submitButton.addEventListener('click', function(event) {
        event.preventDefault();

        o.DOMUtils.syncForEach((function(input) {
          if (input.required && input.value.length === 0) {
            var errorMessage = new o.DOMElement('small');

            if (!input.parentElement.classList.contains(
                'has-error')) {
              o.DOMUtils.addClass(input.parentElement,
                'has-error');
              errorMessage.setContent(errorMessageTxt);
              errorMessage.render(input.parentElement);
            }
          }
        }), form.elements);

        o.DOMUtils.syncForEach((function(select) {
          if (select.required && select.value === '0') {
            var errorMessage = new o.DOMElement('small');

            if (!select.classList.contains('has-error')) {
              o.DOMUtils.addClass(select, 'has-error');
              errorMessage.setContent(errorMessageTxt);
              errorMessage.render(select.parentElement);
            }
          }
        }), form.elements);
      });
    }
  }), forms);

  o.DOMUtils.syncForEach((function(radio) {
    var radioWrapper = new o.DOMElement('div');

    if (radio.checked) {
      radioWrapper.addClasses(['checked']);
    }

    radioWrapper.addClasses(['custom-radio']);
    radioWrapper.render(radio.parentElement);
    radioWrapper.getElement().appendChild(radio);

    radioWrapper.addEvents([{
      callback: (function() {
        if (!radio.disabled) {
          radio.checked = !radio.checked;

          if (radio.checked) {
            radioWrapper.addClasses(['checked']);
          } else {
            radioWrapper.removeClasses(['checked']);
          }
        }
      }),
      name: 'click'
    }]);
  }), radios);
};
