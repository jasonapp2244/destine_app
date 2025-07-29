import 'package:destine_app/constants/colors.dart';
import 'package:flutter/material.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  State<LanguageSelectionScreen> createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  final List<Map<String, dynamic>> _allLanguages = [
    {'name': 'English', 'code': 'en', 'flag': '🇬🇧'},
    {'name': 'Spanish', 'code': 'es', 'flag': '🇪🇸'},
    {'name': 'French', 'code': 'fr', 'flag': '🇫🇷'},
    {'name': 'German', 'code': 'de', 'flag': '🇩🇪'},
    {'name': 'Italian', 'code': 'it', 'flag': '🇮🇹'},
    {'name': 'Portuguese', 'code': 'pt', 'flag': '🇵🇹'},
    {'name': 'Russian', 'code': 'ru', 'flag': '🇷🇺'},
    {'name': 'Japanese', 'code': 'ja', 'flag': '🇯🇵'},
    {'name': 'Chinese', 'code': 'zh', 'flag': '🇨🇳'},
    {'name': 'Arabic', 'code': 'ar', 'flag': '🇸🇦'},
    {'name': 'Hindi', 'code': 'hi', 'flag': '🇮🇳'},
    {'name': 'Korean', 'code': 'ko', 'flag': '🇰🇷'},
    {'name': 'Turkish', 'code': 'tr', 'flag': '🇹🇷'},
    {'name': 'Dutch', 'code': 'nl', 'flag': '🇳🇱'},
    {'name': 'Swedish', 'code': 'sv', 'flag': '🇸🇪'},
    {'name': 'Afrikaans', 'code': 'af', 'flag': '🇿🇦'},
    {'name': 'Albanian', 'code': 'sq', 'flag': '🇦🇱'},
    {'name': 'Amharic', 'code': 'am', 'flag': '🇪🇹'},
    {'name': 'Armenian', 'code': 'hy', 'flag': '🇦🇲'},
    {'name': 'Azerbaijani', 'code': 'az', 'flag': '🇦🇿'},
    {'name': 'Belarusian', 'code': 'be', 'flag': '🇧🇾'},
    {'name': 'Bengali', 'code': 'bn', 'flag': '🇧🇩'},
    {'name': 'Bosnian', 'code': 'bs', 'flag': '🇧🇦'},
    {'name': 'Bulgarian', 'code': 'bg', 'flag': '🇧🇬'},
    {'name': 'Burmese', 'code': 'my', 'flag': '🇲🇲'},
    {'name': 'Croatian', 'code': 'hr', 'flag': '🇭🇷'},
    {'name': 'Czech', 'code': 'cs', 'flag': '🇨🇿'},
    {'name': 'Danish', 'code': 'da', 'flag': '🇩🇰'},
    {'name': 'Estonian', 'code': 'et', 'flag': '🇪🇪'},
    {'name': 'Filipino', 'code': 'tl', 'flag': '🇵🇭'},
    {'name': 'Finnish', 'code': 'fi', 'flag': '🇫🇮'},
    {'name': 'Georgian', 'code': 'ka', 'flag': '🇬🇪'},
    {'name': 'Greek', 'code': 'el', 'flag': '🇬🇷'},
    {'name': 'Hebrew', 'code': 'he', 'flag': '🇮🇱'},
    {'name': 'Hungarian', 'code': 'hu', 'flag': '🇭🇺'},
    {'name': 'Icelandic', 'code': 'is', 'flag': '🇮🇸'},
    {'name': 'Indonesian', 'code': 'id', 'flag': '🇮🇩'},
    {'name': 'Irish', 'code': 'ga', 'flag': '🇮🇪'},
    {'name': 'Kannada', 'code': 'kn', 'flag': '🇮🇳'},
    {'name': 'Kazakh', 'code': 'kk', 'flag': '🇰🇿'},
    {'name': 'Khmer', 'code': 'km', 'flag': '🇰🇭'},
    {'name': 'Kyrgyz', 'code': 'ky', 'flag': '🇰🇬'},
    {'name': 'Lao', 'code': 'lo', 'flag': '🇱🇦'},
    {'name': 'Latvian', 'code': 'lv', 'flag': '🇱🇻'},
    {'name': 'Lithuanian', 'code': 'lt', 'flag': '🇱🇹'},
    {'name': 'Luxembourgish', 'code': 'lb', 'flag': '🇱🇺'},
    {'name': 'Macedonian', 'code': 'mk', 'flag': '🇲🇰'},
    {'name': 'Malay', 'code': 'ms', 'flag': '🇲🇾'},
    {'name': 'Malayalam', 'code': 'ml', 'flag': '🇮🇳'},
    {'name': 'Maltese', 'code': 'mt', 'flag': '🇲🇹'},
    {'name': 'Mongolian', 'code': 'mn', 'flag': '🇲🇳'},
    {'name': 'Nepali', 'code': 'ne', 'flag': '🇳🇵'},
    {'name': 'Norwegian', 'code': 'no', 'flag': '🇳🇴'},
    {'name': 'Pashto', 'code': 'ps', 'flag': '🇦🇫'},
    {'name': 'Persian', 'code': 'fa', 'flag': '🇮🇷'},
    {'name': 'Polish', 'code': 'pl', 'flag': '🇵🇱'},
    {'name': 'Punjabi', 'code': 'pa', 'flag': '🇮🇳'},
    {'name': 'Romanian', 'code': 'ro', 'flag': '🇷🇴'},
    {'name': 'Serbian', 'code': 'sr', 'flag': '🇷🇸'},
    {'name': 'Sinhala', 'code': 'si', 'flag': '🇱🇰'},
    {'name': 'Slovak', 'code': 'sk', 'flag': '🇸🇰'},
    {'name': 'Slovenian', 'code': 'sl', 'flag': '🇸🇮'},
    {
      'name': 'Swahili',
      'code': 'sw',
      'flag': '🇰🇪',
    }, // Swahili is spoken in multiple East African countries
    {'name': 'Tajik', 'code': 'tg', 'flag': '🇹🇯'},
    {'name': 'Tamil', 'code': 'ta', 'flag': '🇮🇳'},
    {'name': 'Telugu', 'code': 'te', 'flag': '🇮🇳'},
    {'name': 'Thai', 'code': 'th', 'flag': '🇹🇭'},
    {'name': 'Ukrainian', 'code': 'uk', 'flag': '🇺🇦'},
    {'name': 'Urdu', 'code': 'ur', 'flag': '🇵🇰'},
    {'name': 'Uzbek', 'code': 'uz', 'flag': '🇺🇿'},
    {'name': 'Vietnamese', 'code': 'vi', 'flag': '🇻🇳'},
    {'name': 'Welsh', 'code': 'cy', 'flag': '🏴󠁧󠁢󠁷󠁬󠁳󠁿'}, // Wales flag
    {'name': 'Zulu', 'code': 'zu', 'flag': '🇿🇦'},
  ];

  List<Map<String, dynamic>> _filteredLanguages = [];
  String _selectedLanguage = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    _filteredLanguages = _allLanguages;
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _searchLanguages(String query) {
    setState(() {
      _filteredLanguages = _allLanguages
          .where(
            (lang) => lang['name'].toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
    });
  }

  void _selectLanguage(String languageCode) {
    setState(() {
      _selectedLanguage = languageCode;
    });
    // You can add navigation or other actions here
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Selected: ${_allLanguages.firstWhere((lang) => lang['code'] == languageCode)['name']}',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: Text(
          " Change Languages",
          style: TextStyle(
            color: textColor,

            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search languages...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: _searchLanguages,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredLanguages.length,
              itemBuilder: (context, index) {
                final lang = _filteredLanguages[index];
                return ListTile(
                  leading: Text(
                    lang['flag'],
                    style: const TextStyle(fontSize: 24),
                  ),
                  title: Text(lang['name']),
                  trailing: _selectedLanguage == lang['code']
                      ? const Icon(Icons.check, color: Colors.green)
                      : null,
                  onTap: () => _selectLanguage(lang['code']),
                );
              },
            ),
          ),
          if (_selectedLanguage.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Selected: ${_allLanguages.firstWhere((lang) => lang['code'] == _selectedLanguage)['name']}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
