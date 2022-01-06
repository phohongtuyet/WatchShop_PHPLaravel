<table>
    <thead>
    <tr>
        <th class="text-center" width="20">Loại</th>
        <th width="20">Thương hiệu</th>
        <th width="20">Chất liệu</th>
        <th width="30">Tên sản phẩm</th>
        <th width="30">Tên sản phẩm không dấu</th>
        <th width="20">Giới tính</th>
        <th width="20">Số lượng </th>
        <th width="20">Đơn giá</th>
        <th width="40">Hình ảnh</th>

    </tr>
    </thead>
    <tbody>
        @foreach($sanpham as $value)
            <tr>
                <td>{{ $value->loai_id }}</td>
                <td>{{ $value->thuonghieu_id }}</td>
                <td>{{ $value->chatlieu_id }}</td>
                <td>{{ $value->tensanpham }}</td>
                <td>{{ $value->tensanpham_slug }}</td>
                <td>{{ $value->gioitinh }}</td>
                <td>{{ $value->soluong }}</td>
                <td>{{ $value->dongia }}</td> 
                <td>{{ $value->hinhanh }}</td>
            </tr>
        @endforeach
    </tbody>
</table>