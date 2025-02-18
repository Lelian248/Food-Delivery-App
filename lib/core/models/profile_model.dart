import 'package:flutter/material.dart';

class ProfileModel {
  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final String location;
  final Image proImage;

  ProfileModel({
    required this.id,
    required this.proImage,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.location,
  });
}

List<ProfileModel> users = [
  ProfileModel(
    id: '1',
    name: 'John Doe',
    proImage: 'https://example.com/images/john.jpg',
    email: 'john.doe@example.com',
    phoneNumber: '+1 234 567 890',
    location: 'New York, USA',
  ),
  ProfileModel(
    id: '2',
    name: 'Jane Smith',
    proImage: 'https://example.com/images/jane.jpg',
    email: 'jane.smith@example.com',
    phoneNumber: '+1 345 678 901',
    location: 'Los Angeles, USA',
  ),
  ProfileModel(
    id: '3',
    name: 'Alice Johnson',
    proImage: 'https://example.com/images/alice.jpg',
    email: 'alice.johnson@example.com',
    phoneNumber: '+1 456 789 012',
    location: 'Chicago, USA',
  ),
];
