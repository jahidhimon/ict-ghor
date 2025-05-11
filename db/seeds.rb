# Clear existing data (optional - use carefully in production)
ActionText::RichText.destroy_all
Chapter.destroy_all
Topic.destroy_all

# Create chapters with translations
chapters = [
  {
    position: 1,
    translations: [
      { locale: 'en', name: "ICT: World and Bangladesh Perspective" },
      { locale: 'bn', name: "আইসিটি: বৈশ্বিক ও বাংলাদেশ প্রেক্ষাপট" }
    ],
    topics: [
      {
        position: 1.000,
        translations: [
          { locale: 'en', name: "Concept of ICT", description: "Basic definitions and core concepts of Information and Communication Technology, including its main components and relationship to IT." },
          { locale: 'bn', name: "আইসিটির ধারণা", description: "আইসিটির মৌলিক সংজ্ঞা ও ধারণা, এর প্রধান উপাদান এবং আইটির সাথে সম্পর্ক সহ" }
        ],
        content: {
          'en': '<div class="trix-content"><h2>What is ICT?</h2><p>Information and Communication Technology (ICT) refers to technologies that provide access to information through telecommunications. It focuses on communication technologies including the Internet, wireless networks, cell phones, and other communication mediums.</p><h3>Components of ICT</h3><ul><li>Hardware</li><li>Software</li><li>Networks</li><li>Data resources</li></ul><p>ICT is considered a subset of information technology (IT) that stresses the role of unified communications and the integration of telecommunications, computers, middleware as well as necessary software, storage, and audio-visual systems, which enable users to access, store, transmit, and manipulate information.</p></div>',
          'bn': '<div class="trix-content"><h2>আইসিটি কী?</h2><p>তথ্য ও যোগাযোগ প্রযুক্তি (আইসিটি) এমন প্রযুক্তিকে বোঝায় যা টেলিযোগাযোগের মাধ্যমে তথ্যের অ্যাক্সেস প্রদান করে। এটি ইন্টারনেট, ওয়্যারলেস নেটওয়ার্ক, মোবাইল ফোন এবং অন্যান্য যোগাযোগ মাধ্যম সহ যোগাযোগ প্রযুক্তিগুলিতে ফোকাস করে।</p><h3>আইসিটির উপাদান</h3><ul><li>হার্ডওয়্যার</li><li>সফটওয়্যার</li><li>নেটওয়ার্ক</li><li>ডাটা সম্পদ</li></ul><p>আইসিটিকে তথ্য প্রযুক্তির (আইটি) একটি উপসেট হিসাবে বিবেচনা করা হয় যা একীভূত যোগাযোগের ভূমিকা এবং টেলিযোগাযোগ, কম্পিউটার, মিডলওয়্যার সাথে প্রয়োজনীয় সফটওয়্যার, স্টোরেজ এবং অডিও-ভিজ্যুয়াল সিস্টেমগুলির একীকরণকে জোর দেয়, যা ব্যবহারকারীদের তথ্য অ্যাক্সেস, সংরক্ষণ, প্রেরণ এবং পরিচালনা করতে সক্ষম করে।</p></div>'
        }
      },
      {
        position: 2.000,
        translations: [
          { locale: 'en', name: "Development of ICT", description: "Historical development of ICT through major technological eras, from early calculation tools to modern digital systems" },
          { locale: 'bn', name: "আইসিটির বিকাশ", description: "প্রাথমিক গণনা যন্ত্র থেকে আধুনিক ডিজিটাল সিস্টেম পর্যন্ত প্রধান প্রযুক্তিগত যুগের মাধ্যমে আইসিটির ঐতিহাসিক বিকাশ" }
        ],
        content: {
          'en': '<div class="trix-content"><h2>Historical Development of ICT</h2><p>The history of ICT is a fascinating journey through human innovation and technological advancement.</p><h3>Key Phases</h3><ol><li><strong>Pre-mechanical (3000 BC - 1450 AD)</strong>: Early writing systems, abacus</li><li><strong>Mechanical (1450-1840)</strong>: Printing press, slide rules, Pascal\'s calculator</li><li><strong>Electromechanical (1840-1940)</strong>: Telegraph, telephone, radio, early computing machines</li><li><strong>Electronic (1940-present)</strong>: Digital computers, internet, mobile technology</li></ol><p>The evolution of ICT has been characterized by increasing miniaturization, processing power, storage capacity, and networking capabilities while costs have generally decreased, making technology more accessible worldwide.</p></div>',
          'bn': '<div class="trix-content"><h2>আইসিটির ঐতিহাসিক বিকাশ</h2><p>আইসিটির ইতিহাস মানব উদ্ভাবন এবং প্রযুক্তিগত অগ্রগতির মাধ্যমে একটি আকর্ষণীয় যাত্রা।</p><h3>মূল পর্যায়সমূহ</h3><ol><li><strong>প্রাক-যান্ত্রিক (৩০০০ খ্রিস্টপূর্ব - ১৪৫০ খ্রিস্টাব্দ)</strong>: প্রাথমিক লেখা পদ্ধতি, অ্যাবাকাস</li><li><strong>যান্ত্রিক (১৪৫০-১৮৪০)</strong>: মুদ্রণ যন্ত্র, স্লাইড রুল, প্যাসকেলের ক্যালকুলেটর</li><li><strong>ইলেকট্রোমেকানিক্যাল (১৮৪০-১৯৪০)</strong>: টেলিগ্রাফ, টেলিফোন, রেডিও, প্রাথমিক কম্পিউটিং মেশিন</li><li><strong>ইলেকট্রনিক (১৯৪০-বর্তমান)</strong>: ডিজিটাল কম্পিউটার, ইন্টারনেট, মোবাইল প্রযুক্তি</li></ol><p>আইসিটির বিবর্তন ক্রমবর্ধমান ক্ষুদ্রায়ন, প্রসেসিং পাওয়ার, স্টোরেজ ক্যাপাসিটি এবং নেটওয়ার্কিং ক্ষমতা দ্বারা চিহ্নিত করা হয়েছে, যখন খরচগুলি সাধারণত হ্রাস পেয়েছে, যা বিশ্বব্যাপী প্রযুক্তিকে আরও সহজলভ্য করে তুলেছে।</p></div>'
        }
      },
      {
        position: 3.000,
        translations: [
          { locale: 'en', name: "Use of ICT", description: "Various applications and uses of ICT across education, healthcare, business, governance, and entertainment sectors." },
          { locale: 'bn', name: "আইসিটির ব্যবহার", description: "শিক্ষা, স্বাস্থ্যসেবা, ব্যবসা, শাসন এবং বিনোদন খাত জুড়ে আইসিটির বিভিন্ন প্রয়োগ ও ব্যবহার" }
        ],
        content: {
          'en': '<div class="trix-content"><h2>Applications and Uses of ICT</h2><p>Information and Communication Technology has transformed virtually every aspect of modern life. Here are the major sectors where ICT is extensively used:</p><h3>Education</h3><p>ICT has revolutionized education through e-learning platforms, digital classrooms, educational software, and access to global information resources.</p><h3>Healthcare</h3><p>In healthcare, ICT enables electronic health records, telemedicine, medical imaging, remote patient monitoring, and health information systems.</p><h3>Business and Commerce</h3><p>Businesses utilize ICT for e-commerce, enterprise resource planning, customer relationship management, digital marketing, and business intelligence.</p><h3>Governance</h3><p>E-governance initiatives use ICT to improve government services, citizen interactions, public administration, and democratic processes.</p><h3>Entertainment and Media</h3><p>Digital content creation, streaming services, online gaming, and social media platforms are all made possible through ICT.</p></div>',
          'bn': '<div class="trix-content"><h2>আইসিটির প্রয়োগ ও ব্যবহার</h2><p>তথ্য ও যোগাযোগ প্রযুক্তি আধুনিক জীবনের প্রায় প্রতিটি দিককে রূপান্তরিত করেছে। এখানে প্রধান সেক্টরগুলি যেখানে আইসিটি ব্যাপকভাবে ব্যবহৃত হয়:</p><h3>শিক্ষা</h3><p>আইসিটি ই-লার্নিং প্ল্যাটফর্ম, ডিজিটাল ক্লাসরুম, শিক্ষামূলক সফটওয়্যার এবং গ্লোবাল তথ্য সম্পদে অ্যাক্সেসের মাধ্যমে শিক্ষাকে বিপ্লবিত করেছে।</p><h3>স্বাস্থ্যসেবা</h3><p>স্বাস্থ্যসেবায়, আইসিটি ইলেকট্রনিক হেলথ রেকর্ড, টেলিমেডিসিন, মেডিকেল ইমেজিং, রিমোট পেশেন্ট মনিটরিং এবং হেলথ ইনফরমেশন সিস্টেম সক্ষম করে।</p><h3>ব্যবসা ও বাণিজ্য</h3><p>ব্যবসাগুলি ই-কমার্স, এন্টারপ্রাইজ রিসোর্স প্ল্যানিং, কাস্টমার রিলেশনশিপ ম্যানেজমেন্ট, ডিজিটাল মার্কেটিং এবং বিজনেস ইন্টেলিজেন্সের জন্য আইসিটি ব্যবহার করে।</p><h3>শাসন</h3><p>ই-গভর্নেন্স উদ্যোগগুলি সরকারি পরিষেবা, নাগরিক মিথস্ক্রিয়া, পাবলিক অ্যাডমিনিস্ট্রেশন এবং গণতান্ত্রিক প্রক্রিয়াগুলি উন্নত করতে আইসিটি ব্যবহার করে।</p><h3>বিনোদন ও মিডিয়া</h3><p>ডিজিটাল কন্টেন্ট তৈরি, স্ট্রিমিং পরিষেবা, অনলাইন গেমিং এবং সোশ্যাল মিডিয়া প্ল্যাটফর্মগুলি সবই আইসিটির মাধ্যমে সম্ভব হয়েছে।</p></div>'
        }
      },
      {
        position: 4.000,
        translations: [
          { locale: 'en', name: "Impact of ICT", description: "Social, economic and environmental impacts of ICT, including both positive benefits and negative challenges" },
          { locale: 'bn', name: "আইসিটির প্রভাব", description: "আইসিটির সামাজিক, অর্থনৈতিক ও পরিবেশগত প্রভাব, ইতিবাচক সুবিধা এবং নেতিবাচক চ্যালেঞ্জ উভয়ই অন্তর্ভুক্ত" }
        ],
        content: {
          'en': '<div class="trix-content"><h2>Impact of ICT on Society, Economy, and Environment</h2><h3>Social Impacts</h3><p>ICT has transformed social interactions through social media, instant messaging, and video conferencing. It has created new forms of communities and changed how people communicate and maintain relationships. While it has increased connectivity, concerns include digital addiction, privacy issues, and the digital divide.</p><h3>Economic Impacts</h3><p>The economic implications of ICT include:</p><ul><li>Job creation in the technology sector</li><li>Increased productivity and efficiency</li><li>New business models and markets</li><li>Economic growth through innovation</li><li>Global outsourcing opportunities</li><li>Challenges of automation and job displacement</li></ul><h3>Environmental Impacts</h3><p>ICT affects the environment in both positive and negative ways:</p><h4>Positive</h4><ul><li>Paperless offices reducing deforestation</li><li>Remote work reducing transportation emissions</li><li>Smart grids optimizing energy consumption</li><li>Environmental monitoring technologies</li></ul><h4>Negative</h4><ul><li>E-waste from discarded devices</li><li>Energy consumption of data centers</li><li>Resource extraction for manufacturing electronics</li></ul></div>',
          'bn': '<div class="trix-content"><h2>সমাজ, অর্থনীতি এবং পরিবেশে আইসিটির প্রভাব</h2><h3>সামাজিক প্রভাব</h3><p>আইসিটি সোশ্যাল মিডিয়া, ইনস্ট্যান্ট মেসেজিং এবং ভিডিও কনফারেন্সিংয়ের মাধ্যমে সামাজিক মিথস্ক্রিয়াকে রূপান্তরিত করেছে। এটি নতুন ধরনের সম্প্রদায় তৈরি করেছে এবং লোকেরা কীভাবে যোগাযোগ করে এবং সম্পর্ক বজায় রাখে তা পরিবর্তন করেছে। যখন এটি সংযোগ বাড়িয়েছে, উদ্বেগগুলির মধ্যে রয়েছে ডিজিটাল আসক্তি, গোপনীয়তা সমস্যা এবং ডিজিটাল বিভাজন।</p><h3>অর্থনৈতিক প্রভাব</h3><p>আইসিটির অর্থনৈতিক প্রভাবগুলির মধ্যে রয়েছে:</p><ul><li>প্রযুক্তি খাতে কর্মসংস্থান সৃষ্টি</li><li>উত্পাদনশীলতা ও দক্ষতা বৃদ্ধি</li><li>নতুন ব্যবসায়িক মডেল ও বাজার</li><li>উদ্ভাবনের মাধ্যমে অর্থনৈতিক প্রবৃদ্ধি</li><li>গ্লোবাল আউটসোর্সিং সুযোগ</li><li>স্বয়ংক্রিয়করণ এবং চাকরি স্থানচ্যুতির চ্যালেঞ্জ</li></ul><h3>পরিবেশগত প্রভাব</h3><p>আইসিটি ইতিবাচক এবং নেতিবাচক উভয় উপায়ে পরিবেশকে প্রভাবিত করে:</p><h4>ইতিবাচক</h4><ul><li>কাগজবিহীন অফিস বনোচ্ছেদন কমায়</li><li>দূরবর্তী কাজ পরিবহন নির্গমন কমায়</li><li>স্মার্ট গ্রিড শক্তি ব্যবহার অপ্টিমাইজ করে</li><li>পরিবেশ পর্যবেক্ষণ প্রযুক্তি</li></ul><h4>নেতিবাচক</h4><ul><li>পরিত্যক্ত ডিভাইস থেকে ই-বর্জ্য</li><li>ডাটা সেন্টারগুলির শক্তি খরচ</li><li>ইলেকট্রনিক্স উৎপাদনের জন্য সম্পদ নিষ্কাশন</li></ul></div>'
        }
      },
      {
        position: 5.000,
        translations: [
          { locale: 'en', name: "Digital Bangladesh", description: "Concept and implementation of Digital Bangladesh vision, including key pillars and major initiatives" },
          { locale: 'bn', name: "ডিজিটাল বাংলাদেশ", description: "ডিজিটাল বাংলাদেশ দৃষ্টিভঙ্গির ধারণা ও বাস্তবায়ন, মূল স্তম্ভ এবং প্রধান উদ্যোগসমূহ সহ" }
        ],
        content: {
          'en': '<div class="trix-content"><h2>Digital Bangladesh Vision</h2><p>Digital Bangladesh is the vision of transforming the country into a digitally developed nation by 2041. It represents the integration of ICT in all sectors to improve service delivery, enhance economic growth, and ensure good governance.</p><h3>Key Pillars</h3><ol><li><strong>Human Resource Development</strong>: Focusing on ICT education and skilled workforce development</li><li><strong>Connectivity</strong>: Establishing nationwide internet connectivity and digital infrastructure</li><li><strong>E-Governance</strong>: Digitizing government services for better citizen service delivery</li><li><strong>ICT Industry Promotion</strong>: Developing the local IT/ITES industry and encouraging innovation</li></ol><h3>Major Initiatives</h3><ul><li>Union Digital Centers bringing services to rural areas</li><li>National Portal providing one-stop access to government services</li><li>Digital ID system (National ID cards)</li><li>Mobile financial services</li><li>High-Tech Parks to foster IT industry growth</li><li>School digitization programs</li></ul><p>The Digital Bangladesh vision has significantly contributed to transforming the country\'s service delivery system, creating employment opportunities, and improving the efficiency of governance.</p></div>',
          'bn': '<div class="trix-content"><h2>ডিজিটাল বাংলাদেশ দৃষ্টিভঙ্গি</h2><p>ডিজিটাল বাংলাদেশ হল ২০৪১ সালের মধ্যে দেশকে একটি ডিজিটালি উন্নত জাতিতে রূপান্তরের দৃষ্টিভঙ্গি। এটি সেবা সরবরাহ উন্নত করতে, অর্থনৈতিক প্রবৃদ্ধি বাড়াতে এবং সুশাসন নিশ্চিত করতে সকল খাতে আইসিটির একীকরণকে প্রতিনিধিত্ব করে।</p><h3>মূল স্তম্ভ</h3><ol><li><strong>মানব সম্পদ উন্নয়ন</strong>: আইসিটি শিক্ষা এবং দক্ষ কর্মশক্তি উন্নয়নে ফোকাস করা</li><li><strong>সংযোগ</strong>: জাতীয় ইন্টারনেট সংযোগ এবং ডিজিটাল অবকাঠামো প্রতিষ্ঠা করা</li><li><strong>ই-গভর্নেন্স</strong>: উন্নত নাগরিক সেবা সরবরাহের জন্য সরকারি সেবাগুলি ডিজিটালাইজ করা</li><li><strong>আইসিটি শিল্প প্রচার</strong>: স্থানীয় আইটি/আইটিইএস শিল্পের বিকাশ এবং উদ্ভাবন উৎসাহিত করা</li></ol><h3>প্রধান উদ্যোগসমূহ</h3><ul><li>ইউনিয়ন ডিজিটাল সেন্টার গ্রামীণ এলাকায় সেবা নিয়ে আসা</li><li>জাতীয় পোর্টাল সরকারি সেবাগুলিতে এক-স্টপ অ্যাক্সেস প্রদান করে</li><li>ডিজিটাল আইডি সিস্টেম (জাতীয় আইডি কার্ড)</li><li>মোবাইল আর্থিক সেবা</li><li>আইটি শিল্পের বিকাশ উৎসাহিত করতে হাই-টেক পার্ক</li><li>স্কুল ডিজিটাইজেশন প্রোগ্রাম</li></ul><p>ডিজিটাল বাংলাদেশ দৃষ্টিভঙ্গি দেশের সেবা সরবরাহ ব্যবস্থা রূপান্তর, কর্মসংস্থান সৃষ্টি এবং শাসনের দক্ষতা উন্নত করতে উল্লেখযোগ্যভাবে অবদান রেখেছে।</p></div>'
        }
      },
      {
        position: 6.000,
        translations: [
          { locale: 'en', name: "ICT Act and Security", description: "ICT laws, cybersecurity challenges, and ethical considerations in the digital landscape" },
          { locale: 'bn', name: "আইসিটি আইন ও নিরাপত্তা", description: "ডিজিটাল ল্যান্ডস্কেপে আইসিটি আইন, সাইবার নিরাপত্তা চ্যালেঞ্জ এবং নৈতিক বিবেচনা" }
        ],
        content: {
          'en': '<div class="trix-content"><h2>ICT Laws, Cybersecurity, and Ethics</h2><h3>ICT Laws in Bangladesh</h3><p>Bangladesh has enacted several laws to govern ICT use:</p><ul><li><strong>ICT Act 2006 (amended in 2013)</strong>: Covers digital signatures, computer crimes, electronic records, etc.</li><li><strong>Digital Security Act 2018</strong>: Addresses cyber crimes, protection of critical information infrastructure, and digital forensics</li><li><strong>Copyright Act (amended)</strong>: Includes protection for computer programs and digital content</li></ul><h3>Cybersecurity</h3><p>Cybersecurity involves protecting computer systems, networks, and data from digital attacks and unauthorized access.</p><h4>Common Cyber Threats</h4><ul><li>Malware (viruses, worms, ransomware)</li><li>Phishing attacks</li><li>DDoS (Distributed Denial of Service) attacks</li><li>Data breaches</li><li>Identity theft</li></ul><h4>Cybersecurity Measures</h4><ul><li>Strong password policies</li><li>Regular software updates</li><li>Firewalls and antivirus programs</li><li>Data encryption</li><li>User education and awareness</li></ul><h3>ICT Ethics</h3><p>Ethical considerations in ICT include:</p><ul><li>Privacy and data protection</li><li>Intellectual property rights</li><li>Digital divide and accessibility</li><li>Environmental considerations</li><li>Professional conduct in ICT</li></ul><p>Understanding these aspects is crucial for responsible use of technology and ensuring that ICT benefits society while minimizing potential harm.</p></div>',
          'bn': '<div class="trix-content"><h2>আইসিটি আইন, সাইবার নিরাপত্তা, এবং নৈতিকতা</h2><h3>বাংলাদেশে আইসিটি আইন</h3><p>বাংলাদেশ আইসিটি ব্যবহার নিয়ন্ত্রণের জন্য বেশ কয়েকটি আইন প্রণয়ন করেছে:</p><ul><li><strong>আইসিটি আইন ২০০৬ (২০১৩ সালে সংশোধিত)</strong>: ডিজিটাল স্বাক্ষর, কম্পিউটার অপরাধ, ইলেকট্রনিক রেকর্ড ইত্যাদি অন্তর্ভুক্ত করে</li><li><strong>ডিজিটাল নিরাপত্তা আইন ২০১৮</strong>: সাইবার অপরাধ, গুরুত্বপূর্ণ তথ্য অবকাঠামো সুরক্ষা এবং ডিজিটাল ফরেনসিক সম্বোধন করে</li><li><strong>কপিরাইট আইন (সংশোধিত)</strong>: কম্পিউটার প্রোগ্রাম এবং ডিজিটাল কন্টেন্টের সুরক্ষা অন্তর্ভুক্ত করে</li></ul><h3>সাইবার নিরাপত্তা</h3><p>সাইবার নিরাপত্তা কম্পিউটার সিস্টেম, নেটওয়ার্ক এবং ডাটাকে ডিজিটাল আক্রমণ এবং অননুমোদিত অ্যাক্সেস থেকে রক্ষা করে।</p><h4>সাধারণ সাইবার হুমকি</h4><ul><li>ম্যালওয়্যার (ভাইরাস, ওয়ার্ম, র্যানসমওয়্যার)</li><li>ফিশিং আক্রমণ</li><li>DDoS (ডিস্ট্রিবিউটেড ডিনায়াল অফ সার্ভিস) আক্রমণ</li><li>ডাটা লঙ্ঘন</li><li>পরিচয় চুরি</li></ul><h4>সাইবার নিরাপত্তা ব্যবস্থা</h4><ul><li>শক্তিশালী পাসওয়ার্ড নীতি</li><li>নিয়মিত সফটওয়্যার আপডেট</li><li>ফায়ারওয়াল এবং অ্যান্টিভাইরাস প্রোগ্রাম</li><li>ডাটা এনক্রিপশন</li><li>ব্যবহারকারী শিক্ষা ও সচেতনতা</li></ul><h3>আইসিটি নৈতিকতা</h3><p>আইসিটিতে নৈতিক বিবেচনার মধ্যে রয়েছে:</p><ul><li>গোপনীয়তা এবং ডাটা সুরক্ষা</li><li>বৌদ্ধিক সম্পত্তি অধিকার</li><li>ডিজিটাল বিভাজন এবং অ্যাক্সেসযোগ্যতা</li><li>পরিবেশগত বিবেচনা</li><li>আইসিটিতে পেশাদার আচরণ</li></ul><p>এই দিকগুলি বোঝা দায়িত্বশীল প্রযুক্তি ব্যবহারের জন্য এবং নিশ্চিত করার জন্য গুরুত্বপূর্ণ যে আইসিটি সম্ভাব্য ক্ষতি কমিয়ে সমাজকে উপকৃত করে।</p></div>'
        }
      }
    ]
  },
  {
    position: 2,
    translations: [
      { locale: 'en', name: "Communication System and Networking" },
      { locale: 'bn', name: "যোগাযোগ ব্যবস্থা ও নেটওয়ার্কিং" }
    ]
  },
  {
    position: 3,
    translations: [
      { locale: 'en', name: "Number System and Digital Device" },
      { locale: 'bn', name: "সংখ্যা পদ্ধতি ও ডিজিটাল ডিভাইস" }
    ]
  },
  {
    position: 4,
    translations: [
      { locale: 'en', name: "Web Design and HTML" },
      { locale: 'bn', name: "ওয়েব ডিজাইন ও এইচটিএমএল" }
    ]
  },
  {
    position: 5,
    translations: [
      { locale: 'en', name: "Programming Language" },
      { locale: 'bn', name: "প্রোগ্রামিং ভাষা" }
    ]
  },
  {
    position: 6,
    translations: [
      { locale: 'en', name: "Database Management System" },
      { locale: 'bn', name: "ডাটাবেস ম্যানেজমেন্ট সিস্টেম" }
    ]
  }
]

puts "Starting seed process..."

# Create chapters and topics
chapters.each do |chapter_data|
  chapter = Chapter.create!(position: chapter_data[:position])

  # Create translations for chapter
  chapter_data[:translations].each do |translation|
    chapter.translations.create!(translation)
  end

  # Set slug based on English name
  english_name = chapter.translations.find_by(locale: 'en').name
  chapter.update!(slug: english_name.parameterize)

  # Create topics for this chapter if there are any
  if chapter_data[:topics].present?
    chapter_data[:topics].each do |topic_data|
      topic = Topic.create!(
        position: topic_data[:position],
        chapter: chapter,
        slug: topic_data[:translations].find { |t| t[:locale] == 'en' }[:name].parameterize
      )

      # Create translations for topic
      topic_data[:translations].each do |translation|
        topic.translations.create!(translation)
      end

      # Add rich text content if provided
      if topic_data[:content].present?
        topic_data[:content].each do |locale, content|
          topic_translation = topic.translations.find_by(locale: locale)
          ActionText::RichText.create!(
            record: topic_translation,
            name: "content",
            body: content
          )
        end
      end

      puts "  Created topic: #{topic.translations.find_by(locale: 'en').name}"
    end
  end

  puts "Created chapter: #{chapter.translations.find_by(locale: 'en').name} (Position: #{chapter.position})"
end

puts "\nSuccessfully created:"
puts "- #{Chapter.count} chapters"
puts "- #{ChapterTranslation.count} chapter translations"
puts "- #{Topic.count} topics"
puts "- #{TopicTranslation.count} topic translations"
puts "- #{ActionText::RichText.count} rich text contents"
