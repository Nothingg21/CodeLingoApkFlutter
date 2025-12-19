import 'package:flutter/material.dart';
import 'dart:ui'; // Efek Glass
import 'dart:math'; // Animasi & Random
import 'dart:async'; // Timer

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:apk3/auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const CodeLingoApp());
}

// ==========================================
// 1. DATA CENTER (KONTEN TETAP LENGKAP)
// ==========================================
class DataStore {
  static const Map<String, Map<String, dynamic>> materials = {
    "Web Development": {
      "icon": Icons.language, "color": Colors.pinkAccent,
      "content": "# Web Development\n\nPengembangan aplikasi berbasis web adalah proses menciptakan situs web dan aplikasi web yang dapat diakses melalui browser internet. Ini melibatkan kombinasi teknologi frontend dan backend untuk menciptakan pengalaman pengguna yang interaktif dan dinamis.\n\n## Frontend Development\nFrontend development fokus pada apa yang dilihat dan berinteraksi pengguna. Teknologi utama meliputi:\n\n- **HTML (HyperText Markup Language)**: Bahasa markup untuk struktur halaman web. HTML menggunakan elemen seperti `<div>`, `<p>`, `<h1>` untuk mengorganisir konten.\n- **CSS (Cascading Style Sheets)**: Bahasa styling untuk mengatur tampilan visual. CSS mengontrol warna, font, layout, dan animasi.\n- **JavaScript**: Bahasa pemrograman untuk membuat halaman web interaktif. JS memungkinkan manipulasi DOM, event handling, dan komunikasi dengan server.\n\n## Backend Development\nBackend development menangani logika server-side, database, dan API. Teknologi populer:\n\n- **Node.js**: Runtime JavaScript di server yang memungkinkan penggunaan JS untuk backend.\n- **Python dengan Django/Flask**: Framework Python yang powerful untuk web development.\n- **PHP**: Bahasa scripting server-side yang banyak digunakan untuk CMS seperti WordPress.\n- **Ruby on Rails**: Framework full-stack untuk rapid web development.\n\n## Modern Web Technologies\nTeknologi terkini yang mengubah landscape web development:\n\n- **React.js**: Library JavaScript untuk building user interfaces.\n- **Vue.js**: Progressive framework untuk building UIs.\n- **Angular**: Platform untuk building mobile dan desktop web apps.\n- **Progressive Web Apps (PWAs)**: Web apps yang memberikan pengalaman native app.\n\n## Best Practices\nUntuk menjadi web developer yang kompeten, fokus pada:\n1. Responsive design principles\n2. Performance optimization\n3. Security best practices\n4. Version control dengan Git\n5. Testing dan debugging skills\n\nWeb development terus berkembang dengan teknologi baru seperti WebAssembly, serverless computing, dan AI integration."
    },
    "Database": {
      "icon": Icons.storage, "color": Colors.indigoAccent,
      "content": "# Database Management Systems\n\nDatabase adalah kumpulan data terorganisir yang memungkinkan penyimpanan, pengambilan, dan manipulasi data secara efisien. Sistem manajemen database (DBMS) adalah software yang mengelola database.\n\n## SQL Databases (Relational)\nDatabase relasional menyimpan data dalam tabel dengan relasi yang jelas:\n\n- **MySQL**: Open-source RDBMS yang populer untuk web applications. Mendukung ACID transactions dan memiliki performa tinggi.\n- **PostgreSQL**: Advanced open-source RDBMS dengan fitur enterprise-grade. Mendukung JSON, full-text search, dan spatial data.\n- **Oracle Database**: Enterprise RDBMS dengan fitur advanced untuk large-scale applications.\n- **Microsoft SQL Server**: RDBMS dari Microsoft dengan integrasi yang baik dengan ekosistem .NET.\n\n## NoSQL Databases (Non-Relational)\nDatabase non-relasional menawarkan fleksibilitas yang lebih besar untuk data tidak terstruktur:\n\n- **MongoDB**: Document-oriented database yang menyimpan data dalam format BSON (Binary JSON).\n- **Cassandra**: Distributed database yang dirancang untuk handling large amounts of data across commodity servers.\n- **Redis**: In-memory data structure store yang digunakan sebagai database, cache, dan message broker.\n- **Firebase Firestore**: Cloud-hosted NoSQL database dengan real-time capabilities.\n\n## Database Design Principles\nPrinsip desain database yang baik:\n\n1. **Normalization**: Proses mengorganisir data untuk menghindari redundansi.\n2. **Indexing**: Teknik untuk meningkatkan performa query.\n3. **ACID Properties**: Atomicity, Consistency, Isolation, Durability untuk transaction integrity.\n4. **Scalability**: Kemampuan database untuk handle growth dalam data dan traffic.\n\n## Database Operations\nOperasi CRUD (Create, Read, Update, Delete) adalah fondasi:\n\n- **CREATE**: INSERT statements untuk menambah data baru.\n- **READ**: SELECT statements untuk mengambil data.\n- **UPDATE**: MODIFY statements untuk mengubah data existing.\n- **DELETE**: REMOVE statements untuk menghapus data.\n\n## Advanced Topics\nTopik lanjutan dalam database management:\n\n- **Database Security**: Proteksi data dari unauthorized access.\n- **Backup & Recovery**: Strategi untuk data protection dan disaster recovery.\n- **Performance Tuning**: Optimisasi query dan database configuration.\n- **Data Warehousing**: Sistem untuk analytical processing dan business intelligence.\n\nMemahami database adalah kunci untuk building applications yang scalable dan reliable."
    },
    "Jaringan Komputer": {
      "icon": Icons.hub, "color": Colors.cyanAccent,
      "content": "# Computer Networking Fundamentals\n\nJaringan komputer adalah sistem yang menghubungkan komputer dan perangkat lain untuk berbagi sumber daya dan berkomunikasi. Ini adalah fondasi dari internet dan komunikasi digital modern.\n\n## OSI Model (Open Systems Interconnection)\nModel 7-layer untuk networking:\n\n1. **Physical Layer**: Mengatur transmisi bit mentah melalui media fisik (kabel, wireless).\n2. **Data Link Layer**: Menyediakan node-to-node data transfer dan error detection.\n3. **Network Layer**: Mengatur packet forwarding dan routing melalui network.\n4. **Transport Layer**: Menyediakan end-to-end communication dan error recovery.\n5. **Session Layer**: Mengelola dialog control dan token management.\n6. **Presentation Layer**: Mengatur data representation dan encryption.\n7. **Application Layer**: Interface antara user applications dan network.\n\n## TCP/IP Model\nModel 4-layer yang digunakan dalam praktik:\n\n- **Network Access Layer**: Equivalent ke Physical dan Data Link OSI layers.\n- **Internet Layer**: Mengatur packet routing (IP protocol).\n- **Transport Layer**: Mengatur end-to-end communication (TCP/UDP).\n- **Application Layer**: Mengatur application protocols (HTTP, FTP, SMTP).\n\n## Network Topologies\nArsitektur fisik dan logical dari network:\n\n- **Bus Topology**: Semua devices terhubung ke single cable.\n- **Star Topology**: Semua devices terhubung ke central hub/switch.\n- **Ring Topology**: Devices terhubung dalam circular fashion.\n- **Mesh Topology**: Setiap device terhubung ke setiap device lain.\n- **Tree Topology**: Hierarchical structure seperti star-bus hybrid.\n\n## Network Protocols\nProtokol yang mengatur komunikasi:\n\n- **TCP (Transmission Control Protocol)**: Connection-oriented, reliable delivery.\n- **UDP (User Datagram Protocol)**: Connectionless, faster but less reliable.\n- **IP (Internet Protocol)**: Addressing dan routing packets.\n- **HTTP/HTTPS**: Web communication protocols.\n- **DNS**: Domain Name System untuk name resolution.\n\n## Network Security\nProteksi network dari threats:\n\n1. **Firewalls**: Filter traffic berdasarkan security rules.\n2. **VPN (Virtual Private Network)**: Secure connection over public networks.\n3. **Encryption**: SSL/TLS untuk secure data transmission.\n4. **Intrusion Detection Systems**: Monitor dan respond ke suspicious activities.\n\n## Wireless Networking\nTeknologi nirkabel:\n\n- **Wi-Fi Standards**: 802.11a/b/g/n/ac/ax dengan berbagai speeds dan ranges.\n- **Bluetooth**: Short-range wireless communication.\n- **Cellular Networks**: 4G/5G untuk mobile connectivity.\n- **IoT Protocols**: MQTT, CoAP untuk Internet of Things.\n\n## Network Administration\nTugas network administrator:\n\n- **Configuration Management**: Setup dan maintain network devices.\n- **Performance Monitoring**: Track network health dan identify bottlenecks.\n- **Troubleshooting**: Diagnose dan resolve connectivity issues.\n- **Security Implementation**: Deploy dan maintain security measures.\n\nJaringan komputer adalah backbone dari digital communication dan understanding fundamentals ini essential untuk IT professionals."
    },
    "Artificial Intelligence": {
      "icon": Icons.psychology, "color": Colors.purpleAccent,
      "content": "# Artificial Intelligence: The Future of Computing\n\nKecerdasan Buatan (AI) adalah simulasi kecerdasan manusia dalam mesin yang diprogram untuk berpikir dan belajar seperti manusia. AI telah berevolusi dari konsep teoritis menjadi teknologi yang mengubah berbagai industri.\n\n## Machine Learning Fundamentals\nMachine Learning adalah subset dari AI yang fokus pada pembelajaran dari data:\n\n- **Supervised Learning**: Model belajar dari labeled data. Contoh: Classification, Regression.\n- **Unsupervised Learning**: Model menemukan patterns dalam unlabeled data. Contoh: Clustering, Dimensionality Reduction.\n- **Reinforcement Learning**: Agent belajar melalui trial-and-error dengan rewards/penalties.\n\n## Deep Learning Revolution\nDeep Learning menggunakan neural networks dengan multiple layers:\n\n- **Neural Networks**: Inspired oleh human brain structure.\n- **Convolutional Neural Networks (CNNs)**: Excellent untuk image recognition.\n- **Recurrent Neural Networks (RNNs)**: Good untuk sequential data seperti text dan time series.\n- **Transformers**: Architecture yang powerful untuk natural language processing.\n\n## AI Applications Across Industries\nAI mengubah berbagai sektor:\n\n### Healthcare\n- Medical imaging analysis\n- Drug discovery acceleration\n- Personalized treatment plans\n- Predictive diagnostics\n\n### Finance\n- Algorithmic trading\n- Fraud detection\n- Credit scoring\n- Robo-advisors\n\n### Transportation\n- Autonomous vehicles\n- Route optimization\n- Predictive maintenance\n- Traffic management\n\n### Entertainment\n- Content recommendation systems\n- Game AI opponents\n- Video game procedural generation\n- Music composition\n\n## Natural Language Processing (NLP)\nNLP memungkinkan machines mengerti dan generate human language:\n\n- **Text Classification**: Sentiment analysis, spam detection.\n- **Machine Translation**: Google Translate, language conversion.\n- **Chatbots & Virtual Assistants**: Siri, Alexa, customer service bots.\n- **Text Generation**: GPT models, creative writing assistance.\n\n## Computer Vision\nAI untuk mengerti dan interpret visual information:\n\n- **Image Recognition**: Identifying objects in images.\n- **Object Detection**: Locating and classifying objects.\n- **Image Segmentation**: Dividing images into meaningful parts.\n- **Facial Recognition**: Biometric identification.\n\n## AI Ethics & Challenges\nPertimbangan penting dalam AI development:\n\n1. **Bias & Fairness**: Ensuring AI systems tidak discriminate.\n2. **Privacy**: Protecting user data dan preventing misuse.\n3. **Transparency**: Understanding how AI makes decisions.\n4. **Job Displacement**: Managing impact pada workforce.\n5. **Safety**: Preventing harmful AI applications.\n\n## Future of AI\nTrend dan development masa depan:\n\n- **General AI**: Machines dengan intelligence level manusia.\n- **AI-Human Collaboration**: AI sebagai tools untuk augment human capabilities.\n- **Edge AI**: AI processing pada devices instead of cloud.\n- **Explainable AI**: Making AI decisions understandable ke humans.\n- **AI in Scientific Research**: Accelerating discoveries dalam berbagai fields.\n\nAI adalah field yang berkembang pesat dengan potential untuk solve complex problems dan create new opportunities. Understanding fundamentals AI essential untuk future-ready professionals."
    },
    "Mobile Development": {
      "icon": Icons.smartphone, "color": Colors.limeAccent,
      "content": "# Mobile Application Development\n\nPengembangan aplikasi mobile adalah proses menciptakan software untuk smartphone dan tablet. Dengan billions users worldwide, mobile apps menjadi essential untuk business dan consumer engagement.\n\n## Native Mobile Development\nDevelopment untuk platform specific dengan optimal performance:\n\n### Android Development\n- **Kotlin**: Modern programming language resmi untuk Android development.\n- **Java**: Legacy language masih digunakan dalam banyak projects.\n- **Android Studio**: Official IDE dengan powerful tools untuk development.\n- **Android SDK**: Comprehensive toolkit untuk building Android apps.\n\n### iOS Development\n- **Swift**: Modern, safe, dan fast programming language dari Apple.\n- **Objective-C**: Legacy language masih ada dalam older codebases.\n- **Xcode**: Apple's integrated development environment.\n- **iOS SDK**: Framework untuk building iOS applications.\n\n## Cross-Platform Development\nSingle codebase untuk multiple platforms:\n\n- **Flutter**: Google's UI toolkit untuk building natively compiled applications.\n- **React Native**: Facebook's framework untuk building mobile apps dengan JavaScript.\n- **Xamarin**: Microsoft's framework menggunakan C# dan .NET.\n- **Ionic**: Hybrid framework menggunakan web technologies.\n\n## Mobile UI/UX Design Principles\nPrinciples untuk creating great mobile experiences:\n\n1. **Platform Guidelines**: Follow Android Material Design dan iOS Human Interface Guidelines.\n2. **Responsive Design**: Apps yang work well pada berbagai screen sizes.\n3. **Intuitive Navigation**: Simple dan predictable navigation patterns.\n4. **Performance**: Smooth animations dan fast loading times.\n5. **Accessibility**: Apps yang usable oleh semua users termasuk dengan disabilities.\n\n## Mobile App Architecture\nStruktur dan patterns untuk scalable mobile apps:\n\n- **MVC (Model-View-Controller)**: Separation of concerns pattern.\n- **MVVM (Model-View-ViewModel)**: Popular dalam modern development.\n- **Clean Architecture**: Separation logic, data, dan presentation layers.\n- **State Management**: Redux, Provider, Bloc untuk managing app state.\n\n## Mobile Development Tools & Technologies\nEssential tools untuk mobile developers:\n\n### Development Tools\n- **Version Control**: Git untuk code collaboration.\n- **CI/CD**: Automated testing dan deployment pipelines.\n- **Analytics**: Firebase Analytics, Mixpanel untuk user behavior tracking.\n- **Crash Reporting**: Firebase Crashlytics untuk error monitoring.\n\n### Backend Integration\n- **REST APIs**: Standard untuk communication dengan servers.\n- **GraphQL**: Query language untuk APIs dengan flexible data fetching.\n- **Real-time Communication**: WebSockets, Firebase Realtime Database.\n- **Authentication**: OAuth, JWT untuk secure user authentication.\n\n## Mobile App Monetization\nStrategies untuk generating revenue dari mobile apps:\n\n1. **Free Apps with Ads**: Revenue melalui advertising networks.\n2. **Freemium Model**: Basic features free, premium features paid.\n3. **In-App Purchases**: Selling virtual goods atau premium content.\n4. **Subscriptions**: Recurring revenue melalui subscription models.\n5. **Paid Apps**: One-time purchase untuk full access.\n\n## Testing & Quality Assurance\nEnsuring app quality sebelum release:\n\n- **Unit Testing**: Testing individual components.\n- **Integration Testing**: Testing component interactions.\n- **UI Testing**: Automated testing untuk user interface.\n- **Beta Testing**: Real user testing sebelum official release.\n- **Performance Testing**: Ensuring apps perform well under various conditions.\n\n## App Store Optimization (ASO)\nStrategies untuk increasing app visibility:\n\n- **App Title & Description**: Keyword-rich dan compelling descriptions.\n- **Screenshots & Icons**: High-quality visuals yang showcase app features.\n- **Ratings & Reviews**: Encouraging positive user feedback.\n- **Updates**: Regular updates untuk maintain user engagement.\n\n## Future of Mobile Development\nEmerging trends dan technologies:\n\n- **5G Integration**: Faster networks enabling new capabilities.\n- **Augmented Reality (AR)**: ARKit, ARCore untuk immersive experiences.\n- **Machine Learning**: On-device ML untuk intelligent features.\n- **Progressive Web Apps (PWAs)**: Web apps dengan native app capabilities.\n- **Wearable Integration**: Apps untuk smartwatches dan IoT devices.\n\nMobile development adalah field yang dynamic dengan constant evolution. Staying updated dengan latest technologies dan best practices essential untuk success."
    },
    "Algoritma": {
      "icon": Icons.code, "color": Colors.greenAccent,
      "content": "# Algorithm Design & Analysis\n\nAlgoritma adalah urutan langkah-langkah terstruktur untuk menyelesaikan masalah atau melakukan komputasi. Algoritma adalah jantung dari computer science dan programming.\n\n## Algorithm Characteristics\nCiri-ciri algoritma yang baik:\n\n1. **Input**: Algoritma harus memiliki input yang jelas dan terdefinisi.\n2. **Output**: Setiap algoritma harus menghasilkan output yang diinginkan.\n3. **Definiteness**: Setiap langkah harus jelas dan tidak ambigu.\n4. **Finiteness**: Algoritma harus berakhir setelah finite number of steps.\n5. **Effectiveness**: Setiap langkah harus feasible dan dapat dilakukan.\n\n## Algorithm Complexity Analysis\nMengukur efficiency dari algoritma:\n\n### Time Complexity\nMengukur berapa lama algoritma berjalan:\n\n- **Big O Notation**: Upper bound dari running time.\n- **Big Ω Notation**: Lower bound dari running time.\n- **Big Θ Notation**: Tight bound dari running time.\n\nCommon time complexities:\n- O(1): Constant time\n- O(log n): Logarithmic time\n- O(n): Linear time\n- O(n log n): Linearithmic time\n- O(n²): Quadratic time\n- O(2^n): Exponential time\n\n### Space Complexity\nMengukur memory usage dari algoritma:\n\n- **Auxiliary Space**: Extra space digunakan selain input.\n- **Total Space**: Space untuk input plus auxiliary space.\n\n## Sorting Algorithms\nAlgoritma untuk mengurutkan data:\n\n### Comparison-Based Sorting\n- **Bubble Sort**: Simple tapi inefficient (O(n²)).\n- **Insertion Sort**: Efficient untuk small datasets.\n- **Selection Sort**: Simple selection of minimum elements.\n- **Merge Sort**: Divide-and-conquer dengan O(n log n).\n- **Quick Sort**: Fast in-practice dengan average O(n log n).\n- **Heap Sort**: Menggunakan heap data structure.\n\n### Non-Comparison Sorting\n- **Counting Sort**: Untuk range terbatas integers.\n- **Radix Sort**: Sort berdasarkan individual digits.\n- **Bucket Sort**: Distribution sort dengan buckets.\n\n## Searching Algorithms\nAlgoritma untuk finding elements dalam data structures:\n\n- **Linear Search**: Simple sequential search (O(n)).\n- **Binary Search**: Efficient untuk sorted arrays (O(log n)).\n- **Hash Table Search**: Average O(1) dengan hash functions.\n- **Tree Search**: Binary search trees, AVL trees, Red-Black trees.\n\n## Graph Algorithms\nAlgoritma untuk working dengan graphs:\n\n### Traversal Algorithms\n- **Breadth-First Search (BFS)**: Level-order traversal.\n- **Depth-First Search (DFS)**: Stack-based traversal.\n\n### Shortest Path Algorithms\n- **Dijkstra's Algorithm**: Single source shortest path.\n- **Bellman-Ford Algorithm**: Handles negative weights.\n- **Floyd-Warshall Algorithm**: All-pairs shortest paths.\n\n### Minimum Spanning Tree\n- **Kruskal's Algorithm**: Greedy approach dengan Union-Find.\n- **Prim's Algorithm**: Growing tree approach.\n\n## Dynamic Programming\nTechnique untuk solving complex problems:\n\n- **Memoization**: Top-down approach dengan caching.\n- **Tabulation**: Bottom-up approach dengan iteration.\n- **Common Problems**: Fibonacci, Knapsack, Longest Common Subsequence.\n\n## Greedy Algorithms\nMake locally optimal choices:\n\n- **Activity Selection**: Scheduling problems.\n- **Huffman Coding**: Data compression.\n- **Fractional Knapsack**: Optimization problems.\n\n## Divide and Conquer\nBreak problems into subproblems:\n\n- **Merge Sort**: Divide array, sort, merge.\n- **Quick Sort**: Partition around pivot.\n- **Binary Search**: Divide search space.\n\n## Algorithm Design Paradigms\nApproaches untuk designing algorithms:\n\n1. **Brute Force**: Try all possible solutions.\n2. **Greedy Method**: Make optimal local choices.\n3. **Divide and Conquer**: Break into smaller subproblems.\n4. **Dynamic Programming**: Solve subproblems once.\n5. **Backtracking**: Try solutions, backtrack when fail.\n6. **Branch and Bound**: Prune unpromising branches.\n\n## Algorithm Optimization Techniques\nImproving algorithm efficiency:\n\n- **Loop Optimization**: Reduce iterations dan computations.\n- **Memory Optimization**: Minimize space usage.\n- **Cache Optimization**: Improve data locality.\n- **Parallelization**: Utilize multiple cores/processors.\n\n## Real-World Applications\nAlgorithms dalam praktik:\n\n- **Search Engines**: PageRank algorithm.\n- **Social Networks**: Friend recommendation algorithms.\n- **E-commerce**: Product recommendation systems.\n- **GPS Navigation**: Shortest path algorithms.\n- **Cryptography**: Encryption dan decryption algorithms.\n\nMemahami algoritma adalah fundamental skill untuk setiap programmer. Good algorithm design dapat make difference antara solution yang feasible dan tidak feasible untuk large-scale problems."
    },
    "Cyber Security": {
      "icon": Icons.security, "color": Colors.redAccent,
      "content": "# Cyber Security Essentials\n\nCyber security adalah praktik melindungi sistem, jaringan, dan program dari serangan digital. Serangan ini biasanya bertujuan untuk mengakses, mengubah, atau menghancurkan informasi sensitif; memeras uang dari pengguna; atau mengganggu proses bisnis normal.\n\n## Common Threats\nAncaman umum yang harus diwaspadai:\n- **Malware**: Perangkat lunak berbahaya (virus, worm, ransomware).\n- **Phishing**: Upaya penipuan untuk mencuri data sensitif.\n- **Man-in-the-Middle (MitM)**: Penyerang menyadap komunikasi antara dua pihak.\n- **Denial-of-Service (DoS)**: Membanjiri sistem untuk membuatnya tidak dapat diakses.\n\n## Defensive Measures\nLangkah-langkah pertahanan penting:\n- **Firewalls**: Menyaring lalu lintas jaringan.\n- **Antivirus Software**: Mendeteksi dan menghapus malware.\n- **Encryption**: Mengamankan data saat transit dan saat disimpan.\n- **Authentication**: Memverifikasi identitas pengguna (e.g., password, 2FA).\n- **Regular Updates**: Memperbarui perangkat lunak untuk menambal kerentanan."
    },
    "Cloud Computing": {
      "icon": Icons.cloud, "color": Colors.blueAccent,
      "content": "# Cloud Computing Fundamentals\n\nCloud computing adalah pengiriman layanan komputasi—termasuk server, penyimpanan, database, jaringan, perangkat lunak, analitik, dan intelijen—melalui Internet (\"awan\") untuk menawarkan inovasi yang lebih cepat, sumber daya yang fleksibel, dan skala ekonomis.\n\n## Service Models\nModel layanan utama:\n- **IaaS (Infrastructure as a Service)**: Blok bangunan dasar untuk IT di cloud.\n- **PaaS (Platform as a Service)**: Menyediakan lingkungan untuk mengembangkan, menguji, dan mengelola aplikasi perangkat lunak.\n- **SaaS (Software as a Service)**: Perangkat lunak yang siap pakai dan diakses melalui internet.\n\n## Deployment Models\nModel penerapan cloud:\n- **Public Cloud**: Dimiliki dan dioperasikan oleh penyedia pihak ketiga.\n- **Private Cloud**: Sumber daya cloud yang digunakan secara eksklusif oleh satu bisnis atau organisasi.\n- **Hybrid Cloud**: Menggabungkan cloud publik dan privat."
    },
    "Data Science": {
      "icon": Icons.analytics, "color": Colors.orangeAccent,
      "content": "# Introduction to Data Science\n\nData science adalah bidang interdisipliner yang menggunakan metode, proses, algoritma, dan sistem ilmiah untuk mengekstrak pengetahuan dan wawasan dari data terstruktur dan tidak terstruktur. Ini adalah konsep untuk menyatukan statistik, analisis data, dan machine learning.\n\n## Key Concepts\n- **Data Wrangling**: Proses membersihkan dan mengubah data mentah.\n- **Data Visualization**: Representasi grafis dari data untuk menemukan pola.\n- **Machine Learning**: Menggunakan algoritma untuk membuat prediksi dari data.\n- **Domain Expertise**: Pengetahuan khusus industri untuk memberikan konteks pada data.\n\n## Common Tools\n- **Languages**: Python (Pandas, NumPy, Scikit-learn), R\n- **Databases**: SQL, NoSQL\n- **Big Data**: Hadoop, Spark\n- **Visualization**: Matplotlib, Seaborn, Tableau"
    },
    "UI/UX Design": {
      "icon": Icons.design_services, "color": Colors.tealAccent,
      "content": "# UI/UX Design Principles\n\nUI (User Interface) dan UX (User Experience) adalah dua disiplin yang berbeda namun saling terkait erat dalam desain produk digital. UI fokus pada aspek visual dan interaktif, sedangkan UX fokus pada pengalaman pengguna secara keseluruhan.\n\n## Key UX Principles\n- **Usability**: Seberapa mudah pengguna dapat menggunakan produk.\n- **Accessibility**: Desain untuk semua orang, termasuk penyandang disabilitas.\n- **Hierarchy**: Mengatur konten secara logis dan jelas.\n\n## Key UI Principles\n- **Consistency**: Elemen desain yang seragam di seluruh produk.\n- **Contrast**: Menggunakan warna dan ukuran untuk membedakan elemen.\n- **Feedback**: Memberi tahu pengguna tentang hasil dari tindakan mereka.\n\n## Design Process\n- **Research**: Memahami pengguna dan kebutuhan mereka.\n- **Wireframing & Prototyping**: Membuat sketsa dan model interaktif.\n- **Testing**: Mengumpulkan umpan balik dari pengguna nyata."
    },
  };

  static const Map<int, List<Map<String, dynamic>>> _allQuestions = {
    // Web Development
    0: [
      {"q": "Apa kepanjangan dari HTML?", "opt": ["HyperText Markup Language", "High-level Text Language", "Hyper Transfer Language", "Home Tool Markup Language"], "a": 0, "expl": "HTML adalah singkatan dari HyperText Markup Language, bahasa markup standar untuk membuat halaman web."},
      {"q": "Manakah yang digunakan untuk styling halaman web?", "opt": ["HTML", "JavaScript", "CSS", "Python"], "a": 2, "expl": "CSS (Cascading Style Sheets) digunakan untuk mendefinisikan tampilan dan layout konten web."},
      {"q": "Framework JavaScript populer untuk frontend adalah...", "opt": ["Django", "React", "Laravel", "Spring"], "a": 1, "expl": "React.js adalah library JavaScript yang sangat populer untuk membangun antarmuka pengguna."},
      {"q": "Apa fungsi utama dari Node.js?", "opt": ["Styling web", "Struktur web", "Menjalankan JavaScript di sisi server", "Manipulasi gambar"], "a": 2, "expl": "Node.js adalah runtime environment yang memungkinkan JavaScript dijalankan di sisi server."},
      {"q": "Elemen HTML manakah yang mendefinisikan sebuah paragraf?", "opt": ["<div>", "<span>", "<h1>", "<p>"], "a": 3, "expl": "Tag <p> digunakan untuk mendefinisikan sebuah paragraf teks dalam HTML."},
    ],
    // Database
    1: [
      {"q": "Bahasa standar untuk berinteraksi dengan database relasional adalah...", "opt": ["Java", "Python", "SQL", "C#"], "a": 2, "expl": "SQL (Structured Query Language) adalah bahasa standar untuk mengelola dan memanipulasi data di database relasional."},
      {"q": "Manakah yang termasuk database NoSQL?", "opt": ["MySQL", "PostgreSQL", "MongoDB", "SQL Server"], "a": 2, "expl": "MongoDB adalah contoh populer dari database NoSQL yang berorientasi dokumen."},
      {"q": "Apa kepanjangan dari ACID dalam konteks database?", "opt": ["Atom, Cepat, Isolasi, Kuat", "Atomicity, Consistency, Isolation, Durability", "Akurat, Konsisten, Instan, Dinamis", "Semua salah"], "a": 1, "expl": "ACID adalah properti transaksi database yang menjamin keandalan: Atomicity, Consistency, Isolation, Durability."},
      {"q": "Proses mengurangi redundansi data dalam database disebut...", "opt": ["Indeksasi", "Denormalisasi", "Normalisasi", "Fragmentasi"], "a": 2, "expl": "Normalisasi adalah proses mengorganisir kolom dan tabel untuk meminimalkan redundansi data."},
      {"q": "Kunci unik yang mengidentifikasi setiap baris dalam tabel disebut...", "opt": ["Foreign Key", "Super Key", "Candidate Key", "Primary Key"], "a": 3, "expl": "Primary Key adalah kolom (atau set kolom) yang secara unik mengidentifikasi setiap record dalam tabel."},
    ],
    // Jaringan Komputer
    2: [
      {"q": "Model referensi 7 lapis untuk jaringan komputer adalah...", "opt": ["Model TCP/IP", "Model OSI", "Model Internet", "Model Hybrid"], "a": 1, "expl": "Model OSI (Open Systems Interconnection) adalah model konseptual yang mengkarakterisasi fungsi telekomunikasi atau sistem komputasi dalam 7 lapisan."},
      {"q": "Protokol yang digunakan untuk browsing web adalah...", "opt": ["FTP", "SMTP", "HTTP", "Telnet"], "a": 2, "expl": "HTTP (Hypertext Transfer Protocol) adalah protokol lapisan aplikasi untuk mentransmisikan hypermedia, seperti HTML."},
      {"q": "Apa fungsi dari DNS?", "opt": ["Mengirim email", "Mentransfer file", "Menerjemahkan nama domain ke alamat IP", "Mengamankan koneksi"], "a": 2, "expl": "DNS (Domain Name System) menerjemahkan nama domain yang mudah dibaca manusia (mis., www.google.com) menjadi alamat IP numerik."},
      {"q": "Perangkat yang menghubungkan beberapa jaringan komputer adalah...", "opt": ["Hub", "Switch", "Router", "Modem"], "a": 2, "expl": "Router adalah perangkat yang meneruskan paket data antara jaringan komputer, menciptakan dan mengelola sebuah internetwork."},
      {"q": "Alamat IP 127.0.0.1 merujuk pada...", "opt": ["Gateway", "Broadcast Address", "Localhost", "Server Eksternal"], "a": 2, "expl": "Alamat 127.0.0.1 adalah alamat loopback, yang umumnya dikenal sebagai localhost atau 'this computer'."},
    ],
    // Artificial Intelligence
    3: [
        {"q": "Cabang AI yang fokus pada pembelajaran dari data adalah...", "opt": ["Computer Vision", "Natural Language Processing", "Machine Learning", "Expert Systems"], "a": 2, "expl": "Machine Learning adalah studi tentang algoritma komputer yang dapat meningkat secara otomatis melalui pengalaman dan penggunaan data."},
        {"q": "Jenis Machine Learning yang menggunakan data berlabel adalah...", "opt": ["Unsupervised Learning", "Reinforcement Learning", "Supervised Learning", "Semi-supervised Learning"], "a": 2, "expl": "Supervised learning adalah tugas machine learning untuk mempelajari fungsi yang memetakan input ke output berdasarkan contoh pasangan input-output."},
        {"q": "Jaringan Saraf Tiruan terinspirasi oleh...", "opt": ["Sirkuit Listrik", "Otak Manusia", "Jaringan Sosial", "Pola Cuaca"], "a": 1, "expl": "Jaringan Saraf Tiruan (Artificial Neural Networks) terinspirasi oleh struktur dan fungsi otak biologis."},
        {"q": "Contoh aplikasi Computer Vision adalah...", "opt": ["Chatbot", "Penerjemah Bahasa", "Pengenalan Wajah", "Rekomendasi Musik"], "a": 2, "expl": "Pengenalan wajah adalah teknologi computer vision yang digunakan untuk mengidentifikasi individu dari gambar digital atau video."},
        {"q": "Apa itu 'Reinforcement Learning'?", "opt": ["Belajar dari data tanpa label", "Belajar dengan guru/label", "Belajar melalui coba-coba dengan reward/penalty", "Belajar dari aturan yang telah ditentukan"], "a": 2, "expl": "Reinforcement learning adalah area machine learning yang berfokus pada bagaimana agen cerdas harus mengambil tindakan dalam suatu lingkungan untuk memaksimalkan reward kumulatif."},
    ],
    // Mobile Development
    4: [
        {"q": "Bahasa pemrograman resmi untuk pengembangan Android native saat ini adalah...", "opt": ["Java", "Swift", "Kotlin", "C#"], "a": 2, "expl": "Google mengumumkan Kotlin sebagai bahasa resmi untuk pengembangan Android pada tahun 2019."},
        {"q": "Framework UI dari Google untuk membuat aplikasi cross-platform adalah...", "opt": ["React Native", "Xamarin", "Flutter", "Ionic"], "a": 2, "expl": "Flutter adalah UI toolkit dari Google untuk membangun aplikasi yang dikompilasi secara native untuk mobile, web, dan desktop dari satu basis kode."},
        {"q": "IDE resmi untuk pengembangan aplikasi iOS adalah...", "opt": ["Android Studio", "Visual Studio Code", "Xcode", "Eclipse"], "a": 2, "expl": "Xcode adalah Integrated Development Environment (IDE) dari Apple yang digunakan untuk mengembangkan software untuk macOS, iOS, iPadOS, watchOS, dan tvOS."},
        {"q": "Apa nama pedoman desain antarmuka untuk aplikasi Android?", "opt": ["Human Interface Guidelines", "Material Design", "Fluent Design", "Flat Design"], "a": 1, "expl": "Material Design adalah sistem desain dari Google yang digunakan untuk memberikan panduan dalam desain visual, gerak, dan interaksi di berbagai platform dan perangkat."},
        {"q": "File yang berisi metadata penting untuk aplikasi Flutter adalah...", "opt": ["build.gradle", "AndroidManifest.xml", "pubspec.yaml", "Info.plist"], "a": 2, "expl": "File pubspec.yaml berisi metadata proyek Flutter, termasuk nama, deskripsi, versi, dan dependensi."},
    ],
    // Algoritma
    5: [
        {"q": "Kompleksitas waktu dari algoritma Binary Search adalah...", "opt": ["O(n)", "O(log n)", "O(n^2)", "O(1)"], "a": 1, "expl": "Binary Search membagi ruang pencarian menjadi dua di setiap langkah, sehingga memiliki kompleksitas waktu logaritmik."},
        {"q": "Struktur data yang menggunakan prinsip Last-In, First-Out (LIFO) adalah...", "opt": ["Queue", "Stack", "Heap", "Tree"], "a": 1, "expl": "Stack (tumpukan) adalah struktur data di mana elemen terakhir yang dimasukkan akan menjadi yang pertama keluar."},
        {"q": "Algoritma sorting manakah yang paling sederhana namun tidak efisien?", "opt": ["Merge Sort", "Quick Sort", "Bubble Sort", "Heap Sort"], "a": 2, "expl": "Bubble Sort berulang kali membandingkan pasangan elemen yang berdekatan dan menukarnya jika urutannya salah, membuatnya sederhana tetapi lambat dengan kompleksitas O(n^2)."},
        {"q": "Algoritma Shortest Path yang tidak bisa menangani edge dengan bobot negatif adalah...", "opt": ["Bellman-Ford", "Floyd-Warshall", "Dijkstra", "A*"], "a": 2, "expl": "Algoritma Dijkstra mengasumsikan semua bobot edge non-negatif dan akan gagal jika ada bobot negatif."},
        {"q": "Paradigma algoritma yang mencoba semua kemungkinan solusi disebut...", "opt": ["Greedy", "Divide and Conquer", "Dynamic Programming", "Brute Force"], "a": 3, "expl": "Brute Force adalah pendekatan langsung yang mencoba setiap kemungkinan untuk menemukan solusi."},
    ],
    // Cyber Security
    6: [
      {"q": "Apa tujuan utama dari 'phishing'?", "opt": ["Mempercepat internet", "Mencuri informasi sensitif", "Membersihkan virus", "Menginstal software"], "a": 1, "expl": "Phishing adalah upaya untuk mendapatkan informasi sensitif seperti nama pengguna, kata sandi, dan detail kartu kredit dengan menyamar sebagai entitas tepercaya."},
      {"q": "Teknik enkripsi yang menggunakan dua kunci berbeda (publik dan privat) disebut...", "opt": ["Enkripsi Simetris", "Hashing", "Enkripsi Asimetris", "Steganografi"], "a": 2, "expl": "Enkripsi asimetris (atau kriptografi kunci publik) menggunakan sepasang kunci untuk enkripsi dan dekripsi."},
      {"q": "Perangkat lunak jahat yang dirancang untuk merusak komputer disebut...", "opt": ["Firmware", "Adware", "Malware", "Middleware"], "a": 2, "expl": "Malware (Malicious Software) adalah istilah umum untuk perangkat lunak berbahaya, termasuk virus, worm, trojan, dan ransomware."},
      {"q": "Apa fungsi dari 'Firewall' dalam jaringan?", "opt": ["Mempercepat koneksi", "Menyaring lalu lintas jaringan", "Menyimpan data", "Menjadi antivirus"], "a": 1, "expl": "Firewall bertindak sebagai penghalang antara jaringan internal yang aman dan jaringan eksternal yang tidak tepercaya, menyaring lalu lintas berdasarkan aturan keamanan."},
      {"q": "Otentikasi Dua Faktor (2FA) menambahkan lapisan keamanan dengan memerlukan...", "opt": ["Dua password", "Dua username", "Dua bentuk identifikasi", "Dua komputer"], "a": 2, "expl": "2FA memerlukan dua dari tiga kemungkinan bentuk identifikasi: sesuatu yang Anda tahu (password), sesuatu yang Anda miliki (ponsel), dan sesuatu yang Anda miliki (sidik jari)."}
    ],
    // Cloud Computing
    7: [
      {"q": "Model layanan cloud yang menyediakan infrastruktur (server, storage, network) adalah...", "opt": ["SaaS", "PaaS", "IaaS", "FaaS"], "a": 2, "expl": "IaaS (Infrastructure as a Service) menyediakan sumber daya komputasi tervirtualisasi melalui internet."},
      {"q": "Manakah yang BUKAN merupakan penyedia layanan cloud utama?", "opt": ["Amazon Web Services (AWS)", "Microsoft Azure", "Google Cloud Platform (GCP)", "Oracle Database"], "a": 3, "expl": "Oracle Database adalah produk database, sedangkan AWS, Azure, dan GCP adalah penyedia platform cloud computing yang luas."},
      {"q": "Kepanjangan dari SaaS adalah...", "opt": ["Software as a Security", "System as a Service", "Software as a Service", "Security as a System"], "a": 2, "expl": "SaaS (Software as a Service) adalah model di mana perangkat lunak dilisensikan berdasarkan langganan dan di-host secara terpusat."},
      {"q": "Konsep menyebarkan aplikasi ke beberapa lokasi geografis untuk mengurangi latensi disebut...", "opt": ["Scalability", "Elasticity", "Content Delivery Network (CDN)", "Virtualization"], "a": 2, "expl": "CDN adalah jaringan server terdistribusi geografis yang bekerja sama untuk menyediakan pengiriman konten internet yang cepat."},
      {"q": "Model 'Pay-as-you-go' dalam cloud computing berarti...", "opt": ["Bayar biaya tetap bulanan", "Bayar hanya untuk sumber daya yang digunakan", "Gratis selamanya", "Bayar di muka untuk setahun"], "a": 1, "expl": "Model harga bayar sesuai pemakaian memungkinkan pengguna untuk hanya membayar sumber daya komputasi yang mereka konsumsi."},
    ],
    // Data Science
    8: [
      {"q": "Tiga komponen utama dalam Data Science adalah...", "opt": ["Coding, Desain, Marketing", "Statistik, Machine Learning, Domain Expertise", "Hardware, Software, Networking", "Web, Mobile, Desktop"], "a": 1, "expl": "Seorang data scientist yang efektif membutuhkan keahlian di bidang statistik, machine learning, dan pengetahuan domain bisnis yang relevan."},
      {"q": "Proses membersihkan dan mengubah data mentah sebelum analisis disebut...", "opt": ["Data Visualization", "Data Modeling", "Data Wrangling/Munging", "Data Interpretation"], "a": 2, "expl": "Data wrangling (atau data munging) adalah proses mengubah dan memetakan data dari satu format 'mentah' ke format lain untuk membuatnya lebih sesuai untuk analisis."},
      {"q": "Manakah bahasa pemrograman yang paling populer untuk Data Science?", "opt": ["Java", "C++", "Python", "PHP"], "a": 2, "expl": "Python, dengan library seperti Pandas, NumPy, dan Scikit-learn, adalah bahasa yang dominan digunakan dalam data science."},
      {"q": "Visualisasi data yang menggunakan 'kotak' untuk menampilkan distribusi data adalah...", "opt": ["Pie Chart", "Line Chart", "Histogram", "Box Plot"], "a": 3, "expl": "Box plot (atau box-and-whisker plot) menampilkan ringkasan lima angka dari set data (minimum, kuartil pertama, median, kuartil ketiga, dan maksimum)."},
      {"q": "Model machine learning yang digunakan untuk memprediksi nilai kontinu (misal: harga rumah) adalah...", "opt": ["Klasifikasi", "Regresi", "Clustering", "Asosiasi"], "a": 1, "expl": "Model regresi digunakan untuk memprediksi hasil kuantitatif atau kontinu, sedangkan klasifikasi memprediksi label kategori diskrit."},
    ],
    // UI/UX Design
    9: [
      {"q": "UI adalah singkatan dari...", "opt": ["User Interaction", "User Interface", "Universal Integration", "User Inclusivity"], "a": 1, "expl": "UI (User Interface) adalah titik interaksi dan komunikasi manusia-komputer pada perangkat."},
      {"q": "UX adalah singkatan dari...", "opt": ["User Experience", "User Exploration", "User Expectation", "Universal Experience"], "a": 0, "expl": "UX (User Experience) adalah tentang pengalaman keseluruhan pengguna saat berinteraksi dengan produk atau layanan."},
      {"q": "Prototipe dengan tingkat detail visual dan fungsionalitas rendah disebut...", "opt": ["High-fidelity prototype", "Mockup", "Wireframe", "Low-fidelity prototype"], "a": 3, "expl": "Low-fidelity prototype (seringkali berupa wireframe) digunakan pada tahap awal untuk menguji alur dan konsep tanpa detail visual."},
      {"q": "Hukum Fitts dalam desain UI/UX berkaitan dengan...", "opt": ["Waktu untuk mencapai target", "Jumlah item dalam menu", "Pilihan warna", "Ukuran font"], "a": 0, "expl": "Hukum Fitts memprediksi bahwa waktu yang dibutuhkan untuk bergerak cepat ke area target adalah fungsi dari rasio jarak ke target dan lebar target."},
      {"q": "Proses membuat desain yang dapat diakses oleh penyandang disabilitas disebut...", "opt": ["Usability", "Accessibility (A11y)", "Affordance", "Ergonomics"], "a": 1, "expl": "Accessibility (sering disingkat A11y) adalah praktik desain inklusif untuk memastikan tidak ada penghalang yang mencegah interaksi dengan produk atau layanan."}
    ]
  };

  static List<Map<String, dynamic>> getQuestions(int levelId) {
    return _allQuestions[levelId] ?? [];
  }
}

// ==========================================
// 2. THEME CONFIG (CYBER BLUE/PURPLE)
// ==========================================
class AppColors {
  static const Color bgDark = Color(0xFF020617);       // Deep Space
  static const Color cardDark = Color(0xFF0F172A);     // Card Blue
  static const Color primary = Color(0xFF6366F1);      // Indigo Neon
  static const Color accent = Color(0xFF00E5FF);       // Cyber Cyan
  static const Color secondary = Color(0xFFD946EF);    // Neon Pink/Purple
  static const Color success = Color(0xFF10B981);
  static const Color warning = Color(0xFFF59E0B);
  static const Color textWhite = Color(0xFFF8FAFC);
}

class CodeLingoApp extends StatelessWidget {
  const CodeLingoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CodeLingo Ultimate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.bgDark,
        primaryColor: AppColors.primary,
        cardColor: AppColors.cardDark,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontFamily: 'Nunito', color: AppColors.textWhite),
          titleLarge: TextStyle(fontFamily: 'Orbitron', fontWeight: FontWeight.bold),
        ),
        colorScheme: const ColorScheme.dark(primary: AppColors.primary, secondary: AppColors.accent),
      ),
      home: const RootNavigator(),
    );
  }
}

// ==========================================
// 3. BACKGROUND ANIMATION (GRID & REALISTIC ROCKET)
// ==========================================
class CyberBackground extends StatefulWidget {
  final Widget child;
  const CyberBackground({super.key, required this.child});
  @override State<CyberBackground> createState() => _CyberBackgroundState();
}

class _CyberBackgroundState extends State<CyberBackground> with TickerProviderStateMixin {
  late AnimationController _gridCtrl;
  late AnimationController _rocketCtrl;
  late AnimationController _wavyCtrl;
  
  @override
  void initState() {
    super.initState();
    _gridCtrl = AnimationController(vsync: this, duration: const Duration(seconds: 20))..repeat();
    // Kecepatan roket melintas (lebih cepat agar dinamis)
    _rocketCtrl = AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _wavyCtrl = AnimationController(vsync: this, duration: const Duration(seconds: 12))..repeat();
    _startRocketLoop();
  }

  void _startRocketLoop() async {
    while (mounted) {
      await Future.delayed(const Duration(seconds: 8)); // Jeda lebih lama agar tidak mengganggu
      if (mounted) {
        await _rocketCtrl.forward(from: 0.0);
      }
    }
  }

  @override
  void dispose() {
    _gridCtrl.dispose();
    _rocketCtrl.dispose();
    _wavyCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 1. Base Gradient
        Container(decoration: const BoxDecoration(gradient: LinearGradient(colors: [Color(0xFF020617), Color(0xFF1E1B4B)], begin: Alignment.topCenter, end: Alignment.bottomCenter))),
        
        // 2. Moving Grid (Cyber Floor)
        Positioned.fill(child: AnimatedBuilder(animation: _gridCtrl, builder: (ctx, child) => CustomPaint(painter: _GridPainter(_gridCtrl.value)))),

        // 3. Particles (Dust)
        const _CyberParticles(),

        // 4. Realistic Flying Rocket with Fire
        AnimatedBuilder(
          animation: _rocketCtrl,
          builder: (ctx, child) {
            final double t = _rocketCtrl.value;
            if (t == 0 || t == 1) return const SizedBox();

            final size = MediaQuery.of(context).size;
            // Interpolasi Posisi (Diagonal Kiri Bawah -> Kanan Atas)
            final double x = -150 + (size.width + 300) * t;
            final double y = size.height + 100 - (size.height + 300) * t;

            // Rotasi -45 derajat agar menghadap ke kanan atas
            return Positioned(
              left: x, top: y,
              child: Transform.rotate(
                angle: -pi / 4, 
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Badan Roket - ukuran lebih kecil untuk mobile
                    Icon(Icons.rocket_rounded, size: 25, color: Colors.white.withOpacity(0.6)),
                    // Efek Api Nyata (Custom Widget)
                    Transform.translate(offset: const Offset(0, -10), child: const _RocketFire()),
                  ],
                ),
              ),
            );
          },
        ),

        // 5. Wavy Small Rocket without Fire
        AnimatedBuilder(
          animation: _wavyCtrl,
          builder: (ctx, child) {
            final double t = _wavyCtrl.value;
            final size = MediaQuery.of(context).size;
            // Path meliuk-liuk: horizontal dari kanan ke kiri, vertical sinusoidal
            final double x = size.width - (size.width + 100) * t;
            final double y = size.height / 2 + 50 * sin(2 * pi * t * 3); // 3 gelombang

            return Positioned(
              left: x, top: y,
              child: Transform.rotate(
                angle: pi, // Hadap ke kiri
                child: Icon(Icons.rocket_rounded, size: 30, color: Colors.white.withOpacity(0.7)),
              ),
            );
          },
        ),

        // 5. Main Content
        widget.child,
      ],
    );
  }
}

// WIDGET API ROKET BERKEDIP
class _RocketFire extends StatefulWidget {
  const _RocketFire();
  @override State<_RocketFire> createState() => _RocketFireState();
}
class _RocketFireState extends State<_RocketFire> with SingleTickerProviderStateMixin {
  late AnimationController _fireCtrl;
  @override void initState() {
    super.initState();
    // Animasi berkedip cepat (flicker)
    _fireCtrl = AnimationController(vsync: this, duration: const Duration(milliseconds: 150))..repeat(reverse: true);
  }
  @override void dispose() { _fireCtrl.dispose(); super.dispose(); }

  @override Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _fireCtrl,
      builder: (ctx, child) {
        return Stack(
          alignment: Alignment.topCenter,
          children: [
            // Api Luar (Oranye Kemerahan)
            ScaleTransition(
              scale: Tween(begin: 1.0, end: 1.2).animate(_fireCtrl),
              child: Container(
                width: 30, height: 80,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange.withOpacity(0.8), Colors.red.withOpacity(0.2), Colors.transparent],
                    begin: Alignment.topCenter, end: Alignment.bottomCenter
                  ),
                  borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30))
                ),
              ),
            ),
            // Api Dalam (Kuning Putih)
            ScaleTransition(
              scale: Tween(begin: 0.8, end: 1.0).animate(_fireCtrl),
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                width: 15, height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.yellow.withOpacity(0.9), Colors.white.withOpacity(0.5), Colors.transparent],
                    begin: Alignment.topCenter, end: Alignment.bottomCenter
                  ),
                  borderRadius: const BorderRadius.vertical(bottom: Radius.circular(15))
                ),
              ),
            ),
          ],
        );
      }
    );
  }
}

class _GridPainter extends CustomPainter {
  final double scrollValue; _GridPainter(this.scrollValue);
  @override void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = AppColors.primary.withOpacity(0.15)..strokeWidth = 1;
    double spacing = 50.0; double offset = scrollValue * spacing;
    for (double i = -spacing + offset; i < size.height; i += spacing) canvas.drawLine(Offset(0, i), Offset(size.width, i), paint);
    for (double i = 0; i < size.width; i += spacing) canvas.drawLine(Offset(i, 0), Offset(i, size.height), paint);
  }
  @override bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

// ==========================================
// 4. ROOT NAVIGATOR
// ==========================================
class RootNavigator extends StatefulWidget {
  const RootNavigator({super.key});
  @override State<RootNavigator> createState() => _RootNavigatorState();
}

class _RootNavigatorState extends State<RootNavigator> {
  String _view = 'landing';
  Map<String, String> _users = {};
  Map<String, String> _names = {};
  String _activeUser = "Guest";
  String _activeEmail = "";
  String _avatar = "https://i.pravatar.cc/150?img=21";
  int _xp = 0, _coins = 0;
  List<String> _inventory = [];
  List<Map<String, dynamic>> levels = [];
  List<Map<String, dynamic>> _rankData = [];
  bool _showLaunchRocket = false;
  late final StreamSubscription? _authSub;

  @override
  void initState() {
    super.initState();
    int id = 0;
    DataStore.materials.forEach((key, val) {
      levels.add({"id": id, "title": key, "status": id==0?1:0, "icon": val['icon'], "color": val['color']});
      id++;
    });
    final realNames = ["Jokowi", "Ganjar", "Prabowo", "Anies", "Ridwan", "Puan", "Mahfud", "Gibran", "Iriana", "Megawati", "Susilo", "Jusuf", "Ma'ruf", "Sri Mulyani", "Erick", "Sandiaga", "Luhut", "Nadiem", "Tito", "Basuki"];
    _rankData = List.generate(20, (i) => {"name": realNames[i], "xp": 8000-(i*300)+Random().nextInt(100), "color": Colors.primaries[i%Colors.primaries.length], "isMe": false, "avatar": "https://i.pravatar.cc/150?img=${i+1}"});

    // Listen to Firebase auth changes and update in-app user state
    _authSub = Auth().authStateChanges.listen((user) {
      if (user != null) {
        setState(() {
          _activeEmail = user.email ?? _activeEmail;
          _activeUser = (user.displayName != null && user.displayName!.isNotEmpty)
              ? user.displayName!
              : (user.email != null ? user.email!.split('@')[0] : _activeUser);
          _xp = 1200; _coins = 500; _view = 'dashboard';
          _rankData.removeWhere((e) => e['isMe'] == true);
          _rankData.add({"name": _activeUser, "xp": _xp, "color": AppColors.accent, "isMe": true, "avatar": _avatar});
          _rankData.sort((a,b)=>b['xp'].compareTo(a['xp']));
        });
      } else {
        setState(() {
          _activeUser = 'Guest';
          _activeEmail = '';
          _xp = 0; _coins = 0; _view = 'landing';
        });
      }
    });
  }

  @override
  void dispose() {
    _authSub?.cancel();
    super.dispose();
  }

  bool _register(String n, String e, String p) {
    if (_users.containsKey(e)) return false;
    _users[e] = p; _names[e] = n;
    // also try to create Firebase account (best-effort, do not block UI)
    Auth().createUserWithEmailAndPassword(email: e, password: p).then((cred){
      // ignore: avoid_print
      print('Firebase create user: ${cred.user?.uid}');
    }).catchError((err){
      // ignore: avoid_print
      print('Firebase create user error: $err');
    });
    return true;
  }
  bool _login(String e, String p) {
    if (_users.containsKey(e) && _users[e] == p) {
      setState(() {
        _activeUser = _names[e]!; _activeEmail = e; _xp = 1200; _coins = 500; _view = 'dashboard'; _showLaunchRocket = true;
        _rankData.removeWhere((e) => e['isMe'] == true);
        _rankData.add({"name": "$_activeUser", "xp": _xp, "color": AppColors.accent, "isMe": true, "avatar": _avatar});
        _rankData.sort((a,b)=>b['xp'].compareTo(a['xp']));
      });
      // also try Firebase sign-in (best-effort)
      Auth().signInWithEmailAndPassword(email: e, password: p).then((cred){
        // ignore: avoid_print
        print('Firebase signIn: ${cred.user?.uid}');
      }).catchError((err){
        // ignore: avoid_print
        print('Firebase signIn error: $err');
      });
      return true;
    } return false;
  }
  void _completeLevel(int idx, int s) {
    setState(() {
      _xp += s; _coins += 50; levels[idx]['status'] = 2;
      if (idx < levels.length - 1 && levels[idx+1]['status'] == 0) levels[idx+1]['status'] = 1;
      int myIdx = _rankData.indexWhere((e) => e['isMe'] == true);
      if(myIdx != -1) { _rankData[myIdx]['xp'] = _xp; _rankData.sort((a,b)=>b['xp'].compareTo(a['xp'])); }
    });
  }
  void _buy(String i, int p) { if (_coins >= p) setState(() { _coins -= p; _inventory.add(i); }); }
  void _updateProfile(String n) { setState(() { _activeUser = n; _names[_activeEmail] = n; }); }
  void _gainXpFromGame(int amount) {
    setState(() {
      _xp += amount;
      int myIdx = _rankData.indexWhere((e) => e['isMe'] == true);
      if(myIdx != -1) { _rankData[myIdx]['xp'] = _xp; _rankData.sort((a,b)=>b['xp'].compareTo(a['xp'])); }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(duration: const Duration(milliseconds: 600), child: _getBody());
  }

  Widget _getBody() {
    switch (_view) {
      case 'dashboard': return DashboardLayout(username: _activeUser, avatar: _avatar, xp: _xp, coins: _coins, levels: levels, inventory: _inventory, rankData: _rankData, onLogout: ()=>setState(()=>_view='landing'), onCompleteLevel: _completeLevel, onBuy: _buy, onUpdateProfile: _updateProfile, showLaunchRocket: _showLaunchRocket, onGameXpGained: _gainXpFromGame);
      case 'login': return AuthScreen(onBack: ()=>setState(()=>_view='landing'), onLogin: _login, onRegister: _register, startWithLogin: true);
      case 'register': return AuthScreen(onBack: ()=>setState(()=>_view='landing'), onLogin: _login, onRegister: _register, startWithLogin: false);
      default: return LandingScreen(onLogin: ()=>setState(()=>_view='login'), onRegister: ()=>setState(()=>_view='register'));
    }
  }
}

// ==========================================
// 5. LANDING SCREEN
// ==========================================
class LandingScreen extends StatefulWidget {
  final VoidCallback onLogin;
  final VoidCallback onRegister;
  const LandingScreen({super.key, required this.onLogin, required this.onRegister});
  @override State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> with TickerProviderStateMixin {
  late AnimationController _robotCtrl;
  late AnimationController _glowCtrl;

  @override
  void initState() {
    super.initState();
    _robotCtrl = AnimationController(vsync: this, duration: const Duration(seconds: 3))..repeat(reverse: true);
    _glowCtrl = AnimationController(vsync: this, duration: const Duration(seconds: 2))..repeat(reverse: true);
  }

  @override
  void dispose() {
    _robotCtrl.dispose();
    _glowCtrl.dispose();
    super.dispose();
  }

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(colors: [AppColors.accent, AppColors.primary]).createShader(bounds),
              child: const Text("<> CodeLingo", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
            ),
            const Spacer(),
            TextButton(onPressed: widget.onLogin, child: const Text("Masuk", style: TextStyle(color: AppColors.accent))),
            const SizedBox(width: 10),
            ElevatedButton(onPressed: widget.onRegister, style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary), child: const Text("Daftar", style: TextStyle(color: Colors.white))),
          ],
        ),
      ),
      body: CyberBackground(
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Spacer(),
                  // Animated Robot with Glow
                  AnimatedBuilder(
                    animation: _glowCtrl,
                    builder: (ctx, child) => Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.accent.withOpacity(0.5 * _glowCtrl.value),
                            blurRadius: 20 * _glowCtrl.value,
                            spreadRadius: 5 * _glowCtrl.value,
                          ),
                        ],
                      ),
                      child: AnimatedBuilder(
                        animation: _robotCtrl,
                        builder: (ctx, child) => Transform.rotate(
                          angle: 0.1 * sin(_robotCtrl.value * 2 * pi),
                          child: const Icon(Icons.smart_toy_rounded, size: 100, color: AppColors.accent),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  ShaderMask(shaderCallback: (r) => const LinearGradient(colors: [AppColors.accent, AppColors.primary]).createShader(r), child: const Text("CODELINGO", style: TextStyle(fontSize: 42, fontWeight: FontWeight.w900, letterSpacing: 2, color: Colors.white))),
                  const SizedBox(height: 10),
                  const Text("Jelajahi Dunia Cyber.\nBelajar Teknologi Masa Depan.", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey, fontSize: 16)),
                  const Spacer(),
                  _NeonButton(text: "MULAI MISI", onPressed: widget.onLogin, isBig: true, fullWidth: true),
                  const SizedBox(height: 30),
                ]),
              ),
              // Coding Ornaments
              Positioned(top: 100, left: 20, child: Opacity(opacity: 0.3, child: const Text("{ code }", style: TextStyle(color: AppColors.accent, fontSize: 18, fontFamily: 'monospace')))),
              Positioned(top: 200, right: 30, child: Opacity(opacity: 0.2, child: const Icon(Icons.code, color: AppColors.primary, size: 40))),
              Positioned(bottom: 150, left: 40, child: Opacity(opacity: 0.25, child: const Text("function() {", style: TextStyle(color: AppColors.secondary, fontSize: 14, fontFamily: 'monospace')))),
              Positioned(bottom: 100, right: 20, child: Opacity(opacity: 0.3, child: const Icon(Icons.bug_report, color: AppColors.warning, size: 30))),
            ],
          ),
        ),
      ),
    );
  }
}

// ==========================================
// 6. AUTH SCREEN
// ==========================================
class AuthScreen extends StatefulWidget {
  final VoidCallback onBack; final bool Function(String,String) onLogin; final bool Function(String,String,String) onRegister;
  final bool startWithLogin;
  const AuthScreen({super.key, required this.onBack, required this.onLogin, required this.onRegister, this.startWithLogin = true});
  @override State<AuthScreen> createState() => _AuthScreenState();
}
class _AuthScreenState extends State<AuthScreen> {
  bool _isLogin = true, _load = false;
  final _nameC = TextEditingController(); final _emailC = TextEditingController(); final _passC = TextEditingController();

  @override
  void initState() {
    super.initState();
    _isLogin = widget.startWithLogin;
  }

  void _submit() async {
    if(_emailC.text.isEmpty || _passC.text.isEmpty) { _snack("Isi semua data!", Colors.red); return; }
    setState(()=>_load=true); await Future.delayed(const Duration(milliseconds: 300));
    bool ok = _isLogin ? widget.onLogin(_emailC.text, _passC.text) : widget.onRegister(_nameC.text, _emailC.text, _passC.text);
    if (ok && !_isLogin) {
      _snack("Berhasil!", AppColors.success);
      setState(()=>_isLogin=true);
    } else if (!ok) {
      if (_isLogin) {
        // Local login failed — try Firebase sign-in as fallback (for users created in Firebase console)
        try {
          await Auth().signInWithEmailAndPassword(email: _emailC.text, password: _passC.text);
          if (!mounted) return;
          _snack("Login via Firebase berhasil", AppColors.success);
          // RootNavigator listens to auth changes and will switch to dashboard automatically
        } on Exception catch (e) {
          if (!mounted) return;
          _snack("Gagal: ${e.toString()}", Colors.red);
        }
      } else {
        _snack("Gagal!", Colors.red);
      }
    }
    setState(()=>_load=false);
  }
  void _snack(String m, Color c) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(m), backgroundColor: c));

  @override Widget build(BuildContext context) {
    return Scaffold(
      body: CyberBackground(
        child: SafeArea(child: Center(child: SingleChildScrollView(padding: const EdgeInsets.all(24), child: Column(mainAxisSize: MainAxisSize.min, children: [
          Align(alignment: Alignment.centerLeft, child: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.white), onPressed: widget.onBack)),
          const SizedBox(height: 20),
          Text(_isLogin?"LOGIN SYSTEM":"NEW AGENT", style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 1.5)),
          const SizedBox(height: 40),
          _GlassCard(padding: const EdgeInsets.all(24), child: Column(children: [
            if(!_isLogin) ...[_Input(_nameC, "Codename", Icons.badge), const SizedBox(height: 16)],
            _Input(_emailC, "Email", Icons.email), const SizedBox(height: 16),
            _Input(_passC, "Passcode", Icons.lock, isPass: true), const SizedBox(height: 30),
            _NeonButton(text: _load?"LOADING...":(_isLogin?"MASUK":"DAFTAR"), onPressed: _load?(){}:_submit, fullWidth: true)
          ])),
          const SizedBox(height: 20),
          TextButton(onPressed: ()=>setState(()=>_isLogin=!_isLogin), child: Text(_isLogin?"Belum punya akun? Daftar":"Sudah punya akun? Login", style: const TextStyle(color: AppColors.accent)))
        ])))),
      ),
    );
  }
}

// ==========================================
// 7. DASHBOARD LAYOUT
// ==========================================
class DashboardLayout extends StatefulWidget {
  final String username; final String avatar; final int xp, coins; final List<Map<String, dynamic>> levels; final List<String> inventory; final List<Map<String, dynamic>> rankData; final bool showLaunchRocket;
  final VoidCallback onLogout; final Function(int, int) onCompleteLevel; final Function(String, int) onBuy; final Function(String) onUpdateProfile; final Function(int) onGameXpGained;
  const DashboardLayout({super.key, required this.username, required this.avatar, required this.xp, required this.coins, required this.levels, required this.inventory, required this.rankData, required this.showLaunchRocket, required this.onLogout, required this.onCompleteLevel, required this.onBuy, required this.onUpdateProfile, required this.onGameXpGained});
  @override State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout> {
  int _idx = 0;
  @override Widget build(BuildContext context) {
    final tabs = [
      _DashboardHome(username: widget.username, avatar: widget.avatar, xp: widget.xp, coins: widget.coins, rankData: widget.rankData),
      _BelajarTab(levels: widget.levels, onPlay: (i) => _startQuiz(context, i)),
      _GameTab(xp: widget.xp, onXpGained: widget.onGameXpGained),
      _RankTab(rankData: widget.rankData),
      _ShopTab(coins: widget.coins, onBuy: widget.onBuy, inventory: widget.inventory),
      _ProfileTab(username: widget.username, avatar: widget.avatar, xp: widget.xp, coins: widget.coins, onLogout: widget.onLogout, onUpdate: widget.onUpdateProfile),
    ];
    return Scaffold(
      body: CyberBackground(child: SafeArea(child: tabs[_idx])), // Apply BG Here
      bottomNavigationBar: NavigationBar(
        backgroundColor: AppColors.cardDark, elevation: 0, height: 65, selectedIndex: _idx, indicatorColor: AppColors.primary.withOpacity(0.5),
        onDestinationSelected: (i) => setState(() => _idx = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.dashboard_outlined), selectedIcon: Icon(Icons.dashboard, color: Colors.white), label: 'Dash'),
          NavigationDestination(icon: Icon(Icons.alt_route), selectedIcon: Icon(Icons.alt_route, color: Colors.white), label: 'Belajar'),
          NavigationDestination(icon: Icon(Icons.games_outlined), selectedIcon: Icon(Icons.games, color: Colors.white), label: 'Game'),
          NavigationDestination(icon: Icon(Icons.emoji_events_outlined), selectedIcon: Icon(Icons.emoji_events, color: Colors.white), label: 'Rank'),
          NavigationDestination(icon: Icon(Icons.shopping_bag_outlined), selectedIcon: Icon(Icons.shopping_bag, color: Colors.white), label: 'Toko'),
          NavigationDestination(icon: Icon(Icons.person_outline), selectedIcon: Icon(Icons.person, color: Colors.white), label: 'Profil'),
        ],
      ),
    );
  }
  void _startQuiz(BuildContext ctx, int idx) { Navigator.push(ctx, MaterialPageRoute(builder: (_) => QuizScreen(idx: idx, lvl: widget.levels[idx], onFin: (s) { widget.onCompleteLevel(idx, s); Navigator.pop(ctx); }))); }
}

// --- TAB 1: DASHBOARD HOME ---
class _DashboardHome extends StatefulWidget {
  final String username; final String avatar; final int xp, coins; final List<Map<String, dynamic>> rankData;
  const _DashboardHome({required this.username, required this.avatar, required this.xp, required this.coins, required this.rankData});
  @override State<_DashboardHome> createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<_DashboardHome> with TickerProviderStateMixin {
  late AnimationController _launchCtrl;
  bool _hasLaunched = false;

  @override
  void initState() {
    super.initState();
    _launchCtrl = AnimationController(vsync: this, duration: const Duration(seconds: 3));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_hasLaunched) {
      Future.delayed(const Duration(milliseconds: 500), () {
        if (mounted) {
          _launchCtrl.forward();
          _hasLaunched = true;
        }
      });
    }
  }

  @override
  void dispose() {
    _launchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var materials = DataStore.materials;
    var top3 = widget.rankData.take(3).toList();
    return Stack(
      children: [
        ListView(padding: const EdgeInsets.all(24), children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Text("Selamat Datang,", style: TextStyle(color: Colors.grey, fontSize: 14)), ShaderMask(shaderCallback: (r)=>const LinearGradient(colors: [AppColors.accent, AppColors.primary]).createShader(r), child: Text("${widget.username} 👋", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)))]),
            Container(padding: const EdgeInsets.all(2), decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: AppColors.accent)), child: CircleAvatar(backgroundImage: NetworkImage(widget.avatar), radius: 20))
          ]),
          const SizedBox(height: 24),
          GridView.count(shrinkWrap: true, physics: const NeverScrollableScrollPhysics(), crossAxisCount: 2, childAspectRatio: 2.5, crossAxisSpacing: 12, mainAxisSpacing: 12, children: [
            _StatCard(Icons.bolt, "${widget.xp} XP", "Total XP", AppColors.warning), _StatCard(Icons.diamond, "${widget.coins}", "Permata", AppColors.success),
            _StatCard(Icons.local_fire_department, "5 Hari", "Streak", Colors.orange), _StatCard(Icons.shield, "Elite", "Liga", AppColors.secondary),
          ]),
          const SizedBox(height: 24),
          const Text("Misi Harian", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white)), const SizedBox(height: 12),
          Container(padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: AppColors.cardDark.withOpacity(0.8), borderRadius: BorderRadius.circular(16)), child: Column(children: [
            _MissionTile("Kumpulkan ${widget.xp >= 1000 ? 2000 : 1000} XP hari ini", widget.xp / (widget.xp >= 1000 ? 2000.0 : 1000.0), "${widget.xp}/${widget.xp >= 1000 ? 2000 : 1000}"),
            const SizedBox(height: 12),
            _MissionTile("Selesaikan ${widget.coins >= 300 ? 2 : 1} modul pembelajaran", 0.5, "1/${widget.coins >= 300 ? 2 : 1}"),
            const SizedBox(height: 12),
            _MissionTile("Jawab ${widget.xp >= 500 ? 15 : 10} pertanyaan kuis dengan benar", 0.7, "${(widget.xp * 0.1).round()}/${widget.xp >= 500 ? 15 : 10}")
          ])),
          const SizedBox(height: 24),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [const Text("Top Global 🏆", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white)), GestureDetector(onTap: () => _showAllRankings(context), child: const Text("Lihat Semua", style: TextStyle(color: AppColors.accent, fontSize: 12)))]),
          const SizedBox(height: 12),
          SizedBox(height: 100, child: ListView.builder(scrollDirection: Axis.horizontal, itemCount: top3.length, itemBuilder: (ctx, i) => Container(margin: const EdgeInsets.only(right: 16), padding: const EdgeInsets.all(12), decoration: BoxDecoration(color: AppColors.cardDark.withOpacity(0.8), borderRadius: BorderRadius.circular(16)), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [CircleAvatar(backgroundImage: NetworkImage(top3[i]['avatar']), radius: 20, child: Text(top3[i]['name'][0], style: const TextStyle(color: Colors.white))), const SizedBox(height: 4), Text("#${i+1}", style: const TextStyle(fontSize: 12, color: AppColors.accent, fontWeight: FontWeight.bold)), Text(top3[i]['name'].toString().split(' ')[0], style: const TextStyle(fontSize: 10, color: Colors.white))])))),
          const SizedBox(height: 24),
          const Text("Materi Pembelajaran", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white)), const SizedBox(height: 8),
          const Text("Pelajari berbagai topik teknologi dengan materi lengkap dan interaktif", style: TextStyle(color: Colors.grey, fontSize: 12)), const SizedBox(height: 12),
          GridView.builder(shrinkWrap: true, physics: const NeverScrollableScrollPhysics(), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16, childAspectRatio: 1.2), itemCount: materials.length, itemBuilder: (ctx, i) {
            String key = materials.keys.elementAt(i); var item = materials[key]!;
            return GestureDetector(onTap: () => _showMateri(context, key, item), child: Container(padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: AppColors.cardDark.withOpacity(0.8), borderRadius: BorderRadius.circular(16), border: Border.all(color: (item['color'] as Color).withOpacity(0.3))), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(item['icon'], color: item['color'], size: 40), const SizedBox(height: 12), Text(key, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white)), const SizedBox(height: 4), Text("Pelajari ${key.toLowerCase()}", textAlign: TextAlign.center, style: const TextStyle(fontSize: 10, color: Colors.grey))])));})
        ]),
        // Launch Rocket Animation
        AnimatedBuilder(
          animation: _launchCtrl,
          builder: (ctx, child) {
            final double t = _launchCtrl.value;
            if (t == 0 || t == 1) return const SizedBox();
            final size = MediaQuery.of(context).size;
            final double y = size.height + 100 - (size.height + 200) * t; // Launch from bottom to top
            return Positioned(
              left: size.width / 2 - 25, top: y,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.rocket_rounded, size: 50, color: Colors.white.withOpacity(0.9)),
                  Transform.translate(offset: const Offset(0, -15), child: const _RocketFire()),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
  Widget _StatCard(IconData i, String v, String l, Color c) => Container(padding: const EdgeInsets.all(12), decoration: BoxDecoration(color: AppColors.cardDark.withOpacity(0.8), borderRadius: BorderRadius.circular(12), border: Border.all(color: c.withOpacity(0.3))), child: Row(children: [Icon(i, color: c, size: 24), const SizedBox(width: 10), Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Text(v, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)), Text(l, style: const TextStyle(fontSize: 10, color: Colors.grey))])]));
  Widget _MissionTile(String t, double p, String v) => Row(children: [Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(t, style: const TextStyle(fontSize: 12, color: Colors.white)), const SizedBox(height: 6), LinearProgressIndicator(value: p, color: AppColors.success, backgroundColor: Colors.black26, minHeight: 6, borderRadius: BorderRadius.circular(3))])), const SizedBox(width: 12), Text(v, style: const TextStyle(fontSize: 12, color: Colors.grey))]);
  void _showMateri(BuildContext ctx, String t, Map<String, dynamic> d) { showModalBottomSheet(context: ctx, isScrollControlled: true, backgroundColor: Colors.transparent, builder: (c) => DraggableScrollableSheet(initialChildSize: 0.9, builder: (_, s) => Container(padding: const EdgeInsets.all(24), decoration: const BoxDecoration(color: AppColors.bgDark, borderRadius: BorderRadius.vertical(top: Radius.circular(30)), border: Border(top: BorderSide(color: AppColors.accent))), child: ListView(controller: s, children: [Row(children: [Icon(d['icon'], color: d['color'], size: 30), const SizedBox(width: 12), Expanded(child: Text(t, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)))]), const Divider(height: 40, color: Colors.white24), Text(d['content'], style: const TextStyle(fontSize: 16, height: 1.7, color: Colors.white70)), const SizedBox(height: 40), _NeonButton(text: "TUTUP", onPressed: ()=>Navigator.pop(c), fullWidth: true)])))); }
  void _showAllRankings(BuildContext ctx) { showModalBottomSheet(context: ctx, isScrollControlled: true, backgroundColor: Colors.transparent, builder: (c) => DraggableScrollableSheet(initialChildSize: 0.9, builder: (_, s) => Container(padding: const EdgeInsets.all(24), decoration: const BoxDecoration(color: AppColors.bgDark, borderRadius: BorderRadius.vertical(top: Radius.circular(30)), border: Border(top: BorderSide(color: AppColors.accent))), child: Column(children: [const Text("TOP GLOBAL RANKINGS", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)), const SizedBox(height: 20), Expanded(child: ListView.separated(itemCount: widget.rankData.length, separatorBuilder: (_,__)=>const Divider(height: 1, color: Colors.white10), itemBuilder: (ctx, i) { final it = widget.rankData[i]; return ListTile(contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), tileColor: it['isMe']?AppColors.primary.withOpacity(0.2):Colors.transparent, leading: CircleAvatar(backgroundImage: NetworkImage(it['avatar']), radius: 25, child: Text("${i+1}", style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold))), title: Text(it['name'], style: TextStyle(color: it['isMe']?AppColors.accent:Colors.white, fontWeight: it['isMe']?FontWeight.bold:FontWeight.normal, fontSize: 16)), subtitle: Text("Level ${((it['xp']/1000).floor()+1)}", style: const TextStyle(color: Colors.grey)), trailing: Container(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4), decoration: BoxDecoration(color: AppColors.warning.withOpacity(0.2), borderRadius: BorderRadius.circular(12)), child: Text("${it['xp']} XP", style: const TextStyle(color: AppColors.warning, fontWeight: FontWeight.bold)))); }))])))); }
}

// --- TAB 2: BELAJAR (MODERN CARDS) ---
class _BelajarTab extends StatefulWidget {
  final List<Map<String, dynamic>> levels;
  final Function(int) onPlay;
  const _BelajarTab({required this.levels, required this.onPlay});

  @override
  State<_BelajarTab> createState() => _BelajarTabState();
}

class _BelajarTabState extends State<_BelajarTab>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 16),
          child: Text(
            "Peta Pembelajaran",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            itemCount: widget.levels.length,
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (ctx, i) {
              var lvl = widget.levels[i];
              bool isLocked = lvl['status'] == 0;
              bool isCompleted = lvl['status'] == 2;

              final animation = Tween<double>(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(
                  parent: _animationController,
                  curve: Interval(
                    (1 / widget.levels.length) * i,
                    1.0,
                    curve: Curves.easeOut,
                  ),
                ),
              );

              return AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: Transform.translate(
                      offset: Offset(0.0, 50 * (1.0 - animation.value)),
                      child: child,
                    ),
                  );
                },
                child: GestureDetector(
                  onTap: isLocked ? null : () => widget.onPlay(i),
                  child: _GlassCard(
                    padding: EdgeInsets.zero,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color:
                                      (lvl['color'] as Color).withOpacity(0.2),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(lvl['icon'],
                                    color: lvl['color'], size: 30),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Level ${i + 1}",
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12),
                                    ),
                                    Text(
                                      lvl['title'],
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(height: 4),
                                    if (isCompleted)
                                      const Text("Selesai!",
                                          style: TextStyle(
                                              color: AppColors.success,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold))
                                    else if (!isLocked)
                                      const Text("Tersedia",
                                          style: TextStyle(
                                              color: AppColors.accent,
                                              fontSize: 12))
                                    else
                                      const Text("Terkunci",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12))
                                  ],
                                ),
                              ),
                              if (!isLocked)
                                const Icon(Icons.play_circle_fill_rounded,
                                    color: Colors.white, size: 40)
                            ],
                          ),
                        ),
                        if (isLocked)
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(Icons.lock_rounded,
                                  color: Colors.white54, size: 40),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// --- TAB 2.5: GAME (RPG) ---
class GameScene {
  final String text;
  final List<GameChoice> choices;
  final String? image;
  const GameScene(this.text, this.choices, {this.image});
}

class GameChoice {
  final String text;
  final String nextSceneId;
  final int xp;
  const GameChoice(this.text, this.nextSceneId, {this.xp = 0});
}

class _GameData {
  static final Map<String, GameScene> story = {
    'start': const GameScene(
      "Kamu adalah seorang mahasiswa informatika pemberani di Universitas Cyber. Tiba-tiba, alarm berbunyi! Sistem jaringan utama kampus diserang oleh entitas tak dikenal. Ini kesempatanmu untuk beraksi!",
      [
        GameChoice("Periksa log server untuk anomali", 'log_server', xp: 10),
        GameChoice("Langsung perkuat firewall utama", 'firewall_first', xp: 5),
        GameChoice("Lapor ke dosen dulu", 'report_lecturer', xp: 0),
      ],
      image: 'assets/images/server_room.png'
    ),
    'log_server': const GameScene(
      "Kamu menemukan sebuah script aneh `worm.sh` yang berjalan. Script ini mereplikasi diri ke seluruh jaringan. Serangan cacing! Apa langkahmu selanjutnya?",
      [
        GameChoice("Isolasi server yang terinfeksi", 'isolate_server', xp: 20),
        GameChoice("Coba hapus script secara manual", 'delete_manual', xp: -10),
      ],
    ),
    'firewall_first': const GameScene(
      "Firewall berhasil diperkuat, memperlambat penyebaran serangan. Namun, beberapa sistem sudah terinfeksi. Kamu melihat ada backdoor yang terbuka di port 22.",
      [
        GameChoice("Tutup port 22 dan patch vulnerability", 'patch_vuln', xp: 25),
        GameChoice("Gunakan backdoor untuk melacak balik si hacker", 'trace_hacker', xp: 15),
      ],
    ),
    'report_lecturer': const GameScene(
      "Dosenmu, seorang pakar keamanan siber, memberimu alat canggih 'NetShield v3.0'. 'Gunakan ini dengan bijak,' pesannya. Serangan semakin parah.",
      [
        GameChoice("Gunakan NetShield untuk karantina otomatis", 'use_netshield', xp: 30),
        GameChoice("Abaikan alatnya, coba cara manual", 'log_server', xp: -5),
      ],
    ),
    'isolate_server': const GameScene(
      "Server berhasil diisolasi! Penyebaran berhenti. Sekarang kamu punya waktu untuk menganalisis cacing itu di lingkungan yang aman. Kamu menemukan signature uniknya.",
      [
        GameChoice("Buat patch antivirus berdasarkan signature", 'create_patch', xp: 50),
        GameChoice("Lapor ke tim keamanan global", 'report_global', xp: 20),
      ],
    ),
    'delete_manual': const GameScene(
      "Oh tidak! Saat menghapus script, kamu tidak sengaja menghapus file sistem penting. Jaringan menjadi tidak stabil. Kamu kehilangan 10 XP karena kecerobohan.",
      [
        GameChoice("Coba restore dari backup", 'restore_backup', xp: 15),
        GameChoice("Mulai ulang dari awal", 'start', xp: 0),
      ],
    ),
    'patch_vuln': const GameScene(
      "Kerja bagus! Backdoor ditutup dan celah keamanan telah ditambal. Serangan berhasil dihentikan. Kamu mendapatkan pujian dari rektor.",
      [
        GameChoice("Mulai petualangan baru", 'start', xp: 0),
      ],
    ),
    'trace_hacker': const GameScene(
      "Upaya melacak balik membawamu ke sebuah IP yang terenkripsi. Kamu berhasil mendekripsinya dan menemukan identitas hacker: 'Mr. Robot'. Tapi dia sadar dan menyerang balik sistemmu!",
      [
        GameChoice("Bertahan dari serangan balasan", 'defend_attack', xp: 30),
        GameChoice("Putuskan koneksi dan kabur", 'run_away', xp: -20),
      ],
    ),
    'use_netshield': const GameScene(
      "NetShield bekerja dengan sempurna! Dalam hitungan detik, semua ancaman dikarantina dan jaringan kembali normal. Teknologi memang luar biasa. Kamu mendapatkan banyak XP.",
      [
        GameChoice("Mulai petualangan baru", 'start', xp: 0),
      ],
    ),
    'create_patch': const GameScene(
      "Patch antivirusmu berhasil! Kamu mendeploy-nya ke seluruh jaringan, membersihkan semua sisa-sisa cacing. Kamu menjadi pahlawan kampus!",
      [
        GameChoice("Mulai petualangan baru", 'start', xp: 0),
      ],
    ),
    'report_global': const GameScene(
      "Tim keamanan global berterima kasih atas temuanmu. Signature cacing ini ternyata varian baru. Kontribusimu membantu melindungi ribuan institusi lain.",
      [
        GameChoice("Mulai petualangan baru", 'start', xp: 0),
      ],
    ),
    'restore_backup': const GameScene(
      "Beruntung, backup semalam masih utuh. Kamu berhasil merestore sistem, meskipun butuh waktu. Pelajaran berharga didapatkan.",
      [
        GameChoice("Kembali selidiki log server", 'log_server', xp: 5),
      ],
    ),
     'defend_attack': const GameScene(
      "Dengan keahlianmu, kamu menangkis serangan 'Mr. Robot' dan bahkan berhasil mendapatkan akses ke sistemnya. Kamu menemukan rencananya untuk meretas bank sentral!",
      [
        GameChoice("Gagalkan rencananya dan laporkan", 'final_win', xp: 100),
      ],
    ),
    'run_away': const GameScene(
      "Kamu panik dan memutuskan koneksi. Sayangnya, 'Mr. Robot' sudah sempat menanamkan keylogger di sistemmu. Reputasimu tercoreng.",
      [
        GameChoice("Mulai dari awal dengan lebih hati-hati", 'start', xp: 0),
      ],
    ),
    'final_win': const GameScene(
      "Kamu menjadi legenda! Tidak hanya menyelamatkan kampus, kamu juga menggagalkan peretasan tingkat nasional. Pemerintah memberimu medali kehormatan. Total XP kamu meroket!",
      [
        GameChoice("Cari tantangan baru", 'start', xp: 0),
      ],
    ),
  };
}


class _GameTab extends StatefulWidget {
  final int xp;
  final Function(int) onXpGained;
  const _GameTab({required this.xp, required this.onXpGained});

  @override
  State<_GameTab> createState() => _GameTabState();
}

class _GameTabState extends State<_GameTab> with AutomaticKeepAliveClientMixin {
  String _currentSceneId = 'start';
  Map<String, int> _visitCounts = {};
  String? _feedbackMessage;
  
  @override
  bool get wantKeepAlive => true;

  void _makeChoice(GameChoice choice) {
    setState(() {
      _currentSceneId = choice.nextSceneId;
      
      int xpGained = choice.xp;
      if (xpGained != 0) {
        widget.onXpGained(xpGained);
        _feedbackMessage = xpGained > 0 ? "+$xpGained XP! 🔥" : "$xpGained XP... 😥";
        Future.delayed(const Duration(seconds: 2), () {
          if (mounted) setState(() => _feedbackMessage = null);
        });
      }

      _visitCounts.update(_currentSceneId, (val) => val + 1, ifAbsent: () => 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Needed for AutomaticKeepAliveClientMixin
    final scene = _GameData.story[_currentSceneId]!;
    final visitCount = _visitCounts[_currentSceneId] ?? 1;

    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        const Text(
          "RPG: Petualangan Informatika",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          "XP Anda saat ini: ${widget.xp}",
          style: const TextStyle(fontSize: 16, color: AppColors.accent),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        _GlassCard(
          child: Column(
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (child, animation) => FadeTransition(opacity: animation, child: child),
                child: Text(
                  visitCount > 1 && _currentSceneId != 'start'
                      ? "(Kembali ke lokasi ini)\n${scene.text}"
                      : scene.text,
                  key: ValueKey<String>(_currentSceneId),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16, color: Colors.white, height: 1.5),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
        if (_feedbackMessage != null)
           Padding(
             padding: const EdgeInsets.only(bottom: 16.0),
             child: Center(
               child: Chip(
                 backgroundColor: (_feedbackMessage?.contains("+") ?? false) ? AppColors.success.withOpacity(0.8) : Colors.redAccent.withOpacity(0.8),
                 label: Text(_feedbackMessage!, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
               ),
             ),
           ),
        ...scene.choices.map((choice) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: _NeonButton(
              text: choice.text,
              onPressed: () => _makeChoice(choice),
              fullWidth: true,
            ),
          );
        }).toList(),
      ],
    );
  }
}

// --- TAB 3: RANK (PODIUM) ---
class _RankTab extends StatelessWidget {
  final List<Map<String, dynamic>> rankData;
  const _RankTab({required this.rankData});
  @override Widget build(BuildContext context) {
    final top3 = rankData.take(3).toList(); final rest = rankData.skip(3).toList();
    return Column(children: [
      const Padding(padding: EdgeInsets.all(20), child: Text("TOP AGENT", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.accent, letterSpacing: 2))),
      SizedBox(height: 220, child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [_Pod(2, top3[1], 120, Colors.grey), _Pod(1, top3[0], 160, AppColors.warning), _Pod(3, top3[2], 100, Colors.brown)])),
      const SizedBox(height: 10),
      Expanded(child: Container(margin: const EdgeInsets.only(top: 10), decoration: const BoxDecoration(color: AppColors.cardDark, borderRadius: BorderRadius.vertical(top: Radius.circular(30))), child: ListView.separated(padding: const EdgeInsets.all(16), itemCount: rest.length, separatorBuilder: (_,__)=>const Divider(height: 1, color: Colors.white10), itemBuilder: (ctx, i) { final it = rest[i]; return ListTile(contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4), tileColor: it['isMe']?AppColors.primary.withOpacity(0.2):Colors.transparent, leading: CircleAvatar(backgroundImage: NetworkImage(it['avatar']), radius: 20, child: Text("${i+4}", style: const TextStyle(color: Colors.white))), title: Text(it['name'], style: TextStyle(color: it['isMe']?AppColors.accent:Colors.white, fontWeight: it['isMe']?FontWeight.bold:FontWeight.normal)), trailing: Text("${it['xp']} XP", style: const TextStyle(color: AppColors.warning, fontWeight: FontWeight.bold))); })))
    ]);
  }
  Widget _Pod(int r, Map u, double h, Color c) => Padding(padding: const EdgeInsets.symmetric(horizontal: 8), child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [CircleAvatar(radius: 20, backgroundImage: NetworkImage(u['avatar']), child: Text(u['name'][0], style: const TextStyle(color: Colors.white))), const SizedBox(height: 4), Text(u['name'].toString().split(' ')[0], style: const TextStyle(fontSize: 10, color: Colors.white)), Container(width: 70, height: h, decoration: BoxDecoration(gradient: LinearGradient(colors: [c.withOpacity(0.8), c.withOpacity(0.2)], begin: Alignment.topCenter, end: Alignment.bottomCenter), borderRadius: const BorderRadius.vertical(top: Radius.circular(8)), border: Border.all(color: c)), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text("#$r", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)), Text("${u['xp']}", style: const TextStyle(fontSize: 10, color: Colors.white))]))]));
}

// --- TAB 4: TOKO (SULTAN) ---
class _ShopTab extends StatefulWidget {
  final int coins; final Function(String, int) onBuy; final List<String> inventory;
  const _ShopTab({required this.coins, required this.onBuy, required this.inventory});
  @override State<_ShopTab> createState() => _ShopTabState();
}

class _ShopTabState extends State<_ShopTab> {
  String _filter = "ALL";
  
  final Map<String, List<(String, int, IconData, Color, String)>> categories = {
    "BOOSTERS": [
      ("Double XP (1 Hr)", 5000, Icons.bolt, Colors.amber, "Tingkatkan XP 2x"),
      ("Streak Freeze", 10000, Icons.ac_unit, Colors.cyan, "Jaga streak Anda"),
      ("Lucky Draw (10x)", 8000, Icons.casino, Colors.pink, "Kesempatan menang hadiah"),
      ("Experience Bomb", 7500, Icons.flash_on, Colors.deepOrange, "Bonus XP instant"),
    ],
    "COSMETICS": [
      ("Neon Avatar", 3000, Icons.face, Colors.greenAccent, "Avatar bercahaya"),
      ("Gold Frame", 4500, Icons.category, Colors.yellow, "Frame profile emas"),
      ("Dark Mode Theme", 2000, Icons.dark_mode, Colors.indigo, "Tema gelap eksklusif"),
      ("Rainbow Badge", 5000, Icons.card_membership, Colors.purple, "Badge pelangi langka"),
    ],
    "SULTAN ONLY": [
      ("Quantum Server", 1000000, Icons.dns, Colors.red, "Server quantum power"),
      ("Private Satellite", 50000000, Icons.satellite_alt, Colors.purpleAccent, "Satelit pribadi"),
      ("Infinity Engine", 500000, Icons.speed, Colors.lightBlue, "Kecepatan infinity"),
      ("Cosmic Crown", 2000000, Icons.star, Colors.amber, "Mahkota kosmik legend"),
    ],
    "PREMIUM": [
      ("VIP Pass (30 Days)", 50000, Icons.card_giftcard, Colors.orangeAccent, "Akses VIP bulanan"),
      ("Daily Bonus +100%", 15000, Icons.monetization_on, Colors.greenAccent, "Bonus harian 2x"),
      ("Level Skip Ticket", 25000, Icons.skip_next, Colors.cyan, "Lewati level sulit"),
      ("Unlimited Energy", 75000, Icons.energy_savings_leaf, Colors.lime, "Energi tanpa batas"),
    ],
  };
  
  @override Widget build(BuildContext context) {
    final filterKeys = ["ALL", ...categories.keys];
    final List<(String, int, IconData, Color, String)> items = _filter == "ALL" 
      ? categories.values.expand((e) => e).toList()
      : (categories[_filter] ?? []);
    
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.8),
          ),
          child: const Text(
            "🛍️ TOKO MAGIC",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // Credits Card
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [const Color(0xFF6A0572), const Color(0xFF240046)], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("💳 CREDITS", style: TextStyle(fontSize: 11, color: Colors.grey, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 4),
                          Text("${widget.coins} C", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.success)),
                        ],
                      ),
                      Icon(Icons.account_balance_wallet, size: 40, color: AppColors.accent.withOpacity(0.7)),
                    ],
                  ),
                ),
              ),
              
              // Filter Buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: filterKeys.map((cat) {
                      final isActive = _filter == cat;
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: GestureDetector(
                          onTap: () => setState(() => _filter = cat),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: isActive ? AppColors.primary : Colors.white10,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: isActive ? AppColors.primary : Colors.white10),
                            ),
                            child: Text(
                              cat,
                              style: TextStyle(
                                color: isActive ? Colors.white : Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              
              // Items
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: items.map((item) {
                    final owned = widget.inventory.contains(item.$1);
                    return _SimpleShopItem(
                      name: item.$1,
                      price: item.$2,
                      icon: item.$3,
                      color: item.$4,
                      description: item.$5,
                      owned: owned,
                      onBuy: owned ? null : () {
                        if (widget.coins >= item.$2) {
                          widget.onBuy(item.$1, item.$2);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("'${item.$1}' berhasil dibeli!"), backgroundColor: AppColors.success));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Koin tidak cukup untuk membeli item ini."), backgroundColor: Colors.red));
                        }
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}

class _SimpleShopItem extends StatelessWidget {
  final String name, description;
  final int price;
  final IconData icon;
  final Color color;
  final bool owned;
  final VoidCallback? onBuy;
  
  const _SimpleShopItem({
    required this.name,
    required this.price,
    required this.icon,
    required this.color,
    required this.description,
    required this.owned,
    this.onBuy,
  });
  
  @override Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.cardDark.withOpacity(0.7),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12)),
                const SizedBox(height: 3),
                Text(description, style: const TextStyle(fontSize: 10, color: Colors.grey)),
                const SizedBox(height: 4),
                if (!owned) Text("$price C", style: TextStyle(fontSize: 11, color: AppColors.success, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(width: 10),
          if (owned)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.success.withOpacity(0.2),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: AppColors.success),
              ),
              child: const Text("OWNED", style: TextStyle(color: AppColors.success, fontWeight: FontWeight.bold, fontSize: 10)),
            )
          else
            ElevatedButton(
              onPressed: onBuy,
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              ),
              child: const Text("BUY", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.white)),
            ),
        ],
      ),
    );
  }
}

// --- TAB 5: PROFIL (HOLOGRAPHIC) ---
class _ProfileTab extends StatefulWidget {
  final String username; final String avatar; final int xp, coins; final VoidCallback onLogout; final Function(String) onUpdate;
  const _ProfileTab({required this.username, required this.avatar, required this.xp, required this.coins, required this.onLogout, required this.onUpdate});
  @override State<_ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<_ProfileTab> {
  void _edit(BuildContext ctx) { 
    TextEditingController c = TextEditingController(text: widget.username);
    showDialog(
      context: ctx, 
      builder: (_) => AlertDialog(
        backgroundColor: AppColors.cardDark, 
        title: const Text("Ganti Nama", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), 
        content: _Input(c, "Nama Baru", Icons.edit), 
        actions: [
          TextButton(
            onPressed: () { 
              if(c.text.isNotEmpty) widget.onUpdate(c.text); 
              Navigator.pop(ctx); 
            }, 
            child: const Text("SIMPAN", style: TextStyle(color: AppColors.accent, fontWeight: FontWeight.bold))
          )
        ]
      )
    ); 
  }
  
  String _getRank(int xp) {
    if (xp >= 100000) return "🏆 Legend";
    if (xp >= 50000) return "⭐ Elite";
    if (xp >= 25000) return "💎 Master";
    if (xp >= 10000) return "🔥 Expert";
    if (xp >= 5000) return "✨ Advanced";
    return "🌱 Beginner";
  }
  
  @override Widget build(BuildContext context) {
    int lvl = (widget.xp / 1000).toInt() + 1;
    int rankProgress = widget.xp % 1000;
    
    return Scaffold(
      backgroundColor: AppColors.bgDark,
      body: CustomScrollView(
        slivers: [
          // Profile Header
          SliverAppBar(
            pinned: true,
            expandedHeight: 280,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [const Color(0xFF6A0572).withOpacity(0.8), const Color(0xFF240046).withOpacity(0.8)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [BoxShadow(color: AppColors.primary.withOpacity(0.3), blurRadius: 20)],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [AppColors.accent, AppColors.primary],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              boxShadow: [BoxShadow(color: AppColors.accent.withOpacity(0.5), blurRadius: 20)],
                            ),
                          ),
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: NetworkImage(widget.avatar),
                            child: Text(widget.username[0], style: const TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Text(
                        widget.username,
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _getRank(widget.xp),
                        style: const TextStyle(color: AppColors.accent, fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          
          // Stats Cards
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                children: [
                  _StatCard("📊 LEVEL", "$lvl", Colors.blueAccent),
                  _StatCard("⚡ XP", "${widget.xp}", Colors.yellowAccent),
                  _StatCard("💰 CREDITS", "${widget.coins}", AppColors.success),
                  _StatCard("🔥 PROGRESS", "${rankProgress}%", Colors.redAccent),
                ],
              ),
            ),
          ),
          
          // Progress Bar
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Next Level Progress", style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Container(
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white10,
                      boxShadow: [BoxShadow(color: AppColors.accent.withOpacity(0.3), blurRadius: 5)],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: rankProgress / 100,
                        backgroundColor: Colors.transparent,
                        valueColor: AlwaysStoppedAnimation<Color>(AppColors.accent),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Achievements
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("🏅 ACHIEVEMENTS", style: TextStyle(color: AppColors.accent, fontWeight: FontWeight.bold, fontSize: 14, letterSpacing: 1)),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _Badge("💯", "Perfect", "Nilai 100%"),
                      _Badge("🔥", "On Fire", "Streak 7 hari"),
                      _Badge("🚀", "Fast", "Complete dalam 30 detik"),
                      _Badge("👑", "Champion", "Rank #1"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          
          // Menu Items
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  _MenuButton("📝 Edit Profil", Icons.edit, () => _edit(context), AppColors.accent),
                  _MenuButton("⚙️ Pengaturan", Icons.settings, () => Navigator.push(context, MaterialPageRoute(builder: (_) => const _SettingsScreen())), Colors.blueAccent),
                  _MenuButton("📊 Statistik", Icons.bar_chart, () { 
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Total: 50 Quiz, 1250 XP earned, 5 hari streak! 📈"))
                    );
                  }, Colors.greenAccent),
                  _MenuButton("🎯 Target Mingguan", Icons.schedule, () { 
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Target: 10000 XP | Progress: 65% ✅"))
                    );
                  }, Colors.orangeAccent),
                  _MenuButton("🚪 Keluar", Icons.logout, widget.onLogout, Colors.redAccent),
                ],
              ),
            ),
          ),
          
          SliverToBoxAdapter(
            child: const SizedBox(height: 24),
          ),
        ],
      ),
    );
  }
  
  Widget _MenuButton(String title, IconData icon, VoidCallback onTap, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: AppColors.cardDark.withOpacity(0.6),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.2)),
        boxShadow: [BoxShadow(color: color.withOpacity(0.1), blurRadius: 8)],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(icon, color: color, size: 24),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  Widget _StatCard(String label, String value, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardDark.withOpacity(0.6),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withOpacity(0.3)),
        boxShadow: [BoxShadow(color: color.withOpacity(0.2), blurRadius: 12)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: TextStyle(color: Colors.grey, fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 0.5)),
          const SizedBox(height: 8),
          Text(value, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: color)),
        ],
      ),
    );
  }
  
  Widget _Badge(String emoji, String title, String desc) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.cardDark.withOpacity(0.8),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white10),
            boxShadow: [BoxShadow(color: AppColors.accent.withOpacity(0.2), blurRadius: 8)],
          ),
          child: Text(emoji, style: const TextStyle(fontSize: 24)),
        ),
        const SizedBox(height: 4),
        Text(title, style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold)),
        const SizedBox(height: 2),
        Text(desc, style: const TextStyle(color: Colors.grey, fontSize: 9), textAlign: TextAlign.center),
      ],
    );
  }
}

class _SettingsScreen extends StatelessWidget {
  const _SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Helper function to show a snackbar
    void showComingSoon(BuildContext ctx) {
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(content: Text("Fitur ini akan segera hadir! 🔧")),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.bgDark,
      appBar: AppBar(
        title: const Text("Pengaturan"),
        backgroundColor: AppColors.cardDark,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: CyberBackground(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            _buildSettingsSection(
              context,
              "Akun",
              [
                _buildSettingsItem(context, "Ganti Password", Icons.lock_outline, () => showComingSoon(context)),
                _buildSettingsItem(context, "Email", Icons.alternate_email, () => showComingSoon(context)),
                _buildSettingsItem(context, "Hapus Akun", Icons.delete_forever, () => showComingSoon(context), isDestructive: true),
              ],
            ),
            _buildSettingsSection(
              context,
              "Aplikasi",
              [
                _buildSettingsItemWithSwitch(context, "Notifikasi Push", Icons.notifications_active, true, (val) {}),
                _buildSettingsItemWithSwitch(context, "Animasi Latar", Icons.animation, true, (val) {}),
                _buildSettingsItem(context, "Hapus Cache", Icons.cleaning_services, () => showComingSoon(context)),
              ],
            ),
            _buildSettingsSection(
              context,
              "Tentang",
              [
                _buildSettingsItem(context, "Versi Aplikasi", Icons.info_outline, () {}, trailing: const Text("1.0.0", style: TextStyle(color: Colors.grey))),
                _buildSettingsItem(context, "Kebijakan Privasi", Icons.privacy_tip_outlined, () => showComingSoon(context)),
                _buildSettingsItem(context, "Beri Rating", Icons.star_border, () => showComingSoon(context)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsSection(BuildContext context, String title, List<Widget> children) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              color: AppColors.accent,
              fontWeight: FontWeight.bold,
              fontSize: 12,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: AppColors.cardDark.withOpacity(0.6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(children: children),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsItem(BuildContext context, String title, IconData icon, VoidCallback onTap, {Widget? trailing, bool isDestructive = false}) {
    return ListTile(
      leading: Icon(icon, color: isDestructive ? Colors.redAccent : Colors.white70),
      title: Text(title, style: TextStyle(color: isDestructive ? Colors.redAccent : Colors.white)),
      trailing: trailing ?? const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white30),
      onTap: onTap,
    );
  }
  
  Widget _buildSettingsItemWithSwitch(BuildContext context, String title, IconData icon, bool value, ValueChanged<bool> onChanged) {
    return ListTile(
      leading: Icon(icon, color: Colors.white70),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
        activeColor: AppColors.primary,
        inactiveThumbColor: Colors.grey,
        inactiveTrackColor: Colors.black26,
      ),
    );
  }
}

class QuizScreen extends StatefulWidget { final int idx; final Map<String, dynamic> lvl; final Function(int) onFin; const QuizScreen({super.key, required this.idx, required this.lvl, required this.onFin}); @override State<QuizScreen> createState() => _QuizScreenState(); }
class _QuizScreenState extends State<QuizScreen> {
  int qI = 0, score = 0; bool fin = false; late List<Map<String, dynamic>> qs;
  @override void initState() { super.initState(); qs = DataStore.getQuestions(widget.idx); }
  void _ans(int idx) { if (idx == qs[qI]['a']) { score += 20; ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Benar!"), backgroundColor: AppColors.success)); Future.delayed(const Duration(milliseconds: 500), () { if(qI<qs.length-1) setState(()=>qI++); else setState(()=>fin=true); }); } else showDialog(context: context, builder: (c)=>AlertDialog(backgroundColor: AppColors.cardDark, title: const Text("Salah", style: TextStyle(color: Colors.red)), content: Text(qs[qI]['expl'], style: const TextStyle(color: Colors.white)), actions: [TextButton(onPressed: ()=>Navigator.pop(c), child: const Text("COBA LAGI"))])); }
  @override Widget build(BuildContext context) { if (fin) return Scaffold(backgroundColor: AppColors.bgDark, body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [const Icon(Icons.check_circle, size: 80, color: AppColors.success), const Text("SELESAI", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)), const SizedBox(height: 20), _NeonButton(text: "LANJUT", onPressed: ()=>widget.onFin(score))]))); var q = qs[qI]; return Scaffold(backgroundColor: AppColors.bgDark, appBar: AppBar(title: Text("Level ${widget.idx+1}"), backgroundColor: Colors.transparent, foregroundColor: Colors.white), body: Padding(padding: const EdgeInsets.all(24), child: Column(children: [LinearProgressIndicator(value: (qI+1)/qs.length, color: AppColors.accent, backgroundColor: Colors.white10), const SizedBox(height: 40), Text(q['q'], style: const TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center), const SizedBox(height: 40), ...(q['opt'] as List).asMap().entries.map((e) => Padding(padding: const EdgeInsets.only(bottom: 12), child: SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=>_ans(e.key), style: ElevatedButton.styleFrom(backgroundColor: AppColors.cardDark, padding: const EdgeInsets.all(16), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: const BorderSide(color: AppColors.primary))), child: Text(e.value, style: const TextStyle(color: Colors.white))))))]))); }
}

// --- UTILS ---
class _CyberParticles extends StatefulWidget { const _CyberParticles(); @override State<_CyberParticles> createState() => _BPState(); }
class _BPState extends State<_CyberParticles> with SingleTickerProviderStateMixin {
  late AnimationController _c; final List<_Dot> _d = List.generate(20, (i) => _Dot());
  @override void initState() { super.initState(); _c = AnimationController(vsync: this, duration: const Duration(seconds: 10))..repeat(); Timer.periodic(const Duration(milliseconds: 50), (t) { if(mounted) setState(() { for(var d in _d) d.mov(); }); }); }
  @override void dispose() { _c.dispose(); super.dispose(); }
  @override Widget build(BuildContext context) => Stack(children: _d.map((d) => Positioned(left: d.x, top: d.y, child: Opacity(opacity: d.o, child: Container(width: d.s, height: d.s, decoration: BoxDecoration(color: d.c, shape: BoxShape.circle, boxShadow: [BoxShadow(color: d.c, blurRadius: 5)]))))).toList());
}
class _Dot { double x=Random().nextDouble()*400, y=Random().nextDouble()*800, s=Random().nextDouble()*3, o=Random().nextDouble()*0.5; Color c = [AppColors.primary, AppColors.accent, Colors.white][Random().nextInt(3)]; void mov() { y-=0.3; if(y<0) { y=800; x=Random().nextDouble()*400; } } }
class _GlassCard extends StatelessWidget { final Widget child; final EdgeInsets padding; const _GlassCard({required this.child, this.padding=const EdgeInsets.all(16)}); @override Widget build(BuildContext context) => ClipRRect(borderRadius: BorderRadius.circular(20), child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), child: Container(padding: padding, decoration: BoxDecoration(color: Colors.white.withOpacity(0.05), borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.white10)), child: child))); }
class _NeonButton extends StatelessWidget { final String text; final VoidCallback onPressed; final bool isBig, fullWidth; const _NeonButton({required this.text, required this.onPressed, this.isBig=false, this.fullWidth=false}); @override Widget build(BuildContext context) => Container(width: fullWidth?double.infinity:null, decoration: BoxDecoration(boxShadow: [BoxShadow(color: AppColors.primary.withOpacity(0.5), blurRadius: 15)]), child: ElevatedButton(onPressed: onPressed, style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, padding: EdgeInsets.all(isBig?20:16), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))), child: Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: isBig?16:14, color: Colors.white)))); }
class _Input extends StatelessWidget { final TextEditingController c; final String h; final IconData i; final bool isPass; const _Input(this.c, this.h, this.i, {this.isPass=false}); @override Widget build(BuildContext context) => TextField(controller: c, obscureText: isPass, style: const TextStyle(color: Colors.white), decoration: InputDecoration(filled: true, fillColor: Colors.black26, hintText: h, hintStyle: const TextStyle(color: Colors.grey), prefixIcon: Icon(i, color: AppColors.accent), border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.white10)), focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: AppColors.accent)))); }
class _Chip extends StatelessWidget { final IconData i; final String v; final Color c; const _Chip(this.i, this.v, this.c); @override Widget build(BuildContext context) => Container(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), decoration: BoxDecoration(color: Colors.black45, borderRadius: BorderRadius.circular(6), border: Border.all(color: c)), child: Row(children: [Icon(i, color: c, size: 14), const SizedBox(width: 4), Text(v, style: TextStyle(color: c, fontWeight: FontWeight.bold))])); }
extension BlurExt on Widget { Widget blur(double s) => ImageFiltered(imageFilter: ImageFilter.blur(sigmaX: s, sigmaY: s), child: this); }
