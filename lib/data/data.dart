import 'package:hrm_web/models/applicant.dart';
import 'package:hrm_web/models/job.dart';
import 'package:hrm_web/models/leave_request.dart';

import '../models/performanceReview.dart';

List allEmployees = [
  {
    "id": 1,
    "firstName": "John",
    "lastName": "Doe",
    "email": "john.doe@example.com",
    "phoneNumber": "123-456-7890",
    "department": "Sales",
    "salary": 60000.0,
    "hireDate": "DateTime(2020, 5, 15)",
  },
  {
    "id": 2,
    "firstName": "Jane",
    "lastName": "Smith",
    "email": "jane.smith@example.com",
    "phoneNumber": "987-654-3210",
    "department": "Marketing",
    "salary": 55000.0,
    "hireDate": "DateTime(2019, 8, 20)",
  },
  {
    "id": 3,
    "firstName": "Bob",
    "lastName": "Johnson",
    "email": "bob.johnson@example.com",
    "phoneNumber": "555-123-4567",
    "department": "Engineering",
    "salary": 70000.0,
    "hireDate": "DateTime(2021, 3, 10)",
  },
  // Add more employees as needed
];

//List<Applicant> generateDummyApplicants() {
List<Applicant> allApplicants = [
  Applicant(
    id: 1,
    firstName: 'John',
    lastName: 'Doe',
    email: 'john.doe@example.com',
    phoneNumber: '123-456-7890',
    desiredPosition: 'Software Engineer',
    expectedSalary: 80000.0,
    applicationDate: DateTime(2023, 3, 15),
  ),
  Applicant(
    id: 2,
    firstName: 'Jane',
    lastName: 'Smith',
    email: 'jane.smith@example.com',
    phoneNumber: '987-654-3210',
    desiredPosition: 'UI Designer',
    expectedSalary: 65000.0,
    applicationDate: DateTime(2023, 3, 20),
  ),
  Applicant(
    id: 3,
    firstName: 'Mike',
    lastName: 'Johnson',
    email: 'mike.j@example.com',
    phoneNumber: '555-555-5555',
    desiredPosition: 'Project Manager',
    expectedSalary: 90000.0,
    applicationDate: DateTime(2023, 3, 10),
  ),
  Applicant(
    id: 4,
    firstName: 'Emily',
    lastName: 'Davis',
    email: 'emily.d@example.com',
    phoneNumber: '777-888-9999',
    desiredPosition: 'Marketing Specialist',
    expectedSalary: 60000.0,
    applicationDate: DateTime(2023, 3, 5),
  ),
  Applicant(
    id: 5,
    firstName: 'Daniel',
    lastName: 'Brown',
    email: 'daniel.b@example.com',
    phoneNumber: '444-333-2222',
    desiredPosition: 'Data Analyst',
    expectedSalary: 75000.0,
    applicationDate: DateTime(2023, 3, 12),
  ),
  Applicant(
    id: 6,
    firstName: 'Sarah',
    lastName: 'Wilson',
    email: 'sarah.w@example.com',
    phoneNumber: '111-222-3333',
    desiredPosition: 'Graphic Designer',
    expectedSalary: 62000.0,
    applicationDate: DateTime(2023, 3, 18),
  ),
  Applicant(
    id: 7,
    firstName: 'Alex',
    lastName: 'Martinez',
    email: 'alex.m@example.com',
    phoneNumber: '123-987-6543',
    desiredPosition: 'Product Manager',
    expectedSalary: 92000.0,
    applicationDate: DateTime(2023, 3, 25),
  ),
  Applicant(
    id: 8,
    firstName: 'Laura',
    lastName: 'Garcia',
    email: 'laura.g@example.com',
    phoneNumber: '555-777-8888',
    desiredPosition: 'HR Specialist',
    expectedSalary: 58000.0,
    applicationDate: DateTime(2023, 3, 8),
  ),
];

List<Job> allJobs = [
  Job(
    id: 1,
    title: 'Software Engineer',
    description: 'Develop and maintain software applications.',
    department: 'Engineering',
    salary: 90000.0,
    postedDate: DateTime(2023, 3, 1),
  ),
  Job(
    id: 2,
    title: 'UI Designer',
    description: 'Create user interfaces and design user experiences.',
    department: 'Design',
    salary: 75000.0,
    postedDate: DateTime(2023, 3, 5),
  ),
  Job(
    id: 3,
    title: 'Project Manager',
    description: 'Manage project teams and deliverables.',
    department: 'Management',
    salary: 100000.0,
    postedDate: DateTime(2023, 3, 10),
  ),
  Job(
    id: 4,
    title: 'Marketing Specialist',
    description: 'Promote products and services through marketing strategies.',
    department: 'Marketing',
    salary: 60000.0,
    postedDate: DateTime(2023, 3, 15),
  ),
  Job(
    id: 5,
    title: 'Data Analyst',
    description: 'Analyze and interpret data for business insights.',
    department: 'Analytics',
    salary: 80000.0,
    postedDate: DateTime(2023, 3, 20),
  ),
  Job(
    id: 6,
    title: 'Graphic Designer',
    description: 'Create visual content for various media.',
    department: 'Design',
    salary: 65000.0,
    postedDate: DateTime(2023, 3, 25),
  ),
  Job(
    id: 7,
    title: 'Product Manager',
    description: 'Oversee product development and strategy.',
    department: 'Management',
    salary: 110000.0,
    postedDate: DateTime(2023, 4, 1),
  ),
  Job(
    id: 8,
    title: 'HR Specialist',
    description: 'Handle human resources and employee relations.',
    department: 'Human Resources',
    salary: 55000.0,
    postedDate: DateTime(2023, 4, 5),
  ),
];

List<LeaveRequest> allRequests = [
  LeaveRequest(
    id: 1,
    employeeId: 1,
    startDate: DateTime(2023, 3, 5),
    endDate: DateTime(2023, 3, 7),
    reason: 'Vacation',
    approved: true,
  ),
  LeaveRequest(
    id: 2,
    employeeId: 2,
    startDate: DateTime(2023, 3, 10),
    endDate: DateTime(2023, 3, 12),
    reason: 'Family emergency',
    approved: true,
  ),
  LeaveRequest(
    id: 3,
    employeeId: 3,
    startDate: DateTime(2023, 3, 15),
    endDate: DateTime(2023, 3, 16),
    reason: 'Medical leave',
    approved: false,
  ),
  LeaveRequest(
    id: 4,
    employeeId: 4,
    startDate: DateTime(2023, 3, 20),
    endDate: DateTime(2023, 3, 21),
    reason: 'Vacation',
    approved: true,
  ),
  LeaveRequest(
    id: 5,
    employeeId: 5,
    startDate: DateTime(2023, 3, 25),
    endDate: DateTime(2023, 3, 26),
    reason: 'Sick leave',
    approved: true,
  ),
  LeaveRequest(
    id: 6,
    employeeId: 6,
    startDate: DateTime(2023, 4, 1),
    endDate: DateTime(2023, 4, 3),
    reason: 'Vacation',
    approved: false,
  ),
  LeaveRequest(
    id: 7,
    employeeId: 7,
    startDate: DateTime(2023, 4, 5),
    endDate: DateTime(2023, 4, 7),
    reason: 'Personal leave',
    approved: true,
  ),
  LeaveRequest(
    id: 8,
    employeeId: 8,
    startDate: DateTime(2023, 4, 10),
    endDate: DateTime(2023, 4, 12),
    reason: 'Vacation',
    approved: true,
  ),
];

List<PerformanceReview> allPerformanceReviews = [
  PerformanceReview(
    id: 1,
    employeeId: 1,
    reviewDate: DateTime(2023, 3, 10),
    feedback: 'Exceeded expectations in project delivery.',
    rating: 4.5,
  ),
  PerformanceReview(
    id: 2,
    employeeId: 2,
    reviewDate: DateTime(2023, 3, 12),
    feedback: 'Great teamwork and creative design work.',
    rating: 4.2,
  ),
  PerformanceReview(
    id: 3,
    employeeId: 3,
    reviewDate: DateTime(2023, 3, 15),
    feedback: 'Effective project management and leadership.',
    rating: 4.7,
  ),
  PerformanceReview(
    id: 4,
    employeeId: 4,
    reviewDate: DateTime(2023, 3, 18),
    feedback: 'Effective marketing strategies and results.',
    rating: 4.0,
  ),
  PerformanceReview(
    id: 5,
    employeeId: 5,
    reviewDate: DateTime(2023, 3, 20),
    feedback: 'Thorough data analysis and reporting.',
    rating: 4.3,
  ),
  PerformanceReview(
    id: 6,
    employeeId: 6,
    reviewDate: DateTime(2023, 3, 22),
    feedback: 'Creative graphic design work with great results.',
    rating: 4.4,
  ),
  PerformanceReview(
    id: 7,
    employeeId: 7,
    reviewDate: DateTime(2023, 3, 25),
    feedback: 'Effective product management and strategic thinking.',
    rating: 4.6,
  ),
  PerformanceReview(
    id: 8,
    employeeId: 8,
    reviewDate: DateTime(2023, 3, 28),
    feedback: 'HR management and employee relations are excellent.',
    rating: 4.8,
  ),
];
