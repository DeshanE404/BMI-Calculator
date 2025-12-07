import 'package:flutter/material.dart';

const kBottomContainerHeight = 80.0;

// Modern health-focused color scheme
const kActiveCardColour = Color(0xFF2E7D8F);      // Teal blue - active state
const kInactiveCardColour = Color(0xFF1A4A56);    // Darker teal - inactive state
const kBottomContainerColour = Color(0xFF4CAF50); // Healthy green - action button

// Text colors
const lLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFFB0BEC5),  // Light blue-grey for labels
);

const kNumberTextStyle = TextStyle(
  color: Color(0xFFE3F2FD),  // Light blue for numbers
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF1565C0),  // Deep blue for titles
);

const kResultTextStyle = TextStyle(
  color: Color(0xFF66BB6A),  // Soft green for positive results
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kBmiStyle = TextStyle(
  color: Color(0xFFE3F2FD),  // Light blue for BMI value
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kBodyTextStyle = TextStyle(
  color: Color(0xFFCFD8DC),  // Light grey-blue for body text
  fontSize: 18.0,
  fontWeight: FontWeight.normal,
);