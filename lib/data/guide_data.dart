import '../models/guide_model.dart';

final List<Guide> guides = [
  Guide(
    id: 1,
    title: "Sửa tai nghe bị hỏng 1 bên",
    description: "Khắc phục lỗi tai nghe chỉ nghe 1 bên",
    content: "Bước 1: Kiểm tra jack cắm...\nBước 2: Kiểm tra dây...\nBước 3: Hàn lại dây nếu bị đứt...",
    imageUrl: "https://picsum.photos/id/201/400/250",
  ),
  Guide(
    id: 2,
    title: "Sửa quạt mini không quay",
    description: "Quạt không chạy dù đã sạc",
    content: "Bước 1: Kiểm tra pin...\nBước 2: Kiểm tra motor...\nBước 3: Vệ sinh cánh quạt...",
    imageUrl: "https://picsum.photos/id/202/400/250",
  ),
  Guide(
    id: 3,
    title: "Sửa cáp sạc bị lỏng",
    description: "Cáp sạc chập chờn",
    content: "Bước 1: Kiểm tra đầu cáp...\nBước 2: Dùng băng keo cố định...\nBước 3: Thay đầu mới nếu cần...",
    imageUrl: "https://picsum.photos/id/203/400/250",
  ),
];
