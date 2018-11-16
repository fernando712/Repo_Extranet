$(function() {
  $('[data-toggle="tooltip"]').tooltip({
    placement: "top"
  });

  // Datepicker
  $('.input-group.date').datetimepicker({
    format: 'DD-MM-YY',
    locale: 'es'
  });

  var userId = 0;
  var becaId = 0;
  var fileId = 0;

  $('[data-btn="uploadFiles"]').on('click', function() {
    userId = $(this).data('userid');
    becaId = $(this).data('becaid');
    fileId = $(this).data('fileid');

    $('#uploadFiles [name="userId"]').val(userId);
    $('#uploadFiles [name="becaId"]').val(becaId);
    $('#uploadFiles [name="fileId"]').val(fileId);
  });

  $('#uploadFiles').on('hidden.bs.modal', function(e) {
    var token = $(this).find('[name="token"]').val();
    $('#slot_' + becaId + '_' + fileId).val(token);
  });

  Dropzone.prototype.defaultOptions.dictRemoveFile = "Eliminar";
  Dropzone.autoDiscover = false;
  // 2 archivos
  $('.dropzone').dropzone({
    acceptedFiles: 'application/pdf,image/jpeg',
    addRemoveLinks: true,
    autoProcessQueue: false,
    clickable: '.dz-btn',
    dictDefaultMessage: '',
    maxFiles: 2,
    maxfilesexceeded: function(file) {
      this.removeAllFiles(file);
      this.addFile(file);
    },
    maxFilesize: 5,
    previewTemplate: (document.getElementById('template-preview')) ?
      document.getElementById('template-preview').innerHTML : '',
    previewsContainer: '#template-preview',
    url: '/',
    init: function() {
      var myDropzone = this;
      $('.dz-save-files').on('click', function(e) {
        e.preventDefault();
        myDropzone.processQueue();
      });
      this.on('addedfile', function(file) {
        this.element.classList.remove('hover');
        this.element.parentElement.classList.add('col-sm-6');
        document.querySelector('.template-preview-wrapper')
          .style.display = "block";
        $('.list-options').hide();
        $('.alert-danger').hide();
        $('.alert-success').show();
      });
      this.on('maxfilesexceeded', function(file) {
        $('.alert-danger').show();
        $('.alert-success').hide();
        this.removeFile(file);
        this.element.parentElement.classList.remove('col-sm-6');
        $('.template-preview-wrapper').hide();
        $('.list-options').show();

        if (this.element.classList.contains('hover')) {
          this.element.classList.remove('hover');
        }
      });
      this.on('removedfile', function(file) {
        this.element.parentElement.classList.remove('col-sm-6');
        $('.template-preview-wrapper').hide();
        $('.list-options').show();
        $('.alert').hide();

        if (this.element.classList.contains('hover')) {
          this.element.classList.remove('hover');
        }
      });
    },
    dragleave: function(event) {
      this.element.classList.remove('hover');
    },
    dragover: function(event) {
      if (!this.element.classList.contains('hover')) {
        this.element.classList.add('hover');
      }
    },
    error: function(file, errorMEssage) {
      if (!file.accepted) {
        this.removeFile(file);
      }
    }
  });

  // 1 archivo
  $('.dropzone-one').dropzone({
    acceptedFiles: 'image/jpeg',
    addRemoveLinks: true,
    autoProcessQueue: false,
    clickable: '.dz-btn',
    dictDefaultMessage: '',
    maxFiles: 1,
    maxfilesexceeded: function(file) {
      this.removeAllFiles(file);
      this.addFile(file);
    },
    maxFilesize: 5,
    previewTemplate: (document.getElementById('template-preview')) ?
      document.getElementById('template-preview').innerHTML : '',
    previewsContainer: '#template-preview',
    url: '/',
    init: function() {
      var myDropzone = this;
      $('.dz-save-files').on('click', function(e) {
        e.preventDefault();
        myDropzone.processQueue();
      });
      this.on('addedfile', function(file) {
        this.element.classList.remove('hover');
        this.element.parentElement.classList.add('col-sm-6');
        document.querySelector('.template-preview-wrapper')
          .style.display = "block";
        $('.list-options').hide();
        $('.alert-danger').hide();
        $('.alert-success').show();
      });
      this.on('maxfilesexceeded', function(file) {
        $('.alert-danger').show();
        $('.alert-success').hide();
        this.removeFile(file);
        this.element.parentElement.classList.remove('col-sm-6');
        $('.template-preview-wrapper').hide();
        $('.list-options').show();

        if (this.element.classList.contains('hover')) {
          this.element.classList.remove('hover');
        }
      });
      this.on('removedfile', function(file) {
        this.element.parentElement.classList.remove('col-sm-6');
        $('.template-preview-wrapper').hide();
        $('.list-options').show();
        $('.alert').hide();

        if (this.element.classList.contains('hover')) {
          this.element.classList.remove('hover');
        }
      });
    },
    dragleave: function(event) {
      this.element.classList.remove('hover');
    },
    dragover: function(event) {
      if (!this.element.classList.contains('hover')) {
        this.element.classList.add('hover');
      }
    },
    error: function(file, errorMEssage) {
      if (!file.accepted) {
        this.removeFile(file);
      }
    }
  });

  $('select.other-relation').on('change', function() {
    if ($(this).val() === $(this).find('.other-relation-op').attr(
        'value')) {
      $(this).closest('form').find('.other-relation-target').show();
      $(this).closest('form').find('.other-relation-target')
        .find('input').val('').focus();
    } else {
      $(this).closest('form').find('.other-relation-target').hide();
    }

    if ($(this).closest('#new-staff-form')) {
      $('#btn-new-staff').removeAttr('disabled');
    }
  });

  $('select.position').on('change', function() {
    if ($(this).val() === '1') {
      $(this).closest('form').find('.position-region').html('Región');
      $(this).closest('form').find('.position-target').html('Estado');
      $(this).closest('form').find('.residence').show();
    }

    if ($(this).val() === '2') {
      $(this).closest('form').find('.position-region').html('Región');
      $(this).closest('form').find('.position-target').html('Región');
      $(this).closest('form').find('.residence').hide();
    }

    if ($(this).val() === '3') {
      $(this).closest('form').find('.position-region').html('Estado');
      $(this).closest('form').find('.position-target').html('Municipio');
      $(this).closest('form').find('.residence').show();
    }
  });

  $(".add-state-staff").on('click', function(e) {
    e.preventDefault();
    $(this).closest('dl').find('.clone-state-staff').show();
  });

  $(".form-group .icon-166").on('click', function() {
    $(this).closest('dl').find('.clone-state-staff').hide();
  });

  // Do you have children
  $('select.select-children').on('change', function() {
    if ($(this).val() === $(this).find('.not-children').attr('value')) {
      $(this).closest('form').find('.children-detail').hide();
    } else {
      $(this).closest('form').find('.children-detail').show();
    }
  });

  // Number children-detail
  $('select.number-children').on('change', function() {
    var cont = $(this).val();
    $(".new-row").remove();

    for (var i = 1; i < cont; i++) {
      $clone = $("table tbody tr:first").clone().addClass('new-row');
      $("table tbody").append($clone);
    }
  });
});
