import 'package:flutter/material.dart';

void main() {
  runApp(const TradieConnectApp());
}

// ============================================================
// BOTTOM NAVIGATION
// ============================================================

void navigateToTab(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
      break;
    case 1:
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const SearchResultsScreen()),
      );
      break;
    case 2:
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const JobsScreen()),
      );
      break;
    case 3:
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const MessagesScreen()),
      );
      break;
    case 4:
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const ProfileScreen()),
      );
      break;
  }
}

// ============================================================
// SHARED BOTTOM NAVIGATION
// ============================================================

class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  const AppBottomNavigationBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade200, width: 1)),
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) => navigateToTab(context, index),
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey.shade600,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            elevation: 0,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined),
                activeIcon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.work_outline),
                activeIcon: Icon(Icons.work),
                label: 'Jobs',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline),
                activeIcon: Icon(Icons.chat_bubble),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// APP
// ============================================================

class TradieConnectApp extends StatelessWidget {
  const TradieConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TradieConnect',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        scaffoldBackgroundColor: const Color(0xFFF7F7F7),
        fontFamily: 'Arial',
      ),
      home: const SplashScreen(),
    );
  }
}

// ============================================================
// DATA
// ============================================================

class Tradie {
  final String name;
  final String trade;
  final double rating;
  final int reviews;
  final String distance;
  final String experience;
  final String description;
  final String initials;
  final String? imageUrl;
  final String location;
  final bool availableToday;
  final bool availableThisWeek;

  Tradie({
    required this.name,
    required this.trade,
    required this.rating,
    required this.reviews,
    required this.distance,
    required this.experience,
    required this.description,
    required this.initials,
    this.imageUrl,
    this.location = 'Melbourne, VIC',
    this.availableToday = true,
    this.availableThisWeek = true,
  });
}

final List<Tradie> tradies = [
  Tradie(
    name: 'John Doe',
    imageUrl: 'https://i.pravatar.cc/300?img=12',
    trade: 'Electrician',
    rating: 4.8,
    reviews: 124,
    distance: '2km away',
    experience: '5+ years',
    description:
        '5+ years experience in residential and commercial electrical work. Specialising in rewiring, lighting, switchboards and safety inspections.',
    initials: 'JD',
    location: 'Melbourne, VIC',
  ),
  Tradie(
    name: 'Sarah Smith',
    imageUrl: 'https://i.pravatar.cc/300?img=47',
    trade: 'Electrician',
    rating: 4.7,
    reviews: 92,
    distance: '3km away',
    experience: '3-5 years',
    description:
        'Experienced residential electrician providing reliable electrical installation and maintenance services.',
    initials: 'SS',
    location: 'Richmond, Melbourne, VIC',
  ),
  Tradie(
    name: 'Michael Brown',
    imageUrl: 'https://i.pravatar.cc/300?img=33',
    trade: 'Electrician',
    rating: 4.6,
    reviews: 76,
    distance: '4km away',
    experience: '5+ years',
    description:
        'Qualified electrician specialising in commercial and residential electrical work.',
    initials: 'MB',
    location: 'Melbourne, VIC',
  ),
  Tradie(
    name: 'David Lee',
    imageUrl: 'https://i.pravatar.cc/300?img=56',
    trade: 'Electrician',
    rating: 4.5,
    reviews: 63,
    distance: '5km away',
    experience: '5+ years',
    description:
        'Professional electrician with experience across domestic and commercial projects.',
    initials: 'DL',
    location: 'Melbourne, VIC',
  ),
  Tradie(
    name: 'James Wilson',
    imageUrl: 'https://i.pravatar.cc/300?img=11',
    trade: 'Carpenter',
    rating: 4.9,
    reviews: 88,
    distance: '2km away',
    experience: '8+ years',
    description:
        'Experienced carpenter specialising in residential renovations, framing and custom timber work.',
    initials: 'JW',
    location: 'Brunswick, Melbourne, VIC',
  ),
  Tradie(
    name: 'Daniel Taylor',
    imageUrl: 'https://i.pravatar.cc/300?img=68',
    trade: 'Carpenter',
    rating: 4.7,
    reviews: 71,
    distance: '6km away',
    experience: '6+ years',
    description:
        'Reliable carpenter experienced in framing, decking, renovations and general carpentry.',
    initials: 'DT',
    location: 'Melbourne, VIC',
  ),
  Tradie(
    name: 'Mark Anderson',
    imageUrl: 'https://i.pravatar.cc/300?img=5',
    trade: 'Carpenter',
    rating: 4.6,
    reviews: 65,
    distance: '7km away',
    experience: '5+ years',
    description:
        'Skilled carpenter providing quality residential construction and renovation services.',
    initials: 'MA',
    location: 'Melbourne, VIC',
  ),
  Tradie(
    name: 'Ryan Johnson',
    imageUrl: 'https://i.pravatar.cc/300?img=13',
    trade: 'Plumber',
    rating: 4.8,
    reviews: 84,
    distance: '4km away',
    experience: '7+ years',
    description:
        'Licensed plumber specialising in residential plumbing, repairs and maintenance.',
    initials: 'RJ',
    location: 'Carlton, Melbourne, VIC',
  ),
  Tradie(
    name: 'Chris Martin',
    imageUrl: 'https://i.pravatar.cc/300?img=64',
    trade: 'Plumber',
    rating: 4.5,
    reviews: 59,
    distance: '8km away',
    experience: '5+ years',
    description:
        'Professional plumber experienced in installations, repairs and residential maintenance.',
    initials: 'CM',
    location: 'Melbourne, VIC',
  ),
  Tradie(
    name: 'Anthony Davis',
    imageUrl: 'https://i.pravatar.cc/300?img=14',
    trade: 'Bricklayer',
    rating: 4.7,
    reviews: 67,
    distance: '5km away',
    experience: '9+ years',
    description:
        'Experienced bricklayer specialising in residential brickwork, extensions and repairs.',
    initials: 'AD',
    location: 'Melbourne, VIC',
  ),
  Tradie(
    name: 'Peter Thompson',
    imageUrl: 'https://i.pravatar.cc/300?img=51',
    trade: 'Bricklayer',
    rating: 4.6,
    reviews: 52,
    distance: '9km away',
    experience: '7+ years',
    description:
        'Skilled bricklayer providing new builds, extensions, repairs and restoration work.',
    initials: 'PT',
    location: 'Melbourne, VIC',
  ),
  Tradie(
    name: 'Matthew Harris',
    imageUrl: 'https://i.pravatar.cc/300?img=8',
    trade: 'Painter',
    rating: 4.8,
    reviews: 73,
    distance: '6km away',
    experience: '6+ years',
    description:
        'Professional painter specialising in interior and exterior residential painting.',
    initials: 'MH',
    location: 'Melbourne, VIC',
  ),
  Tradie(
    name: 'Andrew Clark',
    imageUrl: 'https://i.pravatar.cc/300?img=15',
    trade: 'Tiler',
    rating: 4.7,
    reviews: 61,
    distance: '7km away',
    experience: '5+ years',
    description:
        'Experienced tiler specialising in kitchens, bathrooms, floors and wall tiling.',
    initials: 'AC',
    location: 'Melbourne, VIC',
  ),
  Tradie(
    name: 'Steven Lewis',
    imageUrl: 'https://i.pravatar.cc/300?img=52',
    trade: 'Plasterer',
    rating: 4.6,
    reviews: 48,
    distance: '10km away',
    experience: '6+ years',
    description:
        'Reliable plasterer experienced in repairs, ceilings, walls and new residential work.',
    initials: 'SL',
    location: 'Melbourne, VIC',
  ),
];


Tradie? findTradieByName(String name) {
  for (final tradie in tradies) {
    if (tradie.name == name) return tradie;
  }
  return null;
}

class TradieAvatar extends StatelessWidget {
  final String name;
  final double radius;
  final TextStyle? textStyle;

  const TradieAvatar({
    super.key,
    required this.name,
    this.radius = 28,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final tradie = findTradieByName(name);
    final initials = name
        .split(' ')
        .where((part) => part.isNotEmpty)
        .map((part) => part[0])
        .take(2)
        .join();

    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.orange,
      backgroundImage: tradie?.imageUrl != null
          ? NetworkImage(tradie!.imageUrl!)
          : null,
      child: tradie?.imageUrl == null
          ? Text(
              initials,
              style: textStyle ?? const TextStyle(color: Colors.white),
            )
          : null,
    );
  }
}

final List<String> savedTradies = [];

final List<String> messages = [
  'John Doe',
  'Sarah Smith',
  'Michael Brown',
  'David Lee',
];

// ============================================================
// SPLASH SCREEN
// ============================================================

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF263238), Color(0xFF101010)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              children: [
                const Spacer(),

                const Text(
                  'TradieConnect',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  'Find the right tradie.\nGet the job done.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 40),

                CircleAvatar(
                  radius: 75,
                  backgroundColor: Colors.orange,
                  child: const Icon(
                    Icons.engineering,
                    size: 80,
                    color: Colors.white,
                  ),
                ),

                const Spacer(),

                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const AccountTypeScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()),
                      );
                    },
                    child: const Text('Log In'),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// ACCOUNT TYPE
// ============================================================

class AccountTypeScreen extends StatelessWidget {
  const AccountTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const BackButton()),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 30),

            const Text(
              'Who are you?',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            const Text(
              'Choose an account type to continue',
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 35),

            AccountCard(
              icon: Icons.engineering,
              title: "I'm a Builder",
              subtitle: 'Post jobs and find the right tradies',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                );
              },
            ),

            const SizedBox(height: 20),

            AccountCard(
              icon: Icons.build,
              title: "I'm a Tradie",
              subtitle: 'Find job opportunities and grow your business',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                );
              },
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account? '),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    );
                  },
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

class AccountCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const AccountCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: Colors.orange,
                child: Icon(icon, color: Colors.white, size: 30),
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      subtitle,
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// LOGIN
// ============================================================

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const BackButton()),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),

            const Center(
              child: Text(
                'Welcome back!',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 8),

            const Center(
              child: Text(
                'Log in to your account',
                style: TextStyle(color: Colors.grey),
              ),
            ),

            const SizedBox(height: 35),

            const Text('Email'),
            const SizedBox(height: 8),

            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text('Password'),
            const SizedBox(height: 8),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                suffixIcon: const Icon(Icons.visibility_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                Checkbox(value: false, onChanged: (_) {}),
                const Text('Remember me'),
                const Spacer(),
                const Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const HomeScreen()),
                    (route) => false,
                  );
                },
                child: const Text('Log In'),
              ),
            ),

            const SizedBox(height: 25),

            const Center(child: Text('or continue with')),

            const SizedBox(height: 15),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.g_mobiledata),
                    label: const Text('Google'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.apple),
                    label: const Text('Apple'),
                  ),
                ),
              ],
            ),

            const Spacer(),

            const Center(
              child: Text.rich(
                TextSpan(
                  text: "Don't have an account? ",
                  children: [
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// HOME
// ============================================================

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int currentTradie = 0;

  String selectedTrade = 'All Trades';
  String selectedLocation = 'Any Location';
  String selectedAvailability = 'Any Availability';

  void nextTradie() {
    setState(() {
      currentTradie++;

      if (currentTradie >= filteredHomeTradies.length) {
        currentTradie = 0;
      }
    });
  }

  List<Tradie> get filteredHomeTradies {
    return tradies.where((tradie) {
      final matchesTrade =
          selectedTrade == 'All Trades' || tradie.trade == selectedTrade;

      final distance =
          double.tryParse(tradie.distance.replaceAll(RegExp(r'[^0-9.]'), '')) ??
          999;

      final matchesLocation = switch (selectedLocation) {
        'Any Location' => true,
        'Within 5 km' => distance <= 5,
        'Within 10 km' => distance <= 10,
        'Within 25 km' => distance <= 25,
        _ => true,
      };

      final matchesAvailability = switch (selectedAvailability) {
        'Available Today' => tradie.availableToday,
        'Available This Week' => tradie.availableThisWeek,
        _ => true,
      };

      return matchesTrade && matchesLocation && matchesAvailability;
    }).toList();
  }

  void openTradeFilter() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
      ),
      builder: (context) {
        const trades = [
          'All Trades',
          'Electrician',
          'Carpenter',
          'Plumber',
          'Bricklayer',
          'Painter',
          'Tiler',
          'Plasterer',
        ];

        return SafeArea(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.75,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                    'Select Trade',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),

                Flexible(
                  child: ListView(
                    shrinkWrap: true,
                    children: trades
                        .map(
                          (trade) => ListTile(
                            title: Text(trade),
                            trailing: selectedTrade == trade
                                ? const Icon(Icons.check, color: Colors.orange)
                                : null,
                            onTap: () {
                              setState(() {
                                selectedTrade = trade;
                                currentTradie = 0;
                              });
                              Navigator.pop(context);
                            },
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void openLocationFilter() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
      ),
      builder: (context) {
        const locations = [
          'Any Location',
          'Within 5 km',
          'Within 10 km',
          'Within 25 km',
        ];

        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  'Select Location',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ...locations.map(
                (location) => ListTile(
                  title: Text(location),
                  trailing: selectedLocation == location
                      ? const Icon(Icons.check, color: Colors.orange)
                      : null,
                  onTap: () {
                    setState(() {
                      selectedLocation = location;
                      currentTradie = 0;
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void openAvailabilityFilter() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
      ),
      builder: (context) {
        const options = [
          'Any Availability',
          'Available Today',
          'Available This Week',
        ];

        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  'Availability',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ...options.map(
                (option) => ListTile(
                  title: Text(option),
                  trailing: selectedAvailability == option
                      ? const Icon(Icons.check, color: Colors.orange)
                      : null,
                  onTap: () {
                    setState(() {
                      selectedAvailability = option;
                      currentTradie = 0;
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void openHomeFilters() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => FiltersScreen(
          initialTrade: selectedTrade,
          initialLocation: selectedLocation,
          initialAvailability: selectedAvailability,
          onApply: (trade, location, availability) {
            setState(() {
              selectedTrade = trade;
              selectedLocation = location;
              selectedAvailability = availability;
              currentTradie = 0;
            });
          },
        ),
      ),
    );
  }

  void openSearch({String initialQuery = ''}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SearchResultsScreen(initialQuery: initialQuery),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final visibleTradies = filteredHomeTradies;
    final int safeIndex = visibleTradies.isEmpty
        ? 0
        : currentTradie.clamp(0, visibleTradies.length - 1).toInt();

    return Scaffold(
      drawer: AppDrawer(
        onHome: () {
          Navigator.pop(context);
        },
      ),

      appBar: AppBar(
        title: const Text(
          'TradieConnect',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MessagesScreen()),
              );
            },
          ),
        ],
      ),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search by trade, name or location',
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.tune),
                          onPressed: openHomeFilters,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onSubmitted: (value) => openSearch(initialQuery: value),
                    ),
                  ),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  FilterChip(
                    label: Text(
                      selectedTrade == 'All Trades'
                          ? 'All Trades'
                          : selectedTrade,
                    ),
                    selected: selectedTrade != 'All Trades',
                    onSelected: (_) => openTradeFilter(),
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: Text(
                      selectedLocation == 'Any Location'
                          ? 'Location'
                          : selectedLocation,
                    ),
                    selected: selectedLocation != 'Any Location',
                    onSelected: (_) => openLocationFilter(),
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: Text(
                      selectedAvailability == 'Any Availability'
                          ? 'Availability'
                          : selectedAvailability,
                    ),
                    selected: selectedAvailability != 'Any Availability',
                    onSelected: (_) => openAvailabilityFilter(),
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: const Text('Filters'),
                    onSelected: (_) => openHomeFilters(),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  const Icon(Icons.location_on),
                  const SizedBox(width: 5),
                  const Text('Near You'),
                  const Spacer(),
                  TextButton(
                    onPressed: () => openSearch(),
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: visibleTradies.isEmpty
                  ? const Center(
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Text(
                          'No tradies match these filters.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 17, color: Colors.grey),
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                      child: TradieCard(
                        tradie: visibleTradies[safeIndex],
                        onProfile: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => TradieProfileScreen(
                                tradie: visibleTradies[safeIndex],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(Icons.close, size: 32),
                    onPressed: visibleTradies.isEmpty ? null : nextTradie,
                  ),
                ),

                const SizedBox(width: 100),

                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.orange,
                      size: 28,
                    ),
                    onPressed: visibleTradies.isEmpty
                        ? null
                        : () {
                            final name = visibleTradies[safeIndex].name;

                            if (!savedTradies.contains(name)) {
                              savedTradies.add(name);
                            }

                            nextTradie();
                          },
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),

      bottomNavigationBar: const AppBottomNavigationBar(currentIndex: 0),
    );
  }
}

// ============================================================
// HOME COMPONENTS
// ============================================================

class TradieCard extends StatelessWidget {
  final Tradie tradie;
  final VoidCallback onProfile;

  const TradieCard({super.key, required this.tradie, required this.onProfile});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onProfile,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 155,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Center(
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.orange,
                  backgroundImage: tradie.imageUrl != null
                      ? NetworkImage(tradie.imageUrl!)
                      : null,
                  child: tradie.imageUrl == null
                      ? Text(
                          tradie.initials,
                          style: const TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : null,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        tradie.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.bookmark_border, size: 20),
                    ],
                  ),

                  Text(tradie.trade),

                  const SizedBox(height: 5),

                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 17),
                      Text(' ${tradie.rating} (${tradie.reviews} reviews)'),
                    ],
                  ),

                  const SizedBox(height: 4),

                  Row(
                    children: [
                      const Icon(Icons.location_on, size: 16),
                      Text(' ${tradie.distance}'),
                    ],
                  ),

                  const SizedBox(height: 8),

                  Text(
                    tradie.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: 10),

                  Wrap(
                    spacing: 8,
                    children: const [
                      Chip(label: Text('Electrical')),
                      Chip(label: Text('Licensed')),
                      Chip(label: Text('Insured')),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// FILTERS
// ============================================================

class FiltersScreen extends StatefulWidget {
  final String initialTrade;
  final String initialLocation;
  final String initialAvailability;
  final void Function(String trade, String location, String availability)?
  onApply;

  const FiltersScreen({
    super.key,
    this.initialTrade = 'Electrician',
    this.initialLocation = 'Within 10 km',
    this.initialAvailability = 'Any Availability',
    this.onApply,
  });

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  late String trade;
  late String location;
  String experience = '5+ years';
  bool licensed = true;
  bool insured = true;
  late bool today;
  late bool week;

  @override
  void initState() {
    super.initState();
    trade = widget.initialTrade;
    location = widget.initialLocation;
    today = widget.initialAvailability == 'Available Today';
    week = widget.initialAvailability == 'Available This Week';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Filters',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                trade = widget.initialTrade;
                location = widget.initialLocation;
                experience = '5+ years';
                licensed = true;
                insured = true;
                today = widget.initialAvailability == 'Available Today';
                week = widget.initialAvailability == 'Available This Week';
              });
            },
            child: const Text('Reset', style: TextStyle(color: Colors.orange)),
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text('Trade', style: TextStyle(fontWeight: FontWeight.bold)),

          const SizedBox(height: 8),

          DropdownButtonFormField<String>(
            initialValue: trade,
            items: const [
              DropdownMenuItem(value: 'All Trades', child: Text('All Trades')),
              DropdownMenuItem(
                value: 'Electrician',
                child: Text('Electrician'),
              ),
              DropdownMenuItem(value: 'Plumber', child: Text('Plumber')),
              DropdownMenuItem(value: 'Carpenter', child: Text('Carpenter')),
              DropdownMenuItem(value: 'Bricklayer', child: Text('Bricklayer')),
              DropdownMenuItem(value: 'Painter', child: Text('Painter')),
              DropdownMenuItem(value: 'Tiler', child: Text('Tiler')),
              DropdownMenuItem(value: 'Plasterer', child: Text('Plasterer')),
            ],
            onChanged: (value) {
              setState(() {
                trade = value!;
              });
            },
          ),

          const SizedBox(height: 22),

          const Text('Location', style: TextStyle(fontWeight: FontWeight.bold)),

          const SizedBox(height: 8),

          DropdownButtonFormField<String>(
            initialValue: location,
            items: const [
              DropdownMenuItem(
                value: 'Any Location',
                child: Text('Any Location'),
              ),
              DropdownMenuItem(
                value: 'Within 5 km',
                child: Text('Within 5 km'),
              ),
              DropdownMenuItem(
                value: 'Within 10 km',
                child: Text('Within 10 km'),
              ),
              DropdownMenuItem(
                value: 'Within 25 km',
                child: Text('Within 25 km'),
              ),
              DropdownMenuItem(
                value: 'Within 50 km',
                child: Text('Within 50 km'),
              ),
            ],
            onChanged: (value) {
              setState(() {
                location = value!;
              });
            },
          ),

          const SizedBox(height: 22),

          const Text(
            'Experience',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          Wrap(
            spacing: 8,
            children: [
              ChoiceChip(
                label: const Text('Any'),
                selected: experience == 'Any',
                onSelected: (_) {
                  setState(() {
                    experience = 'Any';
                  });
                },
              ),
              ChoiceChip(
                label: const Text('1-3 years'),
                selected: experience == '1-3 years',
                onSelected: (_) {
                  setState(() {
                    experience = '1-3 years';
                  });
                },
              ),
              ChoiceChip(
                label: const Text('3-5 years'),
                selected: experience == '3-5 years',
                onSelected: (_) {
                  setState(() {
                    experience = '3-5 years';
                  });
                },
              ),
              ChoiceChip(
                label: const Text('5+ years'),
                selected: experience == '5+ years',
                onSelected: (_) {
                  setState(() {
                    experience = '5+ years';
                  });
                },
              ),
            ],
          ),

          const SizedBox(height: 22),

          const Text(
            'Availability',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          CheckboxListTile(
            value: today,
            title: const Text('Available today'),
            onChanged: (value) {
              setState(() {
                today = value!;
              });
            },
          ),

          CheckboxListTile(
            value: week,
            title: const Text('Available this week'),
            onChanged: (value) {
              setState(() {
                week = value!;
              });
            },
          ),

          const SizedBox(height: 10),

          const Text('Licence', style: TextStyle(fontWeight: FontWeight.bold)),

          CheckboxListTile(
            value: licensed,
            title: const Text('Licensed'),
            onChanged: (value) {
              setState(() {
                licensed = value!;
              });
            },
          ),

          CheckboxListTile(
            value: insured,
            title: const Text('Insured'),
            onChanged: (value) {
              setState(() {
                insured = value!;
              });
            },
          ),

          const SizedBox(height: 20),

          SizedBox(
            height: 52,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                final availability = today
                    ? 'Available Today'
                    : week
                    ? 'Available This Week'
                    : 'Any Availability';

                if (widget.onApply != null) {
                  widget.onApply!(trade, location, availability);
                  Navigator.pop(context);
                  return;
                }

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SearchResultsScreen(),
                  ),
                );
              },
              child: const Text('Apply Filters'),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// SEARCH RESULTS
// ============================================================

class SearchResultsScreen extends StatefulWidget {
  final String initialQuery;

  const SearchResultsScreen({super.key, this.initialQuery = ''});

  @override
  State<SearchResultsScreen> createState() => _SearchResultsScreenState();
}

class _SearchResultsScreenState extends State<SearchResultsScreen> {
  late final TextEditingController searchController;

  String selectedTrade = 'All Trades';
  String selectedLocation = 'Any Location';
  String sortBy = 'Default';

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController(text: widget.initialQuery);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  List<Tradie> get filteredTradies {
    final query = searchController.text.trim().toLowerCase();

    return tradies.where((tradie) {
      final matchesSearch =
          query.isEmpty ||
          tradie.name.toLowerCase().contains(query) ||
          tradie.trade.toLowerCase().contains(query) ||
          tradie.location.toLowerCase().contains(query);

      final matchesTrade =
          selectedTrade == 'All Trades' || tradie.trade == selectedTrade;

      final distance =
          double.tryParse(tradie.distance.replaceAll(RegExp(r'[^0-9.]'), '')) ??
          999;

      final matchesLocation = switch (selectedLocation) {
        'Any Location' => true,
        'Within 5 km' => distance <= 5,
        'Within 10 km' => distance <= 10,
        'Within 25 km' => distance <= 25,
        _ => true,
      };

      return matchesSearch && matchesTrade && matchesLocation;
    }).toList()..sort((a, b) {
      if (sortBy == 'Distance') {
        return _distanceValue(a).compareTo(_distanceValue(b));
      }
      if (sortBy == 'Rating') {
        return b.rating.compareTo(a.rating);
      }
      return 0;
    });
  }

  void openFilters() {
    String temporaryTrade = selectedTrade;
    String temporaryLocation = selectedLocation;

    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  20,
                  20,
                  20,
                  MediaQuery.of(context).viewInsets.bottom + 20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Search Filters',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Trade',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      initialValue: temporaryTrade,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: 'All Trades',
                          child: Text('All Trades'),
                        ),
                        DropdownMenuItem(
                          value: 'Electrician',
                          child: Text('Electrician'),
                        ),
                        DropdownMenuItem(
                          value: 'Plumber',
                          child: Text('Plumber'),
                        ),
                        DropdownMenuItem(
                          value: 'Carpenter',
                          child: Text('Carpenter'),
                        ),
                        DropdownMenuItem(
                          value: 'Bricklayer',
                          child: Text('Bricklayer'),
                        ),
                        DropdownMenuItem(
                          value: 'Painter',
                          child: Text('Painter'),
                        ),
                        DropdownMenuItem(value: 'Tiler', child: Text('Tiler')),
                        DropdownMenuItem(
                          value: 'Plasterer',
                          child: Text('Plasterer'),
                        ),
                      ],
                      onChanged: (value) {
                        if (value == null) return;
                        setModalState(() {
                          temporaryTrade = value;
                        });
                      },
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      'Location',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      initialValue: temporaryLocation,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: 'Any Location',
                          child: Text('Any Location'),
                        ),
                        DropdownMenuItem(
                          value: 'Within 5 km',
                          child: Text('Within 5 km'),
                        ),
                        DropdownMenuItem(
                          value: 'Within 10 km',
                          child: Text('Within 10 km'),
                        ),
                        DropdownMenuItem(
                          value: 'Within 25 km',
                          child: Text('Within 25 km'),
                        ),
                      ],
                      onChanged: (value) {
                        if (value == null) return;
                        setModalState(() {
                          temporaryLocation = value;
                        });
                      },
                    ),
                    const SizedBox(height: 22),
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            selectedTrade = temporaryTrade;
                            selectedLocation = temporaryLocation;
                          });
                          Navigator.pop(context);
                        },
                        child: const Text('Apply Filters'),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void openSortMenu() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
      ),
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  'Sort Results',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.near_me_outlined),
                title: const Text('Distance'),
                onTap: () {
                  setState(() {
                    sortBy = 'Distance';
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.star_outline),
                title: const Text('Rating'),
                onTap: () {
                  setState(() {
                    sortBy = 'Rating';
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  double _distanceValue(Tradie tradie) {
    return double.tryParse(
          tradie.distance.replaceAll(RegExp(r'[^0-9.]'), ''),
        ) ??
        999;
  }

  @override
  Widget build(BuildContext context) {
    final results = filteredTradies;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const HomeScreen()),
            );
          },
          tooltip: 'Back',
        ),
        title: const Text(
          'Search Results',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.tune),
            onPressed: openFilters,
            tooltip: 'Filters',
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 10),
            child: TextField(
              controller: searchController,
              onChanged: (_) => setState(() {}),
              onSubmitted: (_) => setState(() {}),
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search by trade, name or location',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.tune),
                  onPressed: openFilters,
                  tooltip: 'Filters',
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                Text('${results.length} results found'),
                const Spacer(),
                InkWell(
                  onTap: openSortMenu,
                  borderRadius: BorderRadius.circular(6),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                    child: Row(
                      children: [Text('Sort'), Icon(Icons.keyboard_arrow_down)],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: results.isEmpty
                ? const Center(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.search_off, size: 48, color: Colors.grey),
                          SizedBox(height: 12),
                          Text(
                            'No tradies found',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Try a different search term or adjust your filters.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: results.length,
                    itemBuilder: (context, index) {
                      final tradie = results[index];

                      return Card(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(10),
                          leading: TradieAvatar(
                            name: tradie.name,
                            radius: 28,
                          ),
                          title: Text(
                            tradie.name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(tradie.trade),
                              Text(
                                '★ ${tradie.rating}  ${tradie.distance}',
                                style: const TextStyle(color: Colors.orange),
                              ),
                              Text(
                                tradie.location,
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              savedTradies.contains(tradie.name)
                                  ? Icons.bookmark
                                  : Icons.bookmark_border,
                            ),
                            onPressed: () {
                              setState(() {
                                if (savedTradies.contains(tradie.name)) {
                                  savedTradies.remove(tradie.name);
                                } else {
                                  savedTradies.add(tradie.name);
                                }
                              });
                            },
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    TradieProfileScreen(tradie: tradie),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
      bottomNavigationBar: const AppBottomNavigationBar(currentIndex: 1),
    );
  }
}

// ============================================================
// TRADIE PROFILE
// ============================================================

class TradieProfileScreen extends StatelessWidget {
  final Tradie tradie;

  const TradieProfileScreen({super.key, required this.tradie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        actions: [
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            TradieAvatar(
              name: tradie.name,
              radius: 55,
              textStyle: const TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              tradie.name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            Text(tradie.trade),

            const SizedBox(height: 8),

            Text(
              '★ ${tradie.rating} (${tradie.reviews} reviews)',
              style: const TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            Text(tradie.distance, style: const TextStyle(color: Colors.grey)),

            const SizedBox(height: 20),

            Wrap(
              spacing: 10,
              children: const [
                Chip(
                  avatar: Icon(Icons.verified, size: 16),
                  label: Text('Licensed'),
                ),
                Chip(
                  avatar: Icon(Icons.verified, size: 16),
                  label: Text('Insured'),
                ),
              ],
            ),

            const Divider(height: 35),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),

            const SizedBox(height: 8),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(tradie.description),
            ),

            const SizedBox(height: 25),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Qualifications',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),

            const SizedBox(height: 8),

            const Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• Electrical Licence - VIC'),
                  Text('• Certificate III in Electrotechnology'),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      savedTradies.add(tradie.name);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const MatchScreen()),
                      );
                    },
                    child: const Text('Like & Connect'),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatScreen(tradieName: tradie.name),
                        ),
                      );
                    },
                    child: const Text('Message'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// MATCH
// ============================================================

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF111111), Color(0xFF263238)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(),

              const Text(
                "It's a Match!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'You and John Doe\nliked each other.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),

              const SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.white,
                    child: const Icon(Icons.person, size: 70),
                  ),
                  const SizedBox(width: 20),
                  CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.orange,
                    child: const Icon(
                      Icons.person,
                      size: 70,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              const Spacer(),

              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  const ChatScreen(tradieName: 'John Doe'),
                            ),
                          );
                        },
                        child: const Text('Start Chat'),
                      ),
                    ),

                    const SizedBox(height: 12),

                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: const BorderSide(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Keep Browsing'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// MESSAGES
// ============================================================

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Messages',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search messages',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: GestureDetector(
                    onTap: () {
                      final tradie = findTradieByName(messages[index]);
                      if (tradie != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => TradieProfileScreen(tradie: tradie),
                          ),
                        );
                      }
                    },
                    child: TradieAvatar(
                      name: messages[index],
                    ),
                  ),
                  title: GestureDetector(
                    onTap: () {
                      final tradie = findTradieByName(messages[index]);
                      if (tradie != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => TradieProfileScreen(tradie: tradie),
                          ),
                        );
                      }
                    },
                    child: Text(
                      messages[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: const Text('Thanks for the details!', maxLines: 1),
                  trailing: Text(
                    '${index + 1}h',
                    style: const TextStyle(color: Colors.grey),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChatScreen(tradieName: messages[index]),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: const AppBottomNavigationBar(currentIndex: 3),
    );
  }
}

// ============================================================
// CHAT
// ============================================================

class ChatScreen extends StatefulWidget {
  final String tradieName;

  const ChatScreen({super.key, required this.tradieName});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final controller = TextEditingController();

  final List<String> chatMessages = [
    'Hi, I can help with your electrical work.',
    'Great! Are you available on Monday?',
    "Yes, I'm available after 9am.",
  ];

  void sendMessage() {
    if (controller.text.trim().isEmpty) return;

    setState(() {
      chatMessages.add(controller.text.trim());
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Row(
          children: [
            TradieAvatar(
              name: widget.tradieName,
              radius: 18,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.tradieName, style: const TextStyle(fontSize: 16)),
                const Text(
                  'Online',
                  style: TextStyle(fontSize: 11, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(Icons.call_outlined), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: chatMessages.length,
              itemBuilder: (context, index) {
                final isMe = index % 2 == 1;

                return Align(
                  alignment: isMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.all(13),
                    constraints: const BoxConstraints(maxWidth: 280),
                    decoration: BoxDecoration(
                      color: isMe ? Colors.orange : Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Text(
                      chatMessages[index],
                      style: TextStyle(
                        color: isMe ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.attach_file),
                  onPressed: () {},
                ),

                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      hintText: 'Type a message...',
                    ),
                  ),
                ),

                IconButton(
                  icon: const Icon(Icons.send, color: Colors.orange),
                  onPressed: sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// JOBS
// ============================================================

enum JobStatus { active, completed, draft }

class JobData {
  final String title;
  final String location;
  final String posted;
  final String applicants;
  final JobStatus status;
  final String description;
  final String trade;
  final String budget;

  const JobData({
    required this.title,
    required this.location,
    required this.posted,
    required this.applicants,
    required this.status,
    required this.description,
    required this.trade,
    required this.budget,
  });
}

const List<JobData> jobs = [
  JobData(
    title: 'Electrical Renovation',
    location: 'Melbourne CBD',
    posted: 'Posted 2 days ago',
    applicants: '3 Applicants',
    status: JobStatus.active,
    trade: 'Electrician',
    budget: r'$1500 - $2500',
    description:
        'Need an electrician for full house rewiring and new lighting.',
  ),
  JobData(
    title: 'New Office Wiring',
    location: 'Richmond, VIC',
    posted: 'Posted 5 days ago',
    applicants: '5 Applicants',
    status: JobStatus.active,
    trade: 'Electrician',
    budget: r'$2000 - $3500',
    description:
        'Electrical wiring required for a new office fit-out in Richmond.',
  ),
  JobData(
    title: 'Bathroom Rewiring',
    location: 'Carlton, VIC',
    posted: 'Completed 1 week ago',
    applicants: '4 Applicants',
    status: JobStatus.completed,
    trade: 'Electrician',
    budget: r'$1200 - $1800',
    description:
        'Completed bathroom electrical upgrade and safety inspection.',
  ),
  JobData(
    title: 'Kitchen Renovation Wiring',
    location: 'Brunswick, VIC',
    posted: 'Draft',
    applicants: 'Not posted',
    status: JobStatus.draft,
    trade: 'Electrician',
    budget: r'$1800 - $2800',
    description:
        'Draft job for kitchen renovation wiring and new lighting points.',
  ),
];

class JobsScreen extends StatefulWidget {
  const JobsScreen({super.key});

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  JobStatus _selectedStatus = JobStatus.active;

  List<JobData> get _visibleJobs =>
      jobs.where((job) => job.status == _selectedStatus).toList();

  void _selectStatus(JobStatus status) {
    setState(() {
      _selectedStatus = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jobs',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Expanded(
                child: _jobFilterButton(
                  label: 'Active',
                  status: JobStatus.active,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _jobFilterButton(
                  label: 'Completed',
                  status: JobStatus.completed,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _jobFilterButton(
                  label: 'Drafts',
                  status: JobStatus.draft,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          if (_visibleJobs.isEmpty)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Center(
                child: Text(
                  'No jobs in this category.',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
            )
          else
            ..._visibleJobs.map(
              (job) => JobCard(job: job),
            ),

          const SizedBox(height: 15),

          SizedBox(
            height: 52,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.add),
              label: const Text('Post a Job'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const PostJobScreen()),
                );
              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: const AppBottomNavigationBar(currentIndex: 2),
    );
  }

  Widget _jobFilterButton({
    required String label,
    required JobStatus status,
  }) {
    final bool selected = _selectedStatus == status;

    if (selected) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
        onPressed: () => _selectStatus(status),
        child: Text(label),
      );
    }

    return OutlinedButton(
      onPressed: () => _selectStatus(status),
      child: Text(label),
    );
  }
}

class JobCard extends StatelessWidget {
  final JobData job;

  const JobCard({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              job.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            const SizedBox(height: 8),
            Text(job.location),
            Text(job.posted, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(job.applicants),
                const Spacer(),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => JobDetailsScreen(job: job),
                      ),
                    );
                  },
                  child: const Text('View Job'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class JobDetailsScreen extends StatelessWidget {
  final JobData job;

  const JobDetailsScreen({super.key, required this.job});

  List<ApplicantData> _applicantsForJob() {
    switch (job.title) {
      case 'Electrical Renovation':
        return const [
          ApplicantData(
            name: 'John Doe',
            trade: 'Electrician',
            rating: '4.8',
            experience: '5+ years experience',
            application:
                'I can complete the full house rewiring and install the new lighting. I am available to start next week.',
          ),
          ApplicantData(
            name: 'Sarah Smith',
            trade: 'Electrician',
            rating: '4.7',
            experience: '7 years experience',
            application:
                'I specialise in residential rewiring, lighting and safety inspections and would be happy to discuss the job.',
          ),
          ApplicantData(
            name: 'Michael Brown',
            trade: 'Electrician',
            rating: '4.6',
            experience: '6 years experience',
            application:
                'I have experience with complete electrical renovations and can provide a detailed quote before starting.',
          ),
        ];
      case 'New Office Wiring':
        return const [
          ApplicantData(
            name: 'David Lee',
            trade: 'Electrician',
            rating: '4.5',
            experience: '5 years experience',
            application:
                'I have experience with commercial office fit-outs and can complete the wiring to the required schedule.',
          ),
          ApplicantData(
            name: 'Sarah Smith',
            trade: 'Electrician',
            rating: '4.7',
            experience: '7 years experience',
            application:
                'I can assist with the office wiring, lighting and final electrical safety checks.',
          ),
          ApplicantData(
            name: 'Michael Brown',
            trade: 'Electrician',
            rating: '4.6',
            experience: '6 years experience',
            application:
                'I specialise in commercial electrical work and can start shortly.',
          ),
          ApplicantData(
            name: 'John Doe',
            trade: 'Electrician',
            rating: '4.8',
            experience: '5+ years experience',
            application:
                'I am interested in completing the office fit-out and can provide references and a quote.',
          ),
          ApplicantData(
            name: 'James Wilson',
            trade: 'Electrician',
            rating: '4.9',
            experience: '8 years experience',
            application:
                'I have extensive commercial wiring experience and would be available for the project.',
          ),
        ];
      case 'Bathroom Rewiring':
        return const [
          ApplicantData(
            name: 'David Lee',
            trade: 'Electrician',
            rating: '4.5',
            experience: '5 years experience',
            application:
                'I have completed similar bathroom electrical upgrades and can handle the required safety inspection.',
          ),
          ApplicantData(
            name: 'Michael Brown',
            trade: 'Electrician',
            rating: '4.6',
            experience: '6 years experience',
            application:
                'I have experience with bathroom renovations and electrical compliance work.',
          ),
          ApplicantData(
            name: 'John Doe',
            trade: 'Electrician',
            rating: '4.8',
            experience: '5+ years experience',
            application:
                'I can complete the bathroom upgrade and carry out the required testing and inspection.',
          ),
          ApplicantData(
            name: 'Sarah Smith',
            trade: 'Electrician',
            rating: '4.7',
            experience: '7 years experience',
            application:
                'I specialise in residential electrical upgrades and would be happy to complete this project.',
          ),
        ];
      default:
        return const [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final applicants = _applicantsForJob();

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text(
          'Job Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            job.title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Text(job.location),
          const SizedBox(height: 6),
          Text(job.posted, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 24),
          const Text(
            'Trade Required',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(job.trade),
          const SizedBox(height: 20),
          const Text(
            'Budget',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(job.budget),
          const SizedBox(height: 20),
          const Text(
            'Description',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(job.description),
          const SizedBox(height: 24),
          Text(
            job.applicants,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 44,
            child: OutlinedButton.icon(
              onPressed: job.applicants == 'Not posted'
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const PostJobScreen(),
                        ),
                      );
                    }
                  : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ApplicantsScreen(
                            job: job,
                            applicants: applicants,
                          ),
                        ),
                      );
                    },
              icon: Icon(
                job.applicants == 'Not posted'
                    ? Icons.edit_outlined
                    : Icons.people_outline,
              ),
              label: Text(
                job.applicants == 'Not posted'
                    ? 'Edit Draft'
                    : 'View Applicants',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ApplicantData {
  final String name;
  final String trade;
  final String rating;
  final String experience;
  final String application;

  const ApplicantData({
    required this.name,
    required this.trade,
    required this.rating,
    required this.experience,
    required this.application,
  });
}

class ApplicantsScreen extends StatelessWidget {
  final JobData job;
  final List<ApplicantData> applicants;

  const ApplicantsScreen({
    super.key,
    required this.job,
    required this.applicants,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text(
          'Applicants',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: applicants.isEmpty
          ? const Center(
              child: Text(
                'No applicants yet.',
                style: TextStyle(color: Colors.grey),
              ),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: applicants.length,
              separatorBuilder: (_, _) => const SizedBox(height: 10),
              itemBuilder: (context, index) {
                final applicant = applicants[index];
                
                return Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    leading: TradieAvatar(
                      name: applicant.name,
                    ),
                    title: Text(
                      applicant.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '${applicant.trade} • ${applicant.rating} ★\n${applicant.experience}',
                    ),
                    isThreeLine: true,
                    trailing: IconButton(
                      tooltip: 'Message',
                      icon: const Icon(
                        Icons.message_outlined,
                        color: Colors.orange,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ChatScreen(
                              tradieName: applicant.name,
                            ),
                          ),
                        );
                      },
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ApplicationDetailsScreen(
                            job: job,
                            applicant: applicant,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}

class ApplicationDetailsScreen extends StatelessWidget {
  final JobData job;
  final ApplicantData applicant;

  const ApplicationDetailsScreen({
    super.key,
    required this.job,
    required this.applicant,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text(
          'Application',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Row(
            children: [
              TradieAvatar(
                name: applicant.name,
                radius: 30,
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      applicant.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(applicant.trade),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            'Application for',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(job.title),
          const SizedBox(height: 20),
          const Text(
            'Experience',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(applicant.experience),
          const SizedBox(height: 20),
          const Text(
            'Rating',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text('${applicant.rating} ★'),
          const SizedBox(height: 20),
          const Text(
            'Application',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(applicant.application),
          const SizedBox(height: 28),
          SizedBox(
            height: 50,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.message_outlined),
              label: Text('Message ${applicant.name}'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChatScreen(tradieName: applicant.name),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// POST JOB
// ============================================================

class PostJobScreen extends StatelessWidget {
  const PostJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text(
          'Post a Job',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text('Job Title'),
          const SizedBox(height: 8),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Electrical Renovation',
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 18),

          const Text('Trade Required'),
          const SizedBox(height: 8),

          DropdownButtonFormField<String>(
            initialValue: 'Electrician',
            items: const [
              DropdownMenuItem(
                value: 'Electrician',
                child: Text('Electrician'),
              ),
              DropdownMenuItem(value: 'Plumber', child: Text('Plumber')),
              DropdownMenuItem(value: 'Carpenter', child: Text('Carpenter')),
            ],
            onChanged: (_) {},
          ),

          const SizedBox(height: 18),

          const Text('Location'),
          const SizedBox(height: 8),

          const TextField(
            decoration: InputDecoration(
              hintText: 'Melbourne CBD',
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 18),

          const Text('Description'),
          const SizedBox(height: 8),

          const TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText:
                  'Need an electrician for full house rewiring and new lighting.',
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 18),

          const Text('Preferred Date'),
          const SizedBox(height: 8),

          const TextField(
            decoration: InputDecoration(
              hintText: '20 May 2024',
              suffixIcon: Icon(Icons.calendar_today),
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 18),

          const Text('Budget'),
          const SizedBox(height: 8),

          const TextField(
            decoration: InputDecoration(
              hintText: '\$1500 - \$2500',
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 25),

          SizedBox(
            height: 52,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Job posted successfully!')),
                );
              },
              child: const Text('Post Job'),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// SAVED
// ============================================================

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final saved = tradies
        .where((tradie) => savedTradies.contains(tradie.name))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Saved Tradies',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: saved.isEmpty
          ? const Center(
              child: Text(
                'No saved tradies yet.',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: saved.length,
              itemBuilder: (context, index) {
                final tradie = saved[index];

                return Card(
                  child: ListTile(
                    leading: TradieAvatar(
                      name: tradie.name,
                    ),
                    title: Text(tradie.name),
                    subtitle: Text('${tradie.trade} • ${tradie.distance}'),
                    trailing: const Icon(Icons.favorite, color: Colors.orange),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => TradieProfileScreen(tradie: tradie),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}

// ============================================================
// PROFILE
// ============================================================

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(
        onHome: () {
          Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const HomeScreen()),
          );
        },
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: const Text(
          'My Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),

      body: ListView(
        children: [
          const SizedBox(height: 20),

          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.orange,
            child: Icon(Icons.person, size: 65, color: Colors.white),
          ),

          const SizedBox(height: 12),

          const Center(
            child: Text(
              'Collins Kipkoech',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          const Center(child: Text('Builder')),

          const Center(
            child: Text('Melbourne, VIC', style: TextStyle(color: Colors.grey)),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ProfileStat(number: '12', label: 'Jobs Posted'),
              ProfileStat(number: '8', label: 'Hires'),
              ProfileStat(number: '5', label: 'Saved'),
            ],
          ),

          const SizedBox(height: 20),

          ProfileMenuItem(
            icon: Icons.work_outline,
            title: 'My Jobs',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const JobsScreen()),
              );
            },
          ),

          ProfileMenuItem(
            icon: Icons.favorite_border,
            title: 'Saved Tradies',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SavedScreen()),
              );
            },
          ),

          ProfileMenuItem(
            icon: Icons.notifications_none,
            title: 'Notifications',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const NotificationsScreen()),
              );
            },
          ),

          ProfileMenuItem(
            icon: Icons.settings_outlined,
            title: 'Settings',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SettingsScreen()),
              );
            },
          ),

          ProfileMenuItem(
            icon: Icons.help_outline,
            title: 'Help & Support',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const HelpSupportScreen()),
              );
            },
          ),
        ],
      ),

      bottomNavigationBar: const AppBottomNavigationBar(currentIndex: 4),
    );
  }
}

class ProfileStat extends StatelessWidget {
  final String number;
  final String label;

  const ProfileStat({super.key, required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}

// ============================================================
// NOTIFICATIONS
// ============================================================

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Notifications',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.favorite, color: Colors.orange),
              title: Text('New saved tradie match'),
              subtitle: Text(
                'A tradie matching your preferences is available.',
              ),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: ListTile(
              leading: Icon(Icons.work_outline, color: Colors.orange),
              title: Text('Job update'),
              subtitle: Text('Your recent job activity has been updated.'),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// HELP & SUPPORT
// ============================================================

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Help & Support',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.help_outline, color: Colors.orange),
              title: const Text('Frequently Asked Questions'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          const SizedBox(height: 10),
          Card(
            child: ListTile(
              leading: const Icon(
                Icons.chat_bubble_outline,
                color: Colors.orange,
              ),
              title: const Text('Contact Support'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          const SizedBox(height: 10),
          Card(
            child: ListTile(
              leading: const Icon(
                Icons.report_problem_outlined,
                color: Colors.orange,
              ),
              title: const Text('Report a Problem'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// SETTINGS
// ============================================================

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 28),
        children: [
          _SettingsSectionLabel('ACCOUNT'),
          _SettingsCard(
            children: [
              _SettingsItem(
                icon: Icons.person_outline,
                title: 'Edit Profile',
                subtitle: 'Name, photo, bio',
                onTap: () {},
              ),
              _SettingsDivider(),
              _SettingsItem(
                icon: Icons.email_outlined,
                title: 'Change Email',
                subtitle: 'collinsk@email.com',
                onTap: () {},
              ),
              _SettingsDivider(),
              _SettingsItem(
                icon: Icons.lock_outline,
                title: 'Change Password',
                subtitle: 'Last changed 3 months ago',
                onTap: () {},
              ),
            ],
          ),

          const SizedBox(height: 18),
          _SettingsSectionLabel('PREFERENCES'),
          _SettingsCard(
            children: [
              _SettingsItem(
                icon: Icons.notifications_none,
                title: 'Notifications',
                subtitle: 'Push, email & SMS alerts',
                onTap: () {},
              ),
              _SettingsDivider(),
              _SettingsItem(
                icon: Icons.location_on_outlined,
                title: 'Location Services',
                subtitle: 'Used for nearby tradies',
                onTap: () {},
              ),
              _SettingsDivider(),
              _SettingsItem(
                icon: Icons.language,
                title: 'Language',
                subtitle: 'English (AU)',
                onTap: () {},
              ),
            ],
          ),

          const SizedBox(height: 18),
          _SettingsSectionLabel('PRIVACY & SECURITY'),
          _SettingsCard(
            children: [
              _SettingsItem(
                icon: Icons.privacy_tip_outlined,
                title: 'Privacy Settings',
                subtitle: 'Profile visibility',
                onTap: () {},
              ),
              _SettingsDivider(),
              _SettingsItem(
                icon: Icons.block_outlined,
                title: 'Blocked Users',
                subtitle: '0 blocked',
                onTap: () {},
              ),
              _SettingsDivider(),
              _SettingsItem(
                icon: Icons.security_outlined,
                title: 'Two-Factor Authentication',
                subtitle: 'Not enabled',
                onTap: () {},
              ),
            ],
          ),

          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.red,
                side: const BorderSide(color: Color(0xFFFFB4B4)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                  (route) => false,
                );
              },
              child: const Text(
                'Log Out',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SettingsSectionLabel extends StatelessWidget {
  final String text;

  const _SettingsSectionLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 0, 4, 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Color(0xFF98A3B3),
          letterSpacing: 0.4,
        ),
      ),
    );
  }
}

class _SettingsCard extends StatelessWidget {
  final List<Widget> children;

  const _SettingsCard({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Color(0x12000000),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(children: children),
    );
  }
}

class _SettingsDivider extends StatelessWidget {
  const _SettingsDivider();

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      indent: 16,
      endIndent: 16,
      color: Color(0xFFEFF1F4),
    );
  }
}

class _SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _SettingsItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Icon(icon, size: 20, color: const Color(0xFF5D6877)),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF263142),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF98A3B3),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, size: 20, color: Color(0xFFC9D0D9)),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// DRAWER
// ============================================================

class AppDrawer extends StatelessWidget {
  final VoidCallback onHome;

  const AppDrawer({super.key, required this.onHome});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 180,
            color: Colors.orange,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            child: const Text(
              'TradieConnect',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: onHome,
          ),

          ListTile(
            leading: const Icon(Icons.search),
            title: const Text('Search'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SearchResultsScreen()),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text('Saved Tradies'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SavedScreen()),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.work_outline),
            title: const Text('Jobs'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const JobsScreen()),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.message_outlined),
            title: const Text('Messages'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MessagesScreen()),
              );
            },
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text('My Profile'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ProfileScreen()),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
