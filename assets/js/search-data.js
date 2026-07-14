// get the ninja-keys element
const ninja = document.querySelector('ninja-keys');

// add the home and posts menu items
ninja.data = [{
    id: "nav-about",
    title: "About",
    section: "Navigation",
    handler: () => {
      window.location.href = "/";
    },
  },{id: "nav-publications",
          title: "Publications",
          description: "Peer-reviewed papers, newest first. * denotes equal contribution.",
          section: "Navigation",
          handler: () => {
            window.location.href = "/publications/";
          },
        },{id: "nav-teaching",
          title: "Teaching",
          description: "Courses I have taught or assisted at Tel Aviv University.",
          section: "Navigation",
          handler: () => {
            window.location.href = "/teaching/";
          },
        },{id: "news-two-papers-presented-at-acm-ccs-2024-workshops-aisec-adversarial-example-transferability-and-healthsec-privacy-preserving-genomic-research",
          title: 'Two papers presented at ACM CCS 2024 workshops: AISec (adversarial-example transferability) and HealthSec...',
          description: "",
          section: "News",},{id: "news-started-my-ph-d-at-the-blavatnik-school-of-computer-science-tel-aviv-university",
          title: 'Started my Ph.D. at the Blavatnik School of Computer Science, Tel Aviv University....',
          description: "",
          section: "News",},{id: "news-our-paper-backdooring-acoustic-foundation-models-for-physically-realizable-triggers-was-accepted-to-raid-2026-tada",
          title: 'Our paper Backdooring Acoustic Foundation Models for Physically Realizable Triggers was accepted to...',
          description: "",
          section: "News",},{
      id: 'light-theme',
      title: 'Change theme to light',
      description: 'Change the theme of the site to Light',
      section: 'Theme',
      handler: () => {
        setThemeSetting("light");
      },
    },
    {
      id: 'dark-theme',
      title: 'Change theme to dark',
      description: 'Change the theme of the site to Dark',
      section: 'Theme',
      handler: () => {
        setThemeSetting("dark");
      },
    },
    {
      id: 'system-theme',
      title: 'Use system default theme',
      description: 'Change the theme of the site to System Default',
      section: 'Theme',
      handler: () => {
        setThemeSetting("system");
      },
    },];
