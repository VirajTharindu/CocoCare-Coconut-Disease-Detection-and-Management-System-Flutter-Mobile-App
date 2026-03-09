<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart" />
  <img src="https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black" alt="Firebase" />
  <img src="https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20-004D40?style=for-the-badge&logo=android&logoColor=white" alt="Platform" />
  <img src="https://img.shields.io/badge/License-All%20Rights%20Reserved-E11D48?style=for-the-badge&logo=security&logoColor=white" alt="License" />
</p>

# 🧩 CocoCare

> **Ensuring Healthy Coconut Farming Through Technology**

CocoCare is a **Mobile Application** designed to **help coconut farmers and agricultural officers track, report, and manage coconut diseases effectively**.

The system focuses on **real-time disease management** and aims to **provide actionable insights, prevention methods, and essential tools to combat coconut diseases efficiently**.

---

# ✨ Key Features

| Feature | Description |
|---|---|
| Disease Tracking & Reporting | Submit and monitor disease outbreaks with real-time location mapping. |
| Analytics & Insights | Visualize disease trends and spread using interactive charts and graphs. |
| Comprehensive Knowledge Base | Access detailed information on coconut diseases, symptoms, and risks. |
| Prevention & Treatment | Get expert-recommended tools and chemical solutions for disease management. |
| Role-Based Authentication | Secure access for Farmers, Agricultural Officers, and Administrators via Firebase. |
| Personalized User Profiles | Manage stakeholder profiles for tailored agricultural support. |

---

# 🎬 Project Demonstration

The following resources demonstrate the system's behavior:

- 📹 [Product walkthrough video](#-product-video)
- 📸 [Screenshots of key features](#-screenshots)
- 📄 [System architecture overview](docs/architecture.md)
- 🧠 [Engineering lessons](#-engineering-lessons)
- 🔧 [Design decisions](#-key-design-decisions)
- 🗺️ [Roadmap](#-roadmap)
- 🚀 [Future improvements](#-future-improvements)
- 📄 [Documentation](docs/)
- 📝 [License](#-license)
- 📩 [Contact](#-contact)

If deeper technical access is required, it can be provided upon request.

---

# 📹 Product Video

> **[DEMONSTRATION PENDING]**

*A comprehensive video or GIF of the system's walkthrough demonstrating the Clean Architecture, reporting engine, and core workflows is available upon request for technical review.*

---

# 📸 Screenshots

| Onboarding | Register | E-mail Verification |
|---------------|---------------|---------------|
| ![](Screenshots/Onboarding.png) | ![](Screenshots/Register.png) | ![](Screenshots/E-mail%20Verification%20.png) |

| Login | E-mail Verification Successfull | Home |
|---------------|---------------|---------------|
| ![](Screenshots/Login.png) | ![](Screenshots/E-mail%20Verification%20successfull.png) | ![](Screenshots/Home.png) |

| Disease List | Disease | Disease Tracking |
|---------------|---------------|---------------|
| ![](Screenshots/Disease%20List.png) | ![](Screenshots/Disease.png) | ![](Screenshots/Disease%20Tracking.png) |

| Disease Analysis | User Profile | Disease Tracking Report |
|---------------|---------------|---------------|
| ![](Screenshots/Disease%20Detection%20Analysis.png) | ![](Screenshots/User%20Profile.png) | ![](Screenshots/Disease%20Tracking%20Report.png) |

---

# ⚙️ Architecture Overview

CocoCare is implemented using **MVVM (Model-View-ViewModel)** with a **Layered Folder Structure** inspired by Clean Architecture principles.

### Architecture Highlights
- **Layered Separation**: Clear division between `core`, `data`, and `features`.
- **Feature-First Approach**: Logic and UI grouped by functional modules.
- **Repository Pattern**: Centralized data access logic for Firebase and local storage.
- **GetX State Management**: Reactive UI updates and dependency injection.

---

# 🧠 Engineering Lessons

During development of CocoCare the focus areas included:

- Implementing **MVVM with Layered Architecture** to ensure modularity and high maintainability.
- Mastering **GetX** for high-performance state management without boilerplate.
- Designing **Real-time Data Synchronization** strategies using Firebase and local caching.
- Developing **Dynamic Data Visualization** for agricultural analytics.
- Implementing **Role-Based UI/UX** to serve multiple user types within a single codebase.

---

# 🔧 Key Design Decisions

1. **Adopting Clean Architecture**
   To separate business logic from UI, making the app more maintainable and easier to scale.

2. **Selecting GetX for State Management**
   Chosen for its powerful combined solution for state, DI, and routing, reducing overall development time.

3. **Firebase-First Backend Strategy**
   Utilized for its rapid development capabilities and robust real-time synchronization features.

4. **Multi-Role User Architecture**
   Designed to provide distinct user experiences for farmers and experts while maintaining a single backend source of truth.

5. **Local-First Caching Policy**
   Implemented using GetStorage to ensure UI responsiveness even in areas with limited connectivity (common in farming contexts).

---

# 🗺️ Project Roadmap (Introductory Features)

- ✅ **Done**: Secure Authentication, Profile Management, Disease Library. 
- 🚧 **In Progress**: Real-time Data Sync, Basic Analytics & Reporting, Multi-role Navigation, Disease Detection, Disease Tracking & Reporting.
- ⏳ **Not Started Yet**: In-app Notifications, Advanced User History Analytics, Prevention & Treatment.

---

# 🚀 Future Improvements

- 🏗️ **AI-Powered Disease Detection** — Mobile leaf recognition using TensorFlow Lite.
- 🏗️ **Community Collaboration Hub** — A platform for farmers and experts to interact.
- 🏗️ **IoT Smart Farming Integration** — Real-time soil and weather sensor connectivity.
- 🏗️ **Full Multilingual Support** — Enterprise-grade localization for local languages.

---

## 📄 Documentations

Additional documentation is available in the `docs/` folder:

| File | Description |
|---|---|
| ["Architecture Overview"](docs/architecture.md) | Deep dive into layers and tech stack. |
| ["Core Features"](docs/features.md) | Detailed walkthrough of application functionality. |

---

# 📝 License

This repository is published for **portfolio and educational review purposes**.

The source code may not be accessed, copied, modified, distributed, or used without explicit permission from the author.

© 2024 Viraj Tharindu — All Rights Reserved.

---

# 📩 Contact

If you are reviewing this project as part of a hiring process or are interested in the technical approach behind it, feel free to reach out.

I would be happy to discuss the architecture, design decisions, or provide a private walkthrough of the project.

**Opportunities for collaboration or professional roles are always welcome.**

📧 Email: virajtharindu1997@gmail.com  
💼 LinkedIn: [viraj-tharindu](https://www.linkedin.com/in/viraj-tharindu/)  
🌐 Portfolio: [Visit my portfolio](https://viraj-tharindu.github.io/portfolio/)  
🐙 GitHub: [VirajTharindu](https://github.com/VirajTharindu)  

---

<p align="center">
  <em>CocoCare - Small steps to a healthier coconut plantation.</em>
</p>
