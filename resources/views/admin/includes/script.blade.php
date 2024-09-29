<!-- JQUERY JS -->
<script src="{{asset('/')}}admin/assets/plugins/jquery/jquery.min.js"></script>

<!-- BOOTSTRAP JS -->
<script src="{{asset('/')}}admin/assets/plugins/bootstrap/js/popper.min.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

<!-- SIDE-MENU JS -->
<script src="{{asset('/')}}admin/assets/plugins/sidemenu/sidemenu.js"></script>

<!-- Perfect SCROLLBAR JS-->
<script src="{{asset('/')}}admin/assets/plugins/p-scroll/perfect-scrollbar.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/p-scroll/pscroll.js"></script>

<!-- STICKY JS -->
<script src="{{asset('/')}}admin/assets/js/sticky.js"></script>



<!-- APEXCHART JS -->
<script src="{{asset('/')}}admin/assets/js/apexcharts.js"></script>


<!-- INTERNAL SELECT2 JS -->
<script src="{{asset('/')}}admin/assets/plugins/select2/select2.full.min.js"></script>

<!-- CHART-CIRCLE JS-->
<script src="{{asset('/')}}admin/assets/plugins/circle-progress/circle-progress.min.js"></script>

<!-- INTERNAL DATA-TABLES JS-->
<script src="{{asset('/')}}admin/assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/datatable/js/dataTables.bootstrap5.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/datatable/dataTables.responsive.min.js"></script>

<!-- INDEX JS -->
<script src="{{asset('/')}}admin/assets/js/index1.js"></script>
<script src="{{asset('/')}}admin/assets/js/index.js"></script>

<!-- Reply JS-->
<script src="{{asset('/')}}admin/assets/js/reply.js"></script>


<!-- COLOR THEME JS -->
<script src="{{asset('/')}}admin/assets/js/themeColors.js"></script>



{{--=================================================--}}

<!-- DATA TABLE JS-->
<script src="{{asset('/')}}admin/assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/datatable/js/dataTables.bootstrap5.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/datatable/js/dataTables.buttons.min.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/datatable/js/buttons.bootstrap5.min.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/datatable/js/jszip.min.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/datatable/pdfmake/pdfmake.min.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/datatable/pdfmake/vfs_fonts.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/datatable/js/buttons.html5.min.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/datatable/js/buttons.print.min.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/datatable/js/buttons.colVis.min.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/datatable/dataTables.responsive.min.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/datatable/responsive.bootstrap5.min.js"></script>
<script src="{{asset('/')}}admin/assets/js/table-data.js"></script>



<!-- FORM ELEMENTS JS -->
<script src="{{asset('/')}}admin/assets/js/formelementadvnced.js"></script>


<!-- CUSTOM JS -->
<script src="{{asset('/')}}admin/assets/js/custom.js"></script>

<!-- INTERNAL Summernote Editor js -->
<script src="{{asset('/')}}admin/assets/plugins/summernote-editor/summernote1.js"></script>
<script src="{{asset('/')}}admin/assets/js/summernote.js"></script>

<!--Internal Fileuploads js-->
<script src="{{asset('/')}}admin/assets/plugins/fileuploads/js/fileupload.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/fileuploads/js/file-upload.js"></script>

<!--Internal Fancy uploader js-->
<script src="{{asset('/')}}admin/assets/plugins/fancyuploder/jquery.ui.widget.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/fancyuploder/jquery.fileupload.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/fancyuploder/jquery.iframe-transport.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/fancyuploder/jquery.fancy-fileupload.js"></script>
<script src="{{asset('/')}}admin/assets/plugins/fancyuploder/fancy-uploader.js"></script>




<!-- SWITCHER JS -->
<script src="{{asset('/')}}admin/assets/switcher/js/switcher.js"></script>

<!-- Toster js  -->
<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js
"></script>
<!-- sweet alert 2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
     $(document).on('click', '.delete-item', function(event) {
    event.preventDefault();
        var form = $(this).closest('form');
    // var id = $(this).data('id'); // Get the ID of the clicked category
    // var formId = '#deleteItem-' + id; // Construct the unique form ID

    Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this!",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, delete it!"
    }).then((result) => {
        if (result.isConfirmed) {
            // $(formId).submit(); // Submit the form with the unique ID
            form.submit();
        }
    });
});
 </script>

@if (session('message'))
    <script>
         toastr.options = {
            "closeButton": true,
            "progressBar": true,
        };
        toastr.success("{{ session('message') }}");
    </script>
@endif
@if (session('error'))
    <script>
         toastr.options = {
            "closeButton": true,
            "progressBar": true,
        };
        toastr.error("{{ session('error') }}");
    </script>
@endif
@if (session('update'))
    <script>
         toastr.options = {
            "closeButton": true,
            "progressBar": true,
        };
        toastr.warning("{{ session('update') }}");
    </script>
@endif




{{--=======================================--}}
{{--------------- js for img tag -----------------}}
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#categoryImage').attr('src', e.target.result);
                $('#categoryImage').attr('height', '100');
                $('#categoryImage').attr('width', '120');
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imgInp").change(function(){
        readURL(this);
    });
</script>


{{--               For Product           --}}
<script>
    function setSubCategory(id) {
            // alert(categoryId)
        $.ajax({   // "$" means  jQuery object
            type: "GET",
            url: "{{ route('get-sub-category-by-category') }}",
            // data: {cateId: id},
            data: {id: id},
            dataType: "JSON",
            success: function (response) {
                    // alert(response);
                //2nd
                   // console.log(response);
                //3rd
                var option = '';
                option += ' <option value="" disabled selected> -- Select Sub Category --</option>';
                $.each(response, function (key,value) {
                    option += '<option value="'+value.id+'">' + value.name + '</option>';
                });

                // console.log(option);
                $('#subCategoryId').empty();
                $('#subCategoryId').append(option);

            }
        })
    }

</script>



<script>
    $(document).ready(function(){
        var maxField = 30; //Input fields increment limitation
        var addButton = $('.add_button'); //Add button selector
        var wrapper = $('.field_wrapper'); //Input field wrapper
        var x = 1; //Initial field counter is 1

        // Prepare the HTML template without Blade directives
        var sizes = @json($sizes); // Pass sizes array from Laravel to JS
        var colors = @json($colors); // Pass colors array from Laravel to JS

        // Generate dynamic HTML template with variant number
        function generateFieldHTML(variantNumber) {
            let sizeOptions = sizes.map(size => `<option value="${size.id}">${size.name}</option>`).join('');
            let colorOptions = colors.map(color => `<option value="${color.id}">${color.name}</option>`).join('');

            return `
                <div class="field_wrapper mt-3">
                    <label class="card-title">Product Variant ${variantNumber}</label>
                    <div class="row">
                        <div class="col-md-3">
                            <label class="form-label">SKU</label>
                            <input type="text" class="form-control" name="sku[]" placeholder="SKU" />
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">Regular Price</label>
                            <input type="number" class="form-control" name="variant_regular_price[]" placeholder="Regular Price" />
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">Selling Price</label>
                            <input type="number" class="form-control" name="variant_selling_price[]" placeholder="Selling Price" />
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">Stock Amount</label>
                            <input type="number" class="form-control" name="variant_stock_amount[]" placeholder="Stock Amount" />
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-4">
                            <label class="form-label">Image</label>
                            <input type="file" class="form-control" name="variant_image[]" />
                        </div>
                        <div class="col-md-3 form-group">
                            <label class="form-label">Select Size</label>
                            <select multiple class="form-control select2" data-placeholder="Select Size" name="size_id[]">
                                ${sizeOptions}
                            </select>
                        </div>
                        <div class="col-md-3 form-group">
                            <label class="form-label">Select Color</label>
                            <select multiple class="form-control select2" data-placeholder="Select Color" name="color_id[]">
                                ${colorOptions}
                            </select>
                        </div>
                        <div class="col-md-2 d-flex align-items-end">
                            <a href="javascript:void(0);" class="remove_button btn btn-sm btn-danger mb-5" title="Remove field">
                                <i class="fa fa-minus"></i> Remove
                            </a>
                        </div>
                    </div>
                </div>`;
        }

        // Once add button is clicked
        $(addButton).click(function(){
            // Check maximum number of input fields
            if(x < maxField){
                x++; // Increase field counter
                let newField = generateFieldHTML(x); // Generate new field HTML with the current number
                $(wrapper).append(newField); // Add field HTML
                $('.select2').select2(); // Reinitialize select2 for the new fields
            } else {
                alert('A maximum of '+maxField+' fields are allowed to be added.');
            }
        });

        // Once remove button is clicked (use delegated event binding for dynamic elements)
        $(wrapper).on('click', '.remove_button', function(e){
            e.preventDefault();
            $(this).closest('.field_wrapper').remove(); // Remove field HTML
            x--; // Decrease field counter
            renumberProductVariants(); // Renumber remaining product variants
        });

        // Initialize select2 on existing fields
        $('.select2').select2();

        // Function to renumber product variants after a field is removed
        function renumberProductVariants() {
            $('.field_wrapper').each(function(index, element) {
                $(element).find('.card-title').text('Product Variant ' + (index + 1));
            });
        }
    });
</script>
<!-- JavaScript to handle dynamic fields -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var wrapper = document.querySelector('.variant-wrapper');
        var addButton = document.querySelector('.add_button1');

        // Function to initialize Select2
        function initializeSelect2() {
            $('.select2').select2({
                width: '100%' // Optionally, you can set the width to 100% for better display
            });
        }

        // Initialize Select2 on page load
        initializeSelect2();

        // Handle adding new fields
        addButton.addEventListener('click', function() {
            var newFieldHtml = `
                <div class="field_wrapper mt-3">
                    <label class="card-title">Product Variant</label>
                    <div class="row">
                        <div class="col-md-3">
                            <label class="form-label">SKU</label>
                            <input type="text" class="form-control" name="sku[]" placeholder="SKU" />
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">Regular Price</label>
                            <input type="number" class="form-control" name="variant_regular_price[]" placeholder="Regular Price" />
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">Selling Price</label>
                            <input type="number" class="form-control" name="variant_selling_price[]" placeholder="Selling Price" />
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">Stock Amount</label>
                            <input type="number" class="form-control" name="variant_stock_amount[]" placeholder="Stock Amount" />
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-4">
                            <label class="form-label">Image</label>
                            <input type="file" class="form-control" name="variant_image[]" />
                        </div>
                        <div class="col-md-3 form-group">
                            <label class="form-label">Select Size</label>
                            <select multiple class="form-control select2 form-select" data-placeholder="Select Size" name="size_id[]">
                                @foreach ($sizes as $size)
                                    <option value="{{ $size->id }}">{{ $size->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-3 form-group">
                            <label class="form-label">Select Color</label>
                            <select multiple class="form-control select2 form-select" data-placeholder="Select Color" name="color_id[]">
                                @foreach ($colors as $color)
                                    <option value="{{ $color->id }}">{{ $color->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-2 d-flex align-items-end">
                            <a href="javascript:void(0);" class="remove_button btn btn-sm btn-danger mb-5" title="Remove field">
                                <i class="fa fa-minus"></i> Remove
                            </a>
                        </div>
                    </div>
                </div>
            `;
            wrapper.insertAdjacentHTML('beforeend', newFieldHtml);
            
            // Initialize Select2 on the newly added select fields
            initializeSelect2();
        });

        // Handle removal of fields
        wrapper.addEventListener('click', function(e) {
            if (e.target && e.target.classList.contains('remove_button')) {
                e.target.closest('.field_wrapper').remove();
            }
        });
    });
</script>













