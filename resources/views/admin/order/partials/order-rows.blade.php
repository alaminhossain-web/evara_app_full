@foreach($orders as $order)
<tr data-order-id="{{ $order->id }}" >
    <td><input type="checkbox" class="checkbox_ids" value="{{ $order->id }}"></td>
    {{-- <td>{{$loop->iteration}}</td> --}}
    <td>{{$order->id}}</td>
    <td>{{$order->order_total}}</td>
    <td>{{$order->order_date}}</td>
    <td>{{$order->order_status}}</td>
    <td>{{ isset($order->customer->name) || isset($order->customer->mobile) ? $order->customer->name.'('.$order->customer->mobile.')' : ''}}</td>
    <td>
        <a href="{{route('order.show', $order->id)}}" class="btn btn-info btn-sm float-start m-1" title="View Order Detail">
            <i class="fa fa-eye"></i>
        </a>
        <a href="{{route('order.edit', $order->id)}}" class="btn btn-success btn-sm float-start m-1 {{ $order->order_status == 'Complete' ? 'disabled' : '' }}" title="Order Edit">
            <i class="fa fa-edit"></i>
        </a>
        <a href="{{route('order.invoice-show', [ 'id' => $order->id ] )}}" class="btn btn-primary btn-sm float-start m-1" title="View Order Invoice">
            <i class="fa fa-info"></i>
        </a>
        <a href="{{route('order.invoice-download', $order->id)}}" target="_blank" class="btn btn-warning btn-sm float-start m-1" title="Download Order Invoice">
            <i class="fa fa-download"></i>
        </a>
        <form action="{{ route('order.destroy',$order->id) }}" method="post">
            @csrf
            @method('DELETE')
            <button type="submit" class="btn btn-danger btn-sm float-start m-1" {{ $order->order_status == 'Complete' ? 'disabled' : '' }} onclick="return confirm('Are you want to delete this !!!')">
                <i class="fa fa-trash"></i>
            </button>
        </form>
    </td>
</tr>
@endforeach
