@extends('layouts.admin')
@section('title', 'Đơn hàng')
@section('content')
    <div class="card">
        <div class="card-body table-responsive">
            <table id="table_id" class="table table-bordered table-hover table-sm ">
                <thead>
                    <tr>
                        <th width="5%">#</th>
                        <th width="10%">Khách hàng</th>
                        <th width="45%">Thông tin giao hàng</th>
                        <th width="15%">Ngày đặt</th>
                        <th width="8%">Tình trạng</th>
                        <th width="7%">Chi tiết</th>
                        <th width="4%">Sửa</th>
                        <th width="4%">Xóa</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($donhang as $value)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $value->NguoiDung->name }}</td>
                        <td>
                            <span class="d-block">Điện thoại: <strong>{{ $value->dienthoaigiaohang }}</strong></span>
                            <span class="d-block">Địa chỉ giao: <strong>{{ $value->diachigiaohang }}</strong></span>
                            <span class="d-block">Sản phẩm:</span>
                            <table class="table table-bordered table-hover table-sm mb-0">
                                <thead>
                                    <tr>
                                        <th width="5%">#</th>
                                        <th>Sản phẩm</th>
                                        <th width="5%">SL</th>
                                        <th width="15%">Đơn giá</th>
                                        <th width="20%">Thành tiền</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $tongtien = 0; @endphp
                                    @foreach($value->DonHang_ChiTiet as $chitiet)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $chitiet->SanPham->tensanpham }}</td>
                                        <td>{{ $chitiet->soluongban }}</td>
                                        <td class="text-end">{{ number_format($chitiet->dongiaban) }}<sup><u>đ</u></sup></td>
                                        <td class="text-end">{{ number_format($chitiet->soluongban * $chitiet->dongiaban) }}<sup><u>đ</u></sup></td>
                                    </tr>
                                    @php $tongtien += $chitiet->soluongban * $chitiet->dongiaban; @endphp
                                    @endforeach
                                    <tr>
                                        <td colspan="4">Tổng tiền sản phẩm:</td>
                                        <td class="text-end"><strong>{{ number_format($tongtien) }}</strong><sup><u>đ</u></sup></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <td>{{ $value->created_at->format('d/m/Y H:i:s') }}</td>
                        <td>
                            <form action="{{ route('admin.donhang.trangthai', ['id' =>$value->id]) }}" method="post">
                            @csrf
                                <div class="select-itms">
                                    <select name="select" id="select1" onchange="if(this.value != 0) { this.form.submit(); }">
                                        <option value="1" {{ session('select') == 'moi' ? 'selected' : '' }}> Mới</option>
                                        <option value="2" {{ session('select') == 'dangxacnhan' ? 'selected' : '' }}>Đang xác nhận / Đã xác nhận</option>
                                        <option value="3" {{ session('select') == 'dahuy' ? 'selected' : '' }}>Đã hủy</option>
                                        <option value="4" {{ session('select') == 'dangdonggoi' ? 'selected' : '' }}>Đang đóng gói sản phẩm</option>
                                        <option value="5" {{ session('select') == 'chodinhan' ? 'selected' : '' }}>Chờ đi nhận / Đang đi nhận / Đã nhận hàng </option>
                                        <option value="6" {{ session('select') == 'dangchuyen' ? 'selected' : '' }}>Đang chuyển</option>
                                        <option value="7" {{ session('select') == 'thatbai' ? 'selected' : '' }}>Thất bại </option>
                                        <option value="8" {{ session('select') == 'dangchuyenhoan' ? 'selected' : '' }}>Đang chuyển hoàn</option>
                                        <option value="9" {{ session('select') == 'dachuyenhoan' ? 'selected' : '' }}>Đã chuyển hoàn</option>
                                        <option value="10" {{ session('select') == 'thanhcong' ? 'selected' : '' }}>Thành công</option>
                                    </select>
                                </div>
                            </form>                           
                        </td>
                        <td class="text-center"><a href="{{ route('admin.donhang.chitiet', ['id' => $value->id]) }}"><i class="fas fa-info"></i></a></td>
                        <td class="text-center"><a href="{{ route('admin.donhang.sua', ['id' => $value->id]) }}"><i class="fas fa-edit"></i></a></td>
                        <td class="text-center"><a href="{{ route('admin.donhang.xoa', ['id' => $value->id]) }}"><i class="fas fa-trash-alt text-danger"></i></a></td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection