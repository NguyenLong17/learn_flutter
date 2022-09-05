Bài tập 1: Thiết kế 1 class Notification có các trường thể hiện những thông tin sau:

id, mỗi Notification phải có 1 số định danh cá nhân để phân biệt với Notification khác
ngày tạo, phải biết Notification được tạo vào lúc nào
loại thông báo: ví dụ để biết đây là thông báo giao dịch, ưu đãi,…
Tiêu đề thông báo
Nội dung chính của thông báo
Icon
Thông báo đã đọc hay chưa
Lưu ý: Flutter cũng có 1 object tên Notification, nếu đặt trùng tên thì cẩn thận gọi nhầm object
Ví dụ: import ‘package:momo_app/models/notification.dart’ as model;

Bài tập 2: hoàn thiện giao diện sau
Momo

Bài tập 3:

tạo 1 List notifications chứa 10 Notification với thông tin đa dạng
hiển thị dữ liệu lên giao diện trên
Ví dụ: để lấy 1 notification từ notifications theo index: final notification = notifications[index];
Ví dụ hàm buildItem: Widget buildItem(model.Notification notification)