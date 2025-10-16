import 'dart:io';

String Nama = "Lisa Ayu ARyanti";
String NIM = "23552011432";
String Kelas = "23 CNS B";

void main() async{
    print('============Data Diri===========');
    print('Nama: $Nama');
    print('NIM: $NIM');
    print('kelas: $Kelas');
    print('=================================');

    var input = [
        ["1.", "Pemrograman Mobile"],
        ["2.", "Pemrograman Web"],
        ["3.", "Keamanan Jaringan"],
        ["4.", "Keamanan Informasi"],
        ["5.", "Sistem Mikroprosesor"],
        ["6.", "Artificial Intellegent"],
        ["7.", "Personal Development"],
        ["8.", "Bahasa Indonesia"]
    ];
    dataHandling(input);
    print('================================');
    inputHarapanNilai(input); 
    print('================================');
    await showAsyncDemo(); 
    print('================================');
}

void dataHandling(input){
    print('Matkul Yang Diampu');
     input.forEach((data)=>
    print('${data[0]}. ${data[1]}'));
}

void inputHarapanNilai(List<List<String>> mataKuliahDiampu) {
    print("\n=========================================");
    print("INPUT HARAPAN NILAI");
  
Map<String, String> harapanNilai = {};

for (var matkulData in mataKuliahDiampu) {
    String namaMatkul = matkulData[1];
    stdout.write("Masukkan Harapan Nilai untuk '$namaMatkul': ");
    String? nilai = stdin.readLineSync(); 
    harapanNilai[namaMatkul] = nilai ?? "Belum diisi"; 
  }
  
print("\n--- REKAP HARAPAN NILAI ---");
    harapanNilai.forEach((matkul, nilai) {
    print("Mata Kuliah: $matkul \nHarapan Nilai: $nilai");
  });

}

Future delayedPrint(int seconds, String message) {
  final duration = Duration(seconds: seconds);
  return Future.delayed(duration).then((value) => message); 
}

Future<void> line1() async {
  return await Future.delayed(Duration(seconds: 4), () => (
    print('come stop the cry')
  ));
}

Future<void> line2() async {
  return await Future.delayed(Duration(seconds: 3), () => (
    print('it will bw alright')
  ));
}

Future<void> line3() async {
  return await Future.delayed(Duration(seconds: 3), () => (
    print('just take my hand')
  ));
}

Future<void> line4() async {
  return await Future.delayed(Duration(seconds: 3), () => (
    print('hold it tight')
  ));
}

Future<void> line5() async {
  return await Future.delayed(Duration(seconds: 4), () => (
    print('I will protect you, from')
  ));
}

Future<void> line6() async {
  return await Future.delayed(Duration(seconds: 3), () => (
    print('all around you')
  ));
}

Future<void> line7() async {
  return await Future.delayed(Duration(seconds: 3), () => (
    print('I will be here')
  ));
}

Future<void> line8() async {
  return await Future.delayed(Duration(seconds: 3), () => (
    print('dont you cry')
  ));
}

Future<void> showAsyncDemo() async {
  print("\n=========================================");
  print("You'll Be In My Heart");
  print("Proses dimulai..."); 

  await line1(); 
  await line2(); 
  await line3();
  await line4();
  await line5();
  await line6();
  await line7();
  await line8();
  
  delayedPrint(1, 'SELESAI!').then((status) {
  print(status);
  });
}
    




