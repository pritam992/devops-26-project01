
#!/bin/bash

# Stop execution if any command fails
set -euxo pipefail

# Update system packages
dnf update -y

# Install Apache web server
dnf install -y httpd

# Start and enable Apache
systemctl enable httpd
systemctl start httpd

# Create Cloudmaster Academy website
cat <<'EOF' > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Cloudmaster Academy | Master the Cloud</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background: #080d24;
            color: white;
            overflow-x: hidden;
        }

        /* Navigation */

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 22px 8%;
            background: rgba(12, 20, 52, 0.95);
            border-bottom: 1px solid rgba(255,255,255,0.1);
        }

        .logo {
            font-size: 25px;
            font-weight: bold;
            color: #38d9ff;
        }

        .logo span {
            color: #a78bfa;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-left: 25px;
            font-size: 14px;
        }

        nav a:hover {
            color: #38d9ff;
        }

        /* Hero Section */

        .hero {
            min-height: 570px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 80px 20px;
            background:
                radial-gradient(circle at 20% 30%, #37216e 0%, transparent 35%),
                radial-gradient(circle at 80% 60%, #075985 0%, transparent 35%),
                linear-gradient(135deg, #080d24, #171044);
        }

        .hero-content {
            max-width: 850px;
        }

        .tag {
            display: inline-block;
            padding: 10px 22px;
            border: 1px solid #38d9ff;
            border-radius: 30px;
            color: #38d9ff;
            margin-bottom: 25px;
            background: rgba(56,217,255,0.08);
        }

        h1 {
            font-size: clamp(40px, 7vw, 70px);
            line-height: 1.15;
            margin-bottom: 25px;
        }

        h1 span {
            background: linear-gradient(90deg, #38d9ff, #a78bfa, #fb7185);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            font-size: 18px;
            color: #cbd5e1;
            line-height: 1.8;
            margin-bottom: 35px;
        }

        .btn {
            display: inline-block;
            padding: 15px 32px;
            background: linear-gradient(90deg, #2563eb, #9333ea);
            border-radius: 30px;
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s;
        }

        .btn:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(147,51,234,0.4);
        }

        /* Technology Section */

        .technologies {
            padding: 80px 8%;
            text-align: center;
        }

        .section-title {
            font-size: 38px;
            margin-bottom: 15px;
        }

        .section-title span {
            color: #38d9ff;
        }

        .subtitle {
            color: #94a3b8;
            margin-bottom: 50px;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(210px, 1fr));
            gap: 25px;
        }

        .card {
            padding: 35px 20px;
            background: linear-gradient(145deg, #182449, #10162f);
            border: 1px solid #29365e;
            border-radius: 18px;
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-10px);
            border-color: #38d9ff;
            box-shadow: 0 10px 30px rgba(56,217,255,0.12);
        }

        .icon {
            font-size: 45px;
            margin-bottom: 20px;
        }

        .card h3 {
            font-size: 21px;
            margin-bottom: 12px;
        }

        .card p {
            color: #aab6cf;
            font-size: 14px;
            line-height: 1.7;
        }

        /* About Section */

        .about {
            text-align: center;
            padding: 75px 10%;
            background: linear-gradient(120deg, #171044, #102a50);
        }

        .about p {
            color: #cbd5e1;
            line-height: 1.9;
            max-width: 750px;
            margin: 20px auto;
        }

        /* Deployment Status */

        .status {
            margin: 60px auto;
            max-width: 650px;
            padding: 30px;
            text-align: center;
            background: #122c29;
            border: 1px solid #22c55e;
            border-radius: 18px;
        }

        .status h2 {
            color: #4ade80;
            margin-bottom: 12px;
        }

        .status p {
            color: #d1fae5;
        }

        footer {
            text-align: center;
            padding: 30px;
            background: #050817;
            color: #94a3b8;
            font-size: 14px;
        }

        @media(max-width: 600px) {
            nav {
                flex-direction: column;
                gap: 18px;
            }

            nav a {
                margin: 0 8px;
            }

            .hero {
                min-height: 500px;
            }

            .section-title {
                font-size: 29px;
            }
        }
    </style>
</head>

<body>

    <!-- Navigation -->
    <nav>
        <div class="logo">☁ Cloudmaster <span>Academy</span></div>

        <div>
            <a href="#home">Home</a>
            <a href="#technologies">Technologies</a>
            <a href="#about">About</a>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero" id="home">
        <div class="hero-content">

            <div class="tag">🚀 Learn. Build. Deploy. Automate.</div>

            <h1>
                Welcome to <br>
                <span>Cloudmaster Academy</span>
            </h1>

            <p>
                Master Cloud Computing, DevOps and Automation.
                Build real-world projects, develop practical skills
                and accelerate your technology career.
            </p>

            <a href="#technologies" class="btn">
                Explore Technologies →
            </a>

        </div>
    </section>

    <!-- Technologies -->
    <section class="technologies" id="technologies">

        <h2 class="section-title">
            Master <span>Modern Technologies</span>
        </h2>

        <p class="subtitle">
            Learn the tools powering today's IT industry.
        </p>

        <div class="cards">

            <div class="card">
                <div class="icon">☁️</div>
                <h3>AWS Cloud</h3>
                <p>EC2, S3, VPC, IAM, EKS, RDS and CloudWatch.</p>
            </div>

            <div class="card">
                <div class="icon">🐳</div>
                <h3>Docker</h3>
                <p>Containerization, Dockerfiles, images and deployment.</p>
            </div>

            <div class="card">
                <div class="icon">☸️</div>
                <h3>Kubernetes</h3>
                <p>Pods, deployments, services, scaling and orchestration.</p>
            </div>

            <div class="card">
                <div class="icon">🔧</div>
                <h3>Terraform</h3>
                <p>Infrastructure as Code and automated cloud provisioning.</p>
            </div>

            <div class="card">
                <div class="icon">🔄</div>
                <h3>Jenkins CI/CD</h3>
                <p>Build, test and automate application deployments.</p>
            </div>

            <div class="card">
                <div class="icon">📊</div>
                <h3>Monitoring</h3>
                <p>Prometheus, Grafana, metrics and infrastructure monitoring.</p>
            </div>

        </div>
    </section>

    <!-- About -->
    <section class="about" id="about">

        <h2 class="section-title">
            Build Your Future with <span>Cloudmaster</span>
        </h2>

        <p>
            Cloudmaster Academy is focused on practical learning
            in Cloud Computing, DevOps, Linux and Automation.
            Our goal is to help learners understand industry tools
            through hands-on projects and real-world implementation.
        </p>

    </section>

    <!-- Deployment Status -->
    <div class="status">
        <h2>✓ Website Successfully Deployed!</h2>
        <p>Apache Web Server is running on AWS EC2.</p>
        <p>Infrastructure provisioned using Terraform.</p>
        <p>Powered by Cloudmaster Academy ☁️</p>
    </div>

    <!-- Footer -->
    <footer>
        © 2026 Cloudmaster Academy.
        Learn Cloud. Build Skills. Deploy Your Future.
    </footer>

</body>
</html>
EOF

# Set website permissions
chmod 644 /var/www/html/index.html

# Restart Apache
systemctl restart httpd

echo "Cloudmaster Academy website deployed successfully!"
