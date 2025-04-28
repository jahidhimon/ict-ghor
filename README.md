# 🏠 ICT Ghor - Your Digital Learning Sanctuary

**Demystifying ICT Education for Bangladeshi Students**

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Ruby Version](https://img.shields.io/badge/Ruby-3.3.8-red.svg)](https://www.ruby-lang.org)
[![Rails Version](https://img.shields.io/badge/Rails-8.0.2-red.svg)](https://rubyonrails.org)

<div align="center">
  <img src="public/logo.png" alt="ICT Ghor Logo" width="200">
  <p><em>"Where Technology Meets Understanding"</em></p>
</div>

## 🌱 Project Philosophy

Born from the need to transform ICT education in Bangladesh, ICT Ghor aims to:
- 🚫 Eliminate fear of technical jargon
- 💡 Make abstract concepts tangible
- 📱 Provide accessible learning resources
- 🎯 Align with NCTB curriculum needs

## 🚀 Core Features

### 📘 Interactive Learning Path
- Immediate concept reinforcement quizzes
- Chapter completion certificates
- Bite-sized lesson chunks (10-15 minutes)
- Visual progress tracking dashboard

### 🧪 Instant Knowledge Validation
- Topic-wise micro-tests (3-5 questions)
- Adaptive difficulty adjustment
- Mistake analysis with solution breakdowns
- Time-bound exam simulation mode

### 📈 Smart Analytics
- Performance heatmaps
- Peer comparison metrics
- Weakness identification system
- Custom revision reminders

### 🆓 Free Resources
- Downloadable chapter summaries
- Previous exam solutions bank
- Mobile-friendly PDF notes
- Community Q&A forum

## 🛠 Development Setup

### Prerequisites
- Ruby 3.3.8
- Rails 8.0.2
- PostgreSQL 14+
- Node.js 18.12+
- Yarn 1.22+

### Installation Guide

1. **Clone repository**
    ```bash
    git clone https://github.com/your-username/ict-ghor.git
    cd ict-ghor
    ```

2. **Install dependencies**
    ```bash
    bundle install
    yarn install
    ```

3. **Configure database**
    ```bash
    cp config/database.yml.example config/database.yml
    # Update with your credentials in config/database.yml
    ```

4. **Setup database**
    ```bash
    rails db:create
    rails db:migrate
    rails db:seed  # For sample data
    ```

5. **Start development server**
    ```bash
    bin/dev
    ```

Visit [http://localhost:3000](http://localhost:3000) in your browser
