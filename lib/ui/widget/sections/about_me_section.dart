import 'package:accordion/controllers.dart';
import 'package:dipper/ui/widget/icon_widget.dart';
import 'package:dipper/ui/widget/lotttie_widget.dart';
import 'package:dipper/utils/categories/icons_categories.dart';
import 'package:dipper/utils/categories/lottie_category.dart';
import 'package:dipper/utils/styles/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "About me",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                Accordion(
                  maxOpenSections: 1,
                  scaleWhenAnimating: true,
                  openAndCloseAnimation: true,
                  sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  sectionClosingHapticFeedback: SectionHapticFeedback.light,
                  children: [
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.calender,
                        size: 32,
                        color: ColorsCategory.black,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        '2000, Born',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                """    I'm Mahdi, and I was born on January 4th, 2000, in the beautiful coastal city of Bandar-e Anzali, Iran.\n    When I was just two years old, my family moved to the city of Chabahar in Iran's south due to my father's job in the navy.\n    As a kid, I developed a strong affinity for spending hours with my PC, engrossed in the world of video games. Whether it was exploring virtual landscapes or challenging myself in epic battles, gaming became a cherished pastime that fueled my imagination and problem-solving skills.""",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Expanded(
                            flex: 3,
                            child: LottieWidget(
                              url: LottieCategory.birthday,
                            ),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.education,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        '2018, University',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                """    In September 2018, a new chapter unfolded in my life as I embarked on my journey towards higher education. It was during this time that I eagerly enrolled in a university located in Kashmar, Razavi Khorasan, Iran, to pursue my Bachelor's degree in Software Engineering.\n    Immersed in a world of coding, algorithms, and problem-solving, I discovered my passion for developing innovative software solutions and exploring the boundless possibilities of technology.\n   My first coding experience began with delving into the realms of C and C++ programming languages, where I became fascinated by the logic and structure of coding. September 2018 marked the beginning of a thrilling and transformative journey, as I honed my coding skills and set my sights on making a significant impact in the realm of software development.""",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Expanded(
                            flex: 3,
                            child: LottieWidget(
                              url: LottieCategory.university,
                            ),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.award,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        '2019, ICPC',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                """    In December 2019, an exhilarating chapter unfolded in my journey as a software engineer when I participated in the ICPC 2019 competition held at the Asia site in Tehran, Iran. Together with my brilliant teammates, Amin Bitaraf and Behrouz Shafaati, we formed a formidable group of three.\n    The atmosphere was electrifying as we competed against 62 talented teams. Drawing upon our collective knowledge, problem-solving skills, and relentless determination, we navigated through intricate algorithms and coding challenges. Despite the fierce competition, our team secured the 48th position.\n   The experience not only bolstered our technical abilities but also fostered lifelong friendships and a deeper passion for the art of coding. December 2019 marked a significant milestone in my journey, fueling my desire to continuously learn, grow, and push the boundaries of what's possible in the world of software engineering.""",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Expanded(
                            flex: 3,
                            child: LottieWidget(
                              url: LottieCategory.competition,
                            ),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.sad,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        '2020, Corona',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                """    In 2020, as the world was struck by the COVID-19 pandemic and lockdown measures were implemented, I found myself compelled to return to my hometown of Anzali. With the sudden increase in free time, I decided to embark on a new learning journey and explore the realm of front-end development. Eager to expand my skillset, I delved into HTML, CSS, and vanilla JavaScript, immersing myself in the intricacies of web development.\n    Though my endeavors in front-end development began as a source of enjoyment and creative expression, I never fully committed to pursuing it seriously. Nevertheless, this period of self-directed learning allowed me to gain valuable insights and a solid foundation in these technologies. The year 2020 became a time of personal growth, adaptation, and the exploration of new horizons, as I embraced the opportunities that arose amidst the challenging circumstances of the global pandemic.""",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Expanded(
                            flex: 3,
                            child: LottieWidget(
                              url: LottieCategory.frontEnd,
                            ),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.cup,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        '2021, Barista',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                """    In 2021, my journey took an exciting turn as I embarked on a part-time job as a barista while continuing my studies in software engineering. Faced with the need to cover my expenses, I embraced the opportunity to work in a dynamic and customer-centric environment. As a barista, I honed my interpersonal skills, multitasking abilities, and attention to detail while serving a diverse clientele. Juggling work commitments alongside my software engineering studies proved to be a challenging yet rewarding experience. Balancing the demands of both worlds, I further developed my time management and prioritization skills, demonstrating my dedication to personal and professional growth.\n    This period not only provided financial support but also enhanced my overall skill set and taught me valuable lessons about perseverance and adaptability. Through hard work and determination, I forged ahead on my path as a software engineer, determined to achieve my goals and make a lasting impact in the field.""",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Expanded(
                            flex: 3,
                            child: LottieWidget(
                              url: LottieCategory.barista,
                            ),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.happy,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        '2022, Narvan',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                """    In 2022, I made a pivotal decision to leave my job and embark on a new learning journey, diving into Dart and Flutter to explore the world of mobile development. This decision led me to secure a highly rewarding Flutter internship at Narvan Startup Studio, located in Tehran and affiliated with Agah Group—a prominent member of major Iranian exchanges, including the Tehran Stock Exchange.\n    During my two-month internship, I had the opportunity to contribute to the development of Narbon, an internal social app fostering collaboration within the team. Following this enriching experience, I joined the Darato team as a junior mobile developer, working on a smart financial management app. Darato empowered individuals to invest their money, with the platform managing their investments in the Iran Stock Exchange.\n    The supportive and positive work environment at Narvan allowed me to learn and grow significantly, making my work incredibly enjoyable and fulfilling.""",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Expanded(
                            flex: 3,
                            child: LottieWidget(
                              url: LottieCategory.flutter,
                            ),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                  ],
                ),
              ],
            );
          } else {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "About me",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                Accordion(
                  maxOpenSections: 1,
                  scaleWhenAnimating: true,
                  openAndCloseAnimation: true,
                  sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  sectionClosingHapticFeedback: SectionHapticFeedback.light,
                  children: [
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.calender,
                        size: 32,
                        color: ColorsCategory.black,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        '2000, Born',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              """    I'm Mahdi, and I was born on January 4th, 2000, in the beautiful coastal city of Bandar-e Anzali, Iran.\n    When I was just two years old, my family moved to the city of Chabahar in Iran's south due to my father's job in the navy.\n    As a kid, I developed a strong affinity for spending hours with my PC, engrossed in the world of video games. Whether it was exploring virtual landscapes or challenging myself in epic battles, gaming became a cherished pastime that fueled my imagination and problem-solving skills.""",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          const LottieWidget(
                            url: LottieCategory.birthday,
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.education,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        '2018, University',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              """    In September 2018, a new chapter unfolded in my life as I embarked on my journey towards higher education. It was during this time that I eagerly enrolled in a university located in Kashmar, Razavi Khorasan, Iran, to pursue my Bachelor's degree in Software Engineering.\n    Immersed in a world of coding, algorithms, and problem-solving, I discovered my passion for developing innovative software solutions and exploring the boundless possibilities of technology.\n   My first coding experience began with delving into the realms of C and C++ programming languages, where I became fascinated by the logic and structure of coding. September 2018 marked the beginning of a thrilling and transformative journey, as I honed my coding skills and set my sights on making a significant impact in the realm of software development.""",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          const LottieWidget(
                            url: LottieCategory.university,
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.award,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        '2019, ICPC',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              """    In December 2019, an exhilarating chapter unfolded in my journey as a software engineer when I participated in the ICPC 2019 competition held at the Asia site in Tehran, Iran. Together with my brilliant teammates, Amin Bitaraf and Behrouz Shafaati, we formed a formidable group of three.\n    The atmosphere was electrifying as we competed against 62 talented teams. Drawing upon our collective knowledge, problem-solving skills, and relentless determination, we navigated through intricate algorithms and coding challenges. Despite the fierce competition, our team secured the 48th position.\n   The experience not only bolstered our technical abilities but also fostered lifelong friendships and a deeper passion for the art of coding. December 2019 marked a significant milestone in my journey, fueling my desire to continuously learn, grow, and push the boundaries of what's possible in the world of software engineering.""",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          const LottieWidget(
                            url: LottieCategory.competition,
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.sad,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        '2020, Corona',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              """    In 2020, as the world was struck by the COVID-19 pandemic and lockdown measures were implemented, I found myself compelled to return to my hometown of Anzali. With the sudden increase in free time, I decided to embark on a new learning journey and explore the realm of front-end development. Eager to expand my skillset, I delved into HTML, CSS, and vanilla JavaScript, immersing myself in the intricacies of web development.\n    Though my endeavors in front-end development began as a source of enjoyment and creative expression, I never fully committed to pursuing it seriously. Nevertheless, this period of self-directed learning allowed me to gain valuable insights and a solid foundation in these technologies. The year 2020 became a time of personal growth, adaptation, and the exploration of new horizons, as I embraced the opportunities that arose amidst the challenging circumstances of the global pandemic.""",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          const LottieWidget(
                            url: LottieCategory.frontEnd,
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.cup,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        '2021, Barista',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              """    In 2021, my journey took an exciting turn as I embarked on a part-time job as a barista while continuing my studies in software engineering. Faced with the need to cover my expenses, I embraced the opportunity to work in a dynamic and customer-centric environment. As a barista, I honed my interpersonal skills, multitasking abilities, and attention to detail while serving a diverse clientele. Juggling work commitments alongside my software engineering studies proved to be a challenging yet rewarding experience. Balancing the demands of both worlds, I further developed my time management and prioritization skills, demonstrating my dedication to personal and professional growth.\n    This period not only provided financial support but also enhanced my overall skill set and taught me valuable lessons about perseverance and adaptability. Through hard work and determination, I forged ahead on my path as a software engineer, determined to achieve my goals and make a lasting impact in the field.""",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          const LottieWidget(
                            url: LottieCategory.barista,
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.happy,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        '2022, Narvan',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              """    In 2022, I made a pivotal decision to leave my job and embark on a new learning journey, diving into Dart and Flutter to explore the world of mobile development. This decision led me to secure a highly rewarding Flutter internship at Narvan Startup Studio, located in Tehran and affiliated with Agah Group—a prominent member of major Iranian exchanges, including the Tehran Stock Exchange.\n    During my two-month internship, I had the opportunity to contribute to the development of Narbon, an internal social app fostering collaboration within the team. Following this enriching experience, I joined the Darato team as a junior mobile developer, working on a smart financial management app. Darato empowered individuals to invest their money, with the platform managing their investments in the Iran Stock Exchange.\n    The supportive and positive work environment at Narvan allowed me to learn and grow significantly, making my work incredibly enjoyable and fulfilling.""",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          const LottieWidget(
                            url: LottieCategory.flutter,
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                  ],
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
