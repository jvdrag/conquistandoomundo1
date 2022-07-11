import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

///
class VideosAulas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conquistando o mundo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Color.fromARGB(255, 11, 20, 35),
      ),
      debugShowCheckedModeBanner: false,
      home: VideosAulasDemo(),
    );
  }
}

class VideosAulas2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conquistando o mundo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Color.fromARGB(255, 11, 20, 35),
      ),
      debugShowCheckedModeBanner: false,
      home: VideosAulasDemo2(),
    );
  }
}

class VideosAulas3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conquistando o mundo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Color.fromARGB(255, 11, 20, 35),
      ),
      debugShowCheckedModeBanner: false,
      home: VideosAulasDemo3(),
    );
  }
}

class VideosAulas4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conquistando o mundo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Color.fromARGB(255, 11, 20, 35),
      ),
      debugShowCheckedModeBanner: false,
      home: VideosAulasDemo4(),
    );
  }
}

class VideosAulas5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conquistando o mundo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Color.fromARGB(255, 11, 20, 35),
      ),
      debugShowCheckedModeBanner: false,
      home: VideosAulasDemo5(),
    );
  }
}

class VideosAulas6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conquistando o mundo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Color.fromARGB(255, 11, 20, 35),
      ),
      debugShowCheckedModeBanner: false,
      home: VideosAulasDemo6(),
    );
  }
}

class VideosAulas7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conquistando o mundo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Color.fromARGB(255, 11, 20, 35),
      ),
      debugShowCheckedModeBanner: false,
      home: VideosAulasDemo7(),
    );
  }
}

///
class VideosAulasDemo extends StatefulWidget {
  @override
  _YoutubeAppDemoState createState() => _YoutubeAppDemoState();
}

class _YoutubeAppDemoState extends State<VideosAulasDemo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'w9jYgSDhP24',
      params: const YoutubePlayerParams(
        playlist: ['w9jYgSDhP24', '-ciEovARap8'],
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
        privacyEnhanced: true,
        useHybridComposition: true,
      ),
    );
    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    _controller.onExitFullscreen = () {
      log('Exited Fullscreen');
    };
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    return YoutubePlayerControllerProvider(
      // Passing controller to widgets below.
      controller: _controller,

      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (kIsWeb && constraints.maxWidth > 800) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: player),
                  Column(
                    children: [
                      SizedBox(
                        width: 0,
                        child: SingleChildScrollView(),
                      ),
                    ],
                  ),
                ],
              );
            }
            return ListView(
              children: [
                Stack(
                  children: [
                    player,
                    Positioned.fill(
                      child: YoutubeValueBuilder(
                        controller: _controller,
                        builder: (context, value) {
                          return AnimatedCrossFade(
                            firstChild: const SizedBox.shrink(),
                            secondChild: Material(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      YoutubePlayerController.getThumbnail(
                                        videoId:
                                            _controller.params.playlist.first,
                                        quality: ThumbnailQuality.high,
                                      ),
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                child: const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            ),
                            crossFadeState: value.isReady
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                            duration: const Duration(milliseconds: 300),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}

///
<<<<<<< HEAD
=======

>>>>>>> dcb9dbfcb03ac572c47876588e51f17b818c33d0
class VideosAulasDemo2 extends StatefulWidget {
  @override
  _YoutubeAppDemoState2 createState() => _YoutubeAppDemoState2();
}

class _YoutubeAppDemoState2 extends State<VideosAulasDemo2> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: '6V626OoAJMo',
      params: const YoutubePlayerParams(
        playlist: [
          '6V626OoAJMo',
          'DiZPWQ9TY1s',
          'cw2xSxntjKU',
          'pWybGax6aps',
          'crAoKReMPlg',
          'iMPtvKHYjxs',
          'qrAEx6ivLCE',
          'QUYuMlg4xv4',
          'KUo3urihnUA',
          'JVrxaESKn34',
          'nFIy3AC4vVo',
          'QsTa3CdZOPk',
          'pd3tFDGsJD0',
          'jz4Mt9NoiBg',
          'KJwUt5qFswI',
          'ffuFfkaKhdk'
        ],
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
        privacyEnhanced: true,
        useHybridComposition: true,
      ),
    );
    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    _controller.onExitFullscreen = () {
      log('Exited Fullscreen');
    };
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    return YoutubePlayerControllerProvider(
      // Passing controller to widgets below.
      controller: _controller,

      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (kIsWeb && constraints.maxWidth > 800) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: player),
                  Column(
                    children: [
                      SizedBox(
                        width: 00,
                        height: 550,
                        child: SingleChildScrollView(),
                      ),
                    ],
                  ),
                ],
              );
            }
            return ListView(
              children: [
                Stack(
                  children: [
                    player,
                    Positioned.fill(
                      child: YoutubeValueBuilder(
                        controller: _controller,
                        builder: (context, value) {
                          return AnimatedCrossFade(
                            firstChild: const SizedBox.shrink(),
                            secondChild: Material(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      YoutubePlayerController.getThumbnail(
                                        videoId:
                                            _controller.params.playlist.first,
                                        quality: ThumbnailQuality.high,
                                      ),
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                child: const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            ),
                            crossFadeState: value.isReady
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                            duration: const Duration(milliseconds: 300),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}
<<<<<<< HEAD

///
class VideosAulasDemo3 extends StatefulWidget {
  @override
  _YoutubeAppDemoState3 createState() => _YoutubeAppDemoState3();
}

class _YoutubeAppDemoState3 extends State<VideosAulasDemo3> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'HVw04UB-Esk',
      params: const YoutubePlayerParams(
        playlist: [
          'HVw04UB-Esk',
          'otcfNeYTmKs',
          'dehX_otpep4',
          'n9IwVkySelw',
          'DSd6pZjM-lQ',
          'C0lXiabodcE',
          '_J0l_RDEtY8',
          'kMut2dqfRFY',
          '8qwWuzEFaVI',
          'xOUMi9yNeUI',
          'e7YB9_MuHQE',
          'sVBYm3yXU0Q',
          'UeWUYPJ-6JM',
          'PxnsnDtlbd0',
          'PAtjvDDaZv0',
          '1bLRlP6ZcBw',
          'aXd7cDVc0v8',
          't882BOyPgbA',
          '-fhHt8NjeII',
          'icIuynGbJAo',
          'VYbarlk-8OM',
        ],
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
        privacyEnhanced: true,
        useHybridComposition: true,
      ),
    );
    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    _controller.onExitFullscreen = () {
      log('Exited Fullscreen');
    };
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    return YoutubePlayerControllerProvider(
      // Passing controller to widgets below.
      controller: _controller,

      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (kIsWeb && constraints.maxWidth > 800) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: player),
                  Column(
                    children: [
                      SizedBox(
                        width: 00,
                        height: 550,
                        child: SingleChildScrollView(),
                      ),
                    ],
                  ),
                ],
              );
            }
            return ListView(
              children: [
                Stack(
                  children: [
                    player,
                    Positioned.fill(
                      child: YoutubeValueBuilder(
                        controller: _controller,
                        builder: (context, value) {
                          return AnimatedCrossFade(
                            firstChild: const SizedBox.shrink(),
                            secondChild: Material(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      YoutubePlayerController.getThumbnail(
                                        videoId:
                                            _controller.params.playlist.first,
                                        quality: ThumbnailQuality.high,
                                      ),
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                child: const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            ),
                            crossFadeState: value.isReady
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                            duration: const Duration(milliseconds: 300),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}

///
class VideosAulasDemo4 extends StatefulWidget {
  @override
  _YoutubeAppDemoState4 createState() => _YoutubeAppDemoState4();
}

class _YoutubeAppDemoState4 extends State<VideosAulasDemo4> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'TvGywIxGOpU',
      params: const YoutubePlayerParams(
        playlist: [
          'TvGywIxGOpU',
          'vzu5B0A05-E',
          'YPCwt0Dw0dg',
          'HBs7K-DIDlg',
          '93337_hYc48',
          'AURVgclY_U4',
          'KnaGtZDa7ws',
          'YHZcpFXsmlc',
          'SuPaLOWlS_k',
          '3AATSmZjHjI',
          'teugzqMPS3s',
          'O10qLr2Anno',
          'ybxAObim3_M',
          '9tJI4bX2bIQ',
          '2mEwgOQUxxM',
          'YfLk1PuHvdk',
          'Yw1G0LGJ29M',
        ],
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
        privacyEnhanced: true,
        useHybridComposition: true,
      ),
    );
    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    _controller.onExitFullscreen = () {
      log('Exited Fullscreen');
    };
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    return YoutubePlayerControllerProvider(
      // Passing controller to widgets below.
      controller: _controller,

      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (kIsWeb && constraints.maxWidth > 800) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: player),
                  Column(
                    children: [
                      SizedBox(
                        width: 00,
                        height: 550,
                        child: SingleChildScrollView(),
                      ),
                    ],
                  ),
                ],
              );
            }
            return ListView(
              children: [
                Stack(
                  children: [
                    player,
                    Positioned.fill(
                      child: YoutubeValueBuilder(
                        controller: _controller,
                        builder: (context, value) {
                          return AnimatedCrossFade(
                            firstChild: const SizedBox.shrink(),
                            secondChild: Material(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      YoutubePlayerController.getThumbnail(
                                        videoId:
                                            _controller.params.playlist.first,
                                        quality: ThumbnailQuality.high,
                                      ),
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                child: const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            ),
                            crossFadeState: value.isReady
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                            duration: const Duration(milliseconds: 300),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}

///
class VideosAulasDemo5 extends StatefulWidget {
  @override
  _YoutubeAppDemoState5 createState() => _YoutubeAppDemoState5();
}

class _YoutubeAppDemoState5 extends State<VideosAulasDemo5> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'EXsSHwws7Xo',
      params: const YoutubePlayerParams(
        playlist: [
          'EXsSHwws7Xo',
          'K6p8VK3XqjE',
          'mvF895bCp7g',
          'bd1Wcej_b1M',
          'fPM4mjlpEA4',
          'NVMUKpnWWY4',
          '5CKzIqxb4Wk',
          'ePXLREiwOLs',
          'A0eUKxhUnDc',
          'eKdYoKPOS-Q',
          'h9s3-SAeGRw',
          'V4wfrNDTs5w',
          '6O2ZXvG802Y',
          'kTVFXcqH4us',
          'ZLGAcaJ29ks',
          'E-c-8wcxOFs',
          '-hnt551Imas',
          'b633VjoqRSE',
          '1WQQ7NhNtIY',
        ],
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
        privacyEnhanced: true,
        useHybridComposition: true,
      ),
    );
    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    _controller.onExitFullscreen = () {
      log('Exited Fullscreen');
    };
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    return YoutubePlayerControllerProvider(
      // Passing controller to widgets below.
      controller: _controller,

      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (kIsWeb && constraints.maxWidth > 800) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: player),
                  Column(
                    children: [
                      SizedBox(
                        width: 00,
                        height: 550,
                        child: SingleChildScrollView(),
                      ),
                    ],
                  ),
                ],
              );
            }
            return ListView(
              children: [
                Stack(
                  children: [
                    player,
                    Positioned.fill(
                      child: YoutubeValueBuilder(
                        controller: _controller,
                        builder: (context, value) {
                          return AnimatedCrossFade(
                            firstChild: const SizedBox.shrink(),
                            secondChild: Material(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      YoutubePlayerController.getThumbnail(
                                        videoId:
                                            _controller.params.playlist.first,
                                        quality: ThumbnailQuality.high,
                                      ),
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                child: const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            ),
                            crossFadeState: value.isReady
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                            duration: const Duration(milliseconds: 300),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}

///
class VideosAulasDemo6 extends StatefulWidget {
  @override
  _YoutubeAppDemoState6 createState() => _YoutubeAppDemoState6();
}

class _YoutubeAppDemoState6 extends State<VideosAulasDemo6> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'KavRQ7U_yfM',
      params: const YoutubePlayerParams(
        playlist: [
          'KavRQ7U_yfM',
          'gF4n7XkbVWU',
          'Sw_tCCB203k',
          'j5BeeX9_m0o',
          '-4ggXxt_dPM',
          'kid3RXyRHXY',
          'bAXSvwpZ6lg',
          '2txpcHIpFAg',
          '98kZYWdOLBQ',
          'EGy4WTXsGaY',
          'rJDxIJnjfFw',
          '-dM84P7ICm4',
          'pY95qf2dBAA',
          'WdGIuE_FSps',
          'BNnPzvnlYqU',
          'hj6D0nTddsc',
        ],
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
        privacyEnhanced: true,
        useHybridComposition: true,
      ),
    );
    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    _controller.onExitFullscreen = () {
      log('Exited Fullscreen');
    };
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    return YoutubePlayerControllerProvider(
      // Passing controller to widgets below.
      controller: _controller,

      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (kIsWeb && constraints.maxWidth > 800) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: player),
                  Column(
                    children: [
                      SizedBox(
                        width: 00,
                        height: 550,
                        child: SingleChildScrollView(),
                      ),
                    ],
                  ),
                ],
              );
            }
            return ListView(
              children: [
                Stack(
                  children: [
                    player,
                    Positioned.fill(
                      child: YoutubeValueBuilder(
                        controller: _controller,
                        builder: (context, value) {
                          return AnimatedCrossFade(
                            firstChild: const SizedBox.shrink(),
                            secondChild: Material(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      YoutubePlayerController.getThumbnail(
                                        videoId:
                                            _controller.params.playlist.first,
                                        quality: ThumbnailQuality.high,
                                      ),
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                child: const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            ),
                            crossFadeState: value.isReady
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                            duration: const Duration(milliseconds: 300),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}

///
class VideosAulasDemo7 extends StatefulWidget {
  @override
  _YoutubeAppDemoState7 createState() => _YoutubeAppDemoState7();
}

class _YoutubeAppDemoState7 extends State<VideosAulasDemo7> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'ahXWclK2GT0',
      params: const YoutubePlayerParams(
        playlist: [
          'ahXWclK2GT0',
          'WpmPp3JxOpg',
          'Cn6yJkS1jFg',
          '5sZR2PAChwk',
          'GkWjzoveOis',
          '9Ug_Pwk3fYg',
          'BbV6MQNaDHg',
          'khfyDi8dQtw',
          'xfTurQtwH9o',
          'wkw_r6svdbA',
          'KJo7yRMDTc8',
          'fqRgqdWmMHA',
          'QAkoOD1EgCM',
          'wMIHzErRftU',
          'kEz_CHlOM2A',
          'f_fXrv97klA',
          'ApjB55eJ8HU',
          'wIsTPSvHI5g',
          'ODXSNGg7R5o',
          'uv7gpqQKHFg',
          'Ht3odX1bdOk',
          'v2DAkvaJJnM',
          'OieS67MKR4k',
        ],
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
        privacyEnhanced: true,
        useHybridComposition: true,
      ),
    );
    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    _controller.onExitFullscreen = () {
      log('Exited Fullscreen');
    };
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    return YoutubePlayerControllerProvider(
      // Passing controller to widgets below.
      controller: _controller,

      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (kIsWeb && constraints.maxWidth > 800) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: player),
                  Column(
                    children: [
                      SizedBox(
                        width: 00,
                        height: 550,
                        child: SingleChildScrollView(),
                      ),
                    ],
                  ),
                ],
              );
            }
            return ListView(
              children: [
                Stack(
                  children: [
                    player,
                    Positioned.fill(
                      child: YoutubeValueBuilder(
                        controller: _controller,
                        builder: (context, value) {
                          return AnimatedCrossFade(
                            firstChild: const SizedBox.shrink(),
                            secondChild: Material(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      YoutubePlayerController.getThumbnail(
                                        videoId:
                                            _controller.params.playlist.first,
                                        quality: ThumbnailQuality.high,
                                      ),
                                    ),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                child: const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            ),
                            crossFadeState: value.isReady
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                            duration: const Duration(milliseconds: 300),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}
=======
///
>>>>>>> dcb9dbfcb03ac572c47876588e51f17b818c33d0
