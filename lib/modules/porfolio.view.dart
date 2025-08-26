import 'package:flutter/material.dart';
import 'package:portfolio_page/modules/widgets/experience_card.widget.dart';
import 'package:portfolio_page/modules/widgets/footer_link.widget.dart';
import 'package:portfolio_page/modules/widgets/project_card.widget.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0A0A),
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 800),
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width > 600 ? 40 : 20,
                vertical: 60,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Desmond Ngwuta',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Building mobile experiences and solutions',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 16,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(height: 32),

                      // Bio Section
                      Text(
                        'I\'m a mobile developer and engineer based in Nigeria.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.6,
                        ),
                      ),
                      SizedBox(height: 20),

                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 1.6,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  'Currently, I\'m a Mid-Level Mobile Developer at ',
                            ),
                            TextSpan(
                              text: 'NUBiA Mega Tech',
                              style: TextStyle(color: Color(0xFF4A9EFF)),
                            ),
                            TextSpan(
                              text:
                                  ', maintaining high standards of code quality and adherence to industry practices. I\'ve worked as a Senior Android Engineer at ',
                            ),
                            TextSpan(
                              text: 'Jamit',
                              style: TextStyle(color: Color(0xFF4A9EFF)),
                            ),
                            TextSpan(
                              text:
                                  ', where I designed core libraries for high-quality, low-latency communications and enhanced app compatibility across Android devices.',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),

                      Text(
                        'I love building scalable mobile applications with modern architecture patterns and ensuring optimal performance across different devices.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.6,
                        ),
                      ),
                      SizedBox(height: 20),

                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 1.6,
                          ),
                          children: [
                            TextSpan(text: 'Reach me at '),
                            TextSpan(
                              text: 'desmondchidi311@gmail.com',
                              style: TextStyle(color: Color(0xFF4A9EFF)),
                            ),
                            TextSpan(text: '.'),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 60),

                  // Projects Section
                  Text(
                    'Projects',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 24),

                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth > 700) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: ProjectCard(
                                    title: 'Skrind Health App',
                                    description:
                                        'Medical Diagnostics with AI Integration',
                                    date: 'Aug 2021',
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: ProjectCard(
                                    title: 'Jamit Communication',
                                    description:
                                        'High-Quality Low-Latency User Communications',
                                    date: 'Oct 2024',
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: ProjectCard(
                                    title: 'Chaka Trading App',
                                    description:
                                        'Bug Fixes and Performance Optimization',
                                    date: 'Jun 2022',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Expanded(
                                  child: ProjectCard(
                                    title: 'Foodlocker App',
                                    description:
                                        'Modern Android Architecture with Kotlin & MVVM',
                                    date: 'May 2020',
                                  ),
                                ),
                                Expanded(flex: 2, child: Container()),
                              ],
                            ),
                          ],
                        );
                      } else {
                        return Column(
                          children: [
                            ProjectCard(
                              title: 'Skrind Health App',
                              description:
                                  'Medical Diagnostics with AI Integration',
                              date: 'Aug 2021',
                            ),
                            SizedBox(height: 16),
                            ProjectCard(
                              title: 'Jamit Communication',
                              description:
                                  'High-Quality Low-Latency User Communications',
                              date: 'Oct 2024',
                            ),
                            SizedBox(height: 16),
                            ProjectCard(
                              title: 'Chaka Trading App',
                              description:
                                  'Bug Fixes and Performance Optimization',
                              date: 'Jun 2022',
                            ),
                            SizedBox(height: 16),
                            ProjectCard(
                              title: 'Foodlocker App',
                              description:
                                  'Modern Android Architecture with Kotlin & MVVM',
                              date: 'May 2020',
                            ),
                          ],
                        );
                      }
                    },
                  ),

                  SizedBox(height: 60),

                  // Experience Section
                  Text(
                    'Experience',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 24),

                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth > 700) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: ExperienceCard(
                                    title: 'Current Role',
                                    subtitle:
                                        'Mid-Level Mobile Developer at NUBiA Mega Tech',
                                    date: 'Jul 2024',
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: ExperienceCard(
                                    title: 'Senior Android Engineer',
                                    subtitle: 'Jamit - San Francisco, CA',
                                    date: 'Oct 2024',
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: ExperienceCard(
                                    title: 'Android Engineer',
                                    subtitle: 'Chaka.com - Lagos, Nigeria',
                                    date: 'Jun 2022',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      } else {
                        return Column(
                          children: [
                            ExperienceCard(
                              title: 'Current Role',
                              subtitle:
                                  'Mid-Level Mobile Developer at NUBiA Mega Tech',
                              date: 'Jul 2024',
                            ),
                            SizedBox(height: 16),
                            ExperienceCard(
                              title: 'Senior Android Engineer',
                              subtitle: 'Jamit - San Francisco, CA',
                              date: 'Oct 2024',
                            ),
                            SizedBox(height: 16),
                            ExperienceCard(
                              title: 'Android Engineer',
                              subtitle: 'Chaka.com - Lagos, Nigeria',
                              date: 'Jun 2022',
                            ),
                          ],
                        );
                      }
                    },
                  ),

                  SizedBox(height: 80),

                  // Footer
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FooterLink(
                          text: 'GitHub',
                          url: 'https://github.com/DLXXVII',
                        ),
                        SizedBox(width: 32),
                        FooterLink(
                          text: 'LinkedIn',
                          url: 'https://linkedin.com/in/ngwuta',
                        ),
                        SizedBox(width: 32),
                        FooterLink(
                          text: 'Email',
                          url: 'mailto:desmondchidi311@gmail.com',
                        ),
                        SizedBox(width: 32),
                        FooterLink(
                          text: 'Resume',
                          url: 'mailto:desmondchidi311@gmail.com',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
