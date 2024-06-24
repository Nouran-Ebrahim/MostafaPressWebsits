@extends('Admin.layout')
@push('css')
    <style>
        .image-column {
            background-color: gray;
        }
    </style>
@endpush
@section('pagetitle', __('trans.partners'))
@section('content')
    <div class="row">

        <div class="my-2 col-6 col-md-3 text-center">
            <a href="{{ route('admin.partners.create') }}" class="main-btn" disabled>@lang('trans.add_new')</a>
        </div>
        <div class="my-2 col-6 col-md-3 text-center">
            <button type="button" id="DeleteSelected" onclick="DeleteSelected('partners')" class="btn btn-dark"
                disabled>@lang('trans.Delete_Selected')</button>
        </div>
    </div>
    <table class="table table-bordered data-table" id="DataTable">
        <thead>
            <tr>
                <th><input type="checkbox" id="ToggleSelectAll" class="main-btn"></th>
                <th>#</th>
                <th>@lang('trans.image')</th>
                <th>@lang('trans.display')</th>
                <th></th>
            </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
@endsection


@push('js')
    <script type="text/javascript">
        $(function() {

            var table = $('#DataTable').DataTable({
                processing: true,
                serverSide: true,
                oLanguage: {
                    sUrl: '{{ DT_Lang() }}'
                },
                ajax: "{{ route('admin.partners.index') }}",
                dom: 'Blfrtip',
                buttons: [{
                        extend: 'copy',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    {
                        extend: 'excel',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    {
                        extend: 'csv',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    {
                        extend: 'pdf',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    {
                        extend: 'print',
                        exportOptions: {
                            stripHtml: false,
                            columns: ':visible'
                        }
                    },
                    'colvis'
                ],
                lengthMenu: [
                    [10, 25, 50, -1],
                    [10, 25, 50, "All"]
                ],
                columns: [{
                        data: 'checkbox',
                        orderable: false,
                        searchable: false
                    }, {
                        data: 'DT_RowIndex',
                        orderable: false,
                        searchable: false
                    },
                    {
                        data: 'image',
                        name: 'image',
                        className: 'image-column'
                    },
                    {
                        data: 'status',
                        sortable: false
                    }, {
                        data: 'action',
                        name: 'action',

                        orderable: false
                    }
                ]
                // ,
                // createdRow: function(row, data, dataIndex) {
                //     $('td:eq(2)', row).addClass('image-column');
                // }
            });

        });
    </script>
@endpush
