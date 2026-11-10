# GUVI Task 19 - Robot Framework Login Automation

## Objective

Create a basic keyword-driven Robot Framework project to verify login and logout
functionality on the RobotSpareBin Industries training application.

Application: https://robotsparebinindustries.com/

## Technology

- Python
- Robot Framework
- SeleniumLibrary
- Selenium
- Chrome

## Project structure

```text
GUVI_Task19_RobotFramework/
├── resources/
│   ├── variables.robot
│   └── common_keywords.robot
├── tests/
│   └── login_logout.robot
├── reports/
│   └── .gitkeep
├── requirements.txt
├── .gitignore
└── README.md
```

## Setup on Windows / PyCharm

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
```

Install a current version of Google Chrome. Selenium Manager (included in
Selenium 4) normally resolves the matching ChromeDriver automatically.

## Test credentials

This project uses the public demo credentials configured for the
RobotSpareBin training application:

- Username: `maria`
- Password: `thames`

These are demo application credentials, not personal account credentials.

## Test scenario

1. Open the RobotSpareBin application in Chrome.
2. Wait for the username and password fields.
3. Enter valid demo credentials and submit the form.
4. Verify the authenticated landing page and logout control.
5. Log out and verify the login form is visible again.

## Run the test

From the project root:

```powershell
python -m robot --outputdir reports tests
```

The reports folder will contain:

- `report.html` - execution summary
- `log.html` - detailed keyword execution log
- `output.xml` - machine-readable results

## Framework design

- Test cases are written in Robot Framework keyword-driven syntax.
- Reusable browser and application actions are in
  `resources/common_keywords.robot`.
- URL, browser and demo credentials are declared in
  `resources/variables.robot`.
- SeleniumLibrary is used for browser automation.
- Robot Framework's BuiltIn library is available automatically.

## GitHub submission

Create a new **public** repository named `GUVI_Task19_RobotFramework`.
Do not commit virtual environments or personal credentials. Generated reports
are excluded from Git by default; keep them locally or upload them separately
if GUVI requests execution evidence.
