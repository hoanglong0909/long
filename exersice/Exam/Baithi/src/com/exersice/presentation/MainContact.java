package com.exersice.presentation;

import com.exersice.data.ContactDB;
import com.exersice.model.Contact;
import com.exersice.service.ContactService;

import java.io.IOException;
import java.util.Scanner;

public class MainContact {
    public static void main(String[] args) {
        MainContact mainContact = new MainContact();
        try {
            mainContact.showMenu();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void showMenu() throws IOException {
        ContactService contactService = new ContactService();
        contactService.loadFile();
        while (true){
            System.out.println("________CHƯƠNG TRÌNH QUANT LÍ DANH BẠ________");
            System.out.println("Chọn chức năng theo số (để tiếp tục): ");
            System.out.println("1. Xem danh sách ");
            System.out.println("2. Thêm mới danh bạ");
            System.out.println("3. Cập nhật danh bạ ");
            System.out.println("4. xóa người dùng ");
            System.out.println("5. Tìm kiếm người dùng ");
            System.out.println("6. Đọc File ");
            System.out.println("7. Ghi File");
            System.out.println("8. Thoát chương trình");
            System.out.println("Chọn chức năng: ");
            Scanner scanner = new Scanner(System.in);
            int choose = scanner.nextInt();
            switch (choose){
                case 8:
                    System.out.println("Cảm ơn đã sử dụng dịch vụ");
                    return;
                default:
                    System.out.println("Bạn nhập sai vui lòng nhập lại");
                    break;
                case 1: printContact();
                    break;
                case 2: addContact();
                    break;
                case 3: editContact();
                    break;
                case 4: deleteContact();
                    break;
                case 5: searchContact();
                    break;
                case 6: readContact();
                    break;
                case 7: saveContact();
                    break;
            }
        }
    }



    private static void saveContact() throws IOException {
        ContactService contactService = new ContactService();
        contactService.updateFile();
        System.out.println("Đã lưu file Thành công ! ");
    }

    private static void readContact() throws IOException {
        ContactService contactService = new ContactService();
        contactService.printFile();
        contactService.loadFile();
    }

    private static void searchContact() {
        System.out.println("Nhập số điện thoại cần tìm: ");
        Scanner scanner = new Scanner(System.in);
        ContactService contactService = new ContactService();
        String phone = scanner.nextLine();
        if(contactService.findPhone(phone)==null){
            System.out.println("Không tìm thấy khách hàng");
        }else {
            System.out.println(contactService.findPhone(phone));
        }
        System.out.println("Bấm menu để tiếp tục thực hiện");
        System.out.println("=======================================");
    }



    private static boolean confirmMenu() {
        while (true) {
            Scanner scanner = new Scanner(System.in);
            System.out.println("Bạn chắc chắn muốn xóa học viên này?\n1. Có\n2. Không");
            int choise = scanner.nextInt();
            switch (choise) {
                case 1:
                    return true;
                case 2:
                    return false;
                default:
                    System.err.println("Chỉ 'Có' hoặc 'Không'!");
            }
        }
    }

    private static void deleteContact() throws IOException {
        ContactService contactService = new ContactService();
        Scanner scanner = new Scanner(System.in);
        System.out.println("Nhập số điện thoại của khách hàng muốn xóa: ");
        String phone = scanner.nextLine();
        contactService.findPhone(phone);
        if(contactService.findPhone(phone)==null){
            System.out.println("Không tìm thấy khách hàng");
        }else if (confirmMenu()){
            System.out.println( contactService.findPhone(phone));
            contactService.removeFile(phone);
            System.out.println("đã xóa thành công");
        }
    }



    private static void editContact() throws IOException {
        System.out.println("Nhập số điện thoại");
        ContactService contactService = new ContactService();
        Scanner scanner  = new Scanner(System.in);
        String phone = scanner.nextLine();
        if(  contactService.findPhone(phone) == null){
            System.out.println("bạn nhập sai !");
        }else {
            Contact contact = contactService.findPhone(phone);
            System.out.println(contact.toString());
            String name = contactService.validateName("nhập tên");
            String dob = contactService.validateDoB("Nhập ngày tháng năm sinh");
            String phone1 = contactService.inputPhoneNumber();
            System.out.println("Nhập group: ");
            String group = scanner.nextLine();
            System.out.println("Nhập giới tính: ");
            String gender = scanner.nextLine();
            System.out.println("Nhập địa chỉ: ");
            String address = scanner.nextLine();
            String email = contactService.inputEmail();
            System.out.println("Nhập tên facebook: ");
            String facebook = scanner.nextLine();
            contact.setName(name);
            contact.setDob(dob);
            contact.setPhone(phone1);
            contact.setGroup(group);
            contact.setGender(gender);
            contact.setAddress(address);
            contact.setEmail(email);
            contact.setFacebook(facebook);
            contactService.updateFile();
            System.out.println("Đã thay đổi thành công ! ");
        }
    }

    private static void addContact() throws IOException {
        Scanner scanner = new Scanner(System.in);
        ContactService contactService = new ContactService();
        String name = contactService.validateName("nhập tên");
        String phone = contactService.inputPhoneNumber();
        String dob = contactService.validateDoB("Nhập ngày tháng năm sinh");
        System.out.println("Nhập nhóm: ");
        String group = scanner.nextLine();
        System.out.println("Nhập Giới tính: ");
        String gender = scanner.nextLine();
        System.out.println("Nhập địa chỉ: ");
        String address = scanner.nextLine();
        String email = contactService.inputEmail();
        String facebook = contactService.inputFacebook();
        Contact contact = new Contact(name,dob,phone,group,gender,address,email,facebook);
        contactService.addFile(contact);
    }


    private static void printContact() {
        ContactService contactService = new ContactService();
        contactService.printFile();
    }

}
