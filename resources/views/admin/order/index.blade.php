@extends('admin.master')
@section('title','Manage Order Page')
@section('body')

    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Order Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Order</a></li>
                <li class="breadcrumb-item active" aria-current="page">Manage Order</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body project-type-container projects p-4">
                    <h4 class="m-0" id="typeTitle">Orders</h4>
                    <div class="d-sm-flex align-items-center mx-auto">
                        <nav class="nav card-body p-1 project-type" id="nav">
                            <a class="mb-1 mb-xl-0 nav-link border" href="javascript:void(0);" onclick="filterOrdersByStatus('All')">All
                                <span class="badge bg-primary bg-white rounded-pill ms-3">{{ $statusCounts['All'] ?? 0 }}</span>
                            </a>
                            <a class="mb-1 mb-xl-0 nav-link border" href="javascript:void(0);" onclick="filterOrdersByStatus('Pending')">Pending
                                <span class="badge bg-primary bg-white rounded-pill ms-3">{{ $statusCounts['Pending'] ?? 0 }}</span>
                            </a>
                            <a class="mb-1 mb-xl-0 nav-link border" href="javascript:void(0);" onclick="filterOrdersByStatus('Processing')">In Progress
                                <span class="badge bg-primary bg-white rounded-pill ms-3">{{ $statusCounts['Processing'] ?? 0 }}</span>
                            </a>
                            <a class="mb-1 mb-xl-0 nav-link border" href="javascript:void(0);" onclick="filterOrdersByStatus('Complete')">Completed
                                <span class="badge bg-primary bg-white rounded-pill ms-3">{{ $statusCounts['Complete'] ?? 0 }}</span>
                            </a>
                            <a class="mb-1 mb-xl-0 nav-link border" href="javascript:void(0);" onclick="filterOrdersByStatus('Cancel')">Cancel
                                <span class="badge bg-primary bg-white rounded-pill ms-3">{{ $statusCounts['Cancel'] ?? 0 }}</span>
                            </a>
                            
                        </nav>
                    </div>
                    <div class="d-flex justify-content-between">
                        <!-- Date Filters -->
                        <select id="dateFilter" class="form-select select2" onchange="applyDateFilter(this.value)">
                            <option value="lifetime">Lifetime</option>
                            <option value="today">Today</option>
                            <option value="yesterday">Yesterday</option>
                            <option value="last_week">Last Week</option>
                            <option value="last_month">Last Month</option>
                            <option value="last_year">Last Year</option>
                            <option value="custom">Custom</option>
                        </select>
                        
                        <!-- Custom Date Range (visible only for custom filter) -->
                        <div id="customDateRange" style="display:none;">
                            <input type="date" id="startDate" class="form-control" />
                            <input type="date" id="endDate" class="form-control" />
                            <button class="btn btn-primary" onclick="applyCustomFilter()">Apply</button>
                        </div>
                    </div>
                    <div class="d-flex">
                        <select name="status" id="orderStatusDropdown" class="form-select" onchange="updateSelectedOrdersStatus()">
                            <option value="">Select Status</option>
                            <option value="Pending">Pending</option>
                            <option value="Processing">Processing</option>
                            <option value="Complete">Completed</option>
                            <option value="Cancel">Cancel</option>
                        </select>
                    </div>
                    
                    
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card">
                <div class="card-body">
                    <p class="text-muted">{{session('message')}}</p>
                    <div class="table-responsive" id="orderTable">
                        <table id="example3" class="table table-bordered text-nowrap border-bottom">
                            <thead>
                                <tr>
                                    <th class="border-bottom-0">
                                        <input type="checkbox" id="select_all_ids">
                                    </th>
                                    
                                    {{-- <th class="border-bottom-0">SL NO</th> --}}
                                    <th class="border-bottom-0">Order Id</th>
                                    <th class="border-bottom-0">Order Total</th>
                                    <th class="border-bottom-0">Order Date</th>
                                    <th class="border-bottom-0">Order Status</th>
                                    <th class="border-bottom-0">Customer Info</th>
                                    <th class="border-bottom-0">Action</th>
                                </tr>
                            </thead>
                            <tbody id="rows">
                                @include('admin.order.partials.order-rows', ['orders' => $orders])
                                

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
    // Toggle all checkboxes when the master checkbox is clicked
    $(document).on('click', '#select_all_ids', function () {
        var isChecked = $(this).is(':checked');
        $('.checkbox_ids:visible').prop('checked', isChecked);
    });

   

    // Update selected orders status
    function updateSelectedOrdersStatus() {
        var newStatus = document.getElementById('orderStatusDropdown').value;

        if (!newStatus) {
            toastr.warning('Please select a valid status.', 'Warning');
            return;
        }

        var selectedOrderIds = [];
        $('.checkbox_ids:visible:checked').each(function() {
            selectedOrderIds.push($(this).val());
        });

        if (selectedOrderIds.length === 0) {
            toastr.warning('Please select at least one order to update.', 'Warning');
            return;
        }

        $.ajax({
            url: "{{ route('orders.updateStatus') }}",
            type: 'POST',
            data: {
                status: newStatus,
                order_ids: selectedOrderIds,
                _token: "{{ csrf_token() }}"
            },
            success: function(response) {
                $('.checkbox_ids:visible:checked').each(function() {
                    var orderId = $(this).val();
                    var newStatusCell = $('tr[data-order-id="' + orderId + '"]').find('td').eq(4); // Assuming 5th column contains the status
                    newStatusCell.text(response.status);
                });
                $("#nav").load(location.href + " #nav");
                toastr.success('Order status updated successfully.', 'Success');
                $('.checkbox_ids:visible:checked').prop('checked', false);
                document.getElementById('orderStatusDropdown').value = ""; 
            },
            error: function(xhr) {
                toastr.error('Failed to update order status.', 'Error');
            }
        });
    }

    let selectedStatus = 'All';
    let selectedDateRange = 'lifetime';

    function filterOrders(status, dateRange = 'lifetime', startDate = null, endDate = null) {
        $.ajax({
            url: "{{ route('orders.filter') }}",
            type: 'GET',
            data: {
                status: status,
                date_range: dateRange,
                start_date: startDate,
                end_date: endDate
            },
            success: function(response) {
                $('#orderTable tbody').html(response);
                reapplyCheckboxFunctionality();
                updateSelectAllCheckboxState();
            }
        });
    }

    function applyDateFilter(dateRange) {
        selectedDateRange = dateRange;
        if (dateRange === 'custom') {
            document.getElementById('customDateRange').style.display = 'block';
        } else {
            document.getElementById('customDateRange').style.display = 'none';
            filterOrders(selectedStatus, dateRange);
        }
    }

    function applyCustomFilter() {
        var startDate = document.getElementById('startDate').value;
        var endDate = document.getElementById('endDate').value;
        if (startDate && endDate) {
            filterOrders(selectedStatus, 'custom', startDate, endDate);
        }
    }

    function filterOrdersByStatus(status) {
        selectedStatus = status;
        filterOrders(status, selectedDateRange);
    }

    
</script>

    

<script src="{{ asset('/') }}build/assets/app-65976120.js "></script>


@endsection
