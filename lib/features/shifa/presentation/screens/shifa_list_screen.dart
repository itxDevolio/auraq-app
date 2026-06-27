import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/services/settings_controller.dart';
import '../controller/shifa_notifier.dart';
import '../../domain/entities/shifa_entity.dart';
import 'shifa_detail_screen.dart';

class ShifaListScreen extends ConsumerWidget {
  const ShifaListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(shifaProvider);
    final settings = ref.watch(settingsControllerProvider);
    final isUrdu = settings.language == 'ur';
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          isUrdu ? 'شفاء اور علاج' : 'Shifa & Healing',
          style: isUrdu ? GoogleFonts.notoNastaliqUrdu(fontWeight: FontWeight.bold) : const TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: TextField(
              textAlign: isUrdu ? TextAlign.right : TextAlign.left,
              decoration: InputDecoration(
                hintText: isUrdu ? 'شفاء تلاش کریں...' : 'Search Shifa...',
                hintStyle: isUrdu ? GoogleFonts.notoNastaliqUrdu(fontSize: 14) : TextStyle(color: Colors.grey.shade500, fontSize: 14),
                prefixIcon: isUrdu ? null : Icon(Icons.search, color: AppColors.primaryTeal.withOpacity(0.7)),
                suffixIcon: isUrdu ? Icon(Icons.search, color: AppColors.primaryTeal.withOpacity(0.7)) : null,
                filled: true,
                fillColor: isDark ? Colors.black26 : Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: isDark ? Colors.white10 : Colors.black.withOpacity(0.05)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: isDark ? Colors.white10 : Colors.black.withOpacity(0.05)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: AppColors.primaryTeal, width: 1),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              ),
              onChanged: (value) {
                ref.read(shifaProvider.notifier).searchDuas(value);
              },
            ),
          ),
        ),
      ),
      body: Directionality(
        textDirection: isUrdu ? TextDirection.rtl : TextDirection.ltr,
        child: switch (state) {
          ShifaInitial() || ShifaLoading() => const Center(child: CircularProgressIndicator(color: AppColors.primaryTeal)),
          ShifaLoaded loaded => _ShifaListView(
              duas: loaded.searchQuery.isEmpty ? loaded.allDuas : loaded.searchedDuas, 
              isUrdu: isUrdu
            ),
        },
      ),
    );
  }
}

class _ShifaListView extends StatelessWidget {
  final List<ShifaEntity> duas;
  final bool isUrdu;
  const _ShifaListView({required this.duas, required this.isUrdu});

  @override
  Widget build(BuildContext context) {
    if (duas.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search_off, size: 64, color: Colors.grey.withOpacity(0.5)),
            const SizedBox(height: 16),
            Text(
              isUrdu ? 'کوئی نتیجہ نہیں ملا' : 'No results found.',
              style: isUrdu ? GoogleFonts.notoNastaliqUrdu(color: Colors.grey) : const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      physics: const BouncingScrollPhysics(),
      itemCount: duas.length,
      itemBuilder: (context, index) {
        final dua = duas[index];
        return ShifaTile(dua: dua, isUrdu: isUrdu);
      },
    );
  }
}

class ShifaTile extends StatelessWidget {
  final ShifaEntity dua;
  final bool isUrdu;
  const ShifaTile({super.key, required this.dua, required this.isUrdu});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: isDark ? Colors.black45 : Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isDark ? Colors.white.withOpacity(0.08) : Colors.black.withOpacity(0.05),
        ),
        boxShadow: [
          if(!isDark) BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        title: Text(
          isUrdu ? dua.titleUr : dua.titleEn,
          style: isUrdu 
            ? GoogleFonts.notoNastaliqUrdu(fontWeight: FontWeight.w600, fontSize: 16, height: 1.8)
            : const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        trailing: Icon(
          isUrdu ? Icons.chevron_left : Icons.chevron_right,
          size: 18,
          color: AppColors.primaryTeal.withOpacity(0.5),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShifaDetailScreen(dua: dua),
            ),
          );
        },
      ),
    );
  }
}
