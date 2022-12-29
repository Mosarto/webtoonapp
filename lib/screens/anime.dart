import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webtoonapp/data/data.dart';
import 'package:webtoonapp/models/models.dart';

class Anime extends StatefulWidget {
  final MostPopularModel anime;

  const Anime({Key? key, required this.anime}) : super(key: key);

  @override
  State<Anime> createState() => _AnimeState();
}

class _AnimeState extends State<Anime> with TickerProviderStateMixin {
  late AnimationController _controller;
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  );

  late final AnimationController _controllerFade = AnimationController(
    duration: const Duration(milliseconds: 765),
    vsync: this,
  );
  late final Animation<double> _animationFade = CurvedAnimation(
    parent: _controllerFade,
    curve: Curves.easeInOut,
  );
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _controller.animateTo(0.2);
    _controllerFade.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controllerFade.dispose();
    super.dispose();
  }

  bool showAll = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 24,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: theme.accentColor,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/perfil.svg',
                            height: 24,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: theme.iconColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'SaulDesign',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: theme.accentColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          'assets/icons/search.svg',
                          height: 24,
                        ),
                        const SizedBox(width: 16),
                        SvgPicture.asset(
                          'assets/icons/notifications.svg',
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                  Hero(
                    tag: widget.anime.title,
                    child: Container(
                      height: 327,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: widget.anime.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: RadialGradient(
                            radius: 0.7,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black54,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 24,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: SvgPicture.asset(
                            'assets/icons/arrow_left.svg',
                            color: theme.textColor,
                            height: 24,
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          'assets/icons/favorite_2.svg',
                          color: theme.textColor,
                          height: 24,
                        ),
                        const SizedBox(width: 16),
                        SvgPicture.asset(
                          'assets/icons/share.svg',
                          color: theme.textColor,
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                  FadeTransition(
                    opacity: _animationFade,
                    child: AnimatedAlign(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                      alignment: Alignment.bottomCenter,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        width: MediaQuery.of(context).size.width - 32,
                        margin: const EdgeInsets.only(top: 255, bottom: 24),
                        padding: EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 16,
                          bottom: showAll == false ? 0 : 16,
                        ),
                        decoration: BoxDecoration(
                          color: theme.backgroundColor,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  widget.anime.title,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Oswald',
                                    color: theme.textColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Spacer(),
                                SvgPicture.asset(
                                  'assets/icons/star.svg',
                                  height: 18,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '${widget.anime.score}',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: theme.textColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                SvgPicture.asset(
                                  'assets/icons/watch.svg',
                                  height: 18,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  widget.anime.view,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: theme.textColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Syspnosis',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Oswald',
                                color: theme.syspnosisColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizeTransition(
                              sizeFactor: _animation,
                              axis: Axis.vertical,
                              axisAlignment: -1,
                              child: Text(
                                widget.anime.sinpses,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: theme.syspnosisColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    bottom: 0,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            showAll = !showAll;
                            if (showAll) {
                              _controller.forward();
                            } else {
                              _controller.animateTo(0.2);
                            }
                          });
                        },
                        child: Container(
                          height: 48,
                          width: 48,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: theme.accentColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: const Offset(0, 4),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: AnimatedRotation(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                            turns: showAll == false ? 0 : 0.5,
                            child: SvgPicture.asset(
                              'assets/icons/arrow_down.svg',
                              color: theme.textColor,
                              height: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Chapters",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    color: theme.textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              for (final chapter in widget.anime.chapters) ...[
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  padding: const EdgeInsets.all(8),
                  height: 96,
                  decoration: BoxDecoration(
                    color: theme.backgroundColor,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      width: 1,
                      color: theme.accentColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 84,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image(
                            image: chapter.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 13),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Chapter ${chapter.number}',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: theme.textColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            chapter.title,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: theme.accentColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
              const SizedBox(height: 94),
            ],
          ),
        ),
      ),
      floatingActionButton: Hero(
        tag: 'bottom_bar',
        child: Container(
          height: 64,
          margin: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 16,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: theme.accentColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 4,
                offset: const Offset(0, 4), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  'assets/icons/home.svg',
                ),
              ),
              SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  'assets/icons/favorite.svg',
                ),
              ),
              SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  'assets/icons/explorer.svg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
