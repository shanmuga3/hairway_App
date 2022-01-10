
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_hi.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations returned
/// by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('hi')
  ];

  /// Do sign up
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get lblSignIn;

  /// Email
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get lblEmail;

  /// password
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get lblPassword;

  /// remember me
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get lblRememberMe;

  /// forgot password
  ///
  /// In en, this message translates to:
  /// **'Forgot password'**
  String get lblForgotPassword;

  /// sign in
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get btnSignIn;

  /// sign up
  ///
  /// In en, this message translates to:
  /// **'SIGN UP'**
  String get btnSignUp;

  /// if you have no an account
  ///
  /// In en, this message translates to:
  /// **'if you have no an account? '**
  String get txt_if_you_have_no_account;

  /// Beautyon Expert App
  ///
  /// In en, this message translates to:
  /// **'Beautyon Expert App'**
  String get txt_beautiyon_expert_app;

  /// demo@gmail.com
  ///
  /// In en, this message translates to:
  /// **'demo@gmail.com'**
  String get hnt_email;

  /// demo1234
  ///
  /// In en, this message translates to:
  /// **'demo1234'**
  String get hnt_password;

  /// Back
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get lbl_back;

  /// sign up
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get lbl_sign_up;

  /// Confirm Password
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get lbl_confirm_password;

  /// Employee_ID
  ///
  /// In en, this message translates to:
  /// **'Employee ID'**
  String get lbl_employee_id;

  /// I accept the
  ///
  /// In en, this message translates to:
  /// **'I accept the '**
  String get txt_i_accept_the;

  /// Privacy and Policy
  ///
  /// In en, this message translates to:
  /// **'privacy and policy'**
  String get txt_privacy_and_policy;

  /// Next
  ///
  /// In en, this message translates to:
  /// **'NEXT'**
  String get btn_next;

  /// Already have an account
  ///
  /// In en, this message translates to:
  /// **'Already have an account? '**
  String get txt_already_have_an_account;

  /// Please enter Email
  ///
  /// In en, this message translates to:
  /// **'Please enter Email'**
  String get txt_please_enter_email;

  /// password should be of minimun 2 characters
  ///
  /// In en, this message translates to:
  /// **'Password should be of minimun 2 characters'**
  String get txt_password_should_be_of_minimum_2_characters;

  /// password do not match
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get txt_password_do_not_match;

  /// Please accept privacy and policy to complete your registration
  ///
  /// In en, this message translates to:
  /// **'Please accept privacy and policy to complete your registration'**
  String get txt_please_accept_privacy_and_policy;

  /// Please enter valid email
  ///
  /// In en, this message translates to:
  /// **'Please enter valid email'**
  String get txt_please_enter_valid_email;

  /// General Information
  ///
  /// In en, this message translates to:
  /// **'General Information'**
  String get lbl_generall_information;

  /// Parlour Name
  ///
  /// In en, this message translates to:
  /// **'Parlour Name'**
  String get lbl_parlour_name;

  /// Enter Employee ID
  ///
  /// In en, this message translates to:
  /// **'Enter Employee ID'**
  String get hnt_employ_id;

  /// Beauty Life Parlour
  ///
  /// In en, this message translates to:
  /// **'Beauty Life Parlour'**
  String get hnt_parlour_name;

  /// Owner Name
  ///
  /// In en, this message translates to:
  /// **'Owner Name'**
  String get lbl_owner_name;

  /// Jesika Merry
  ///
  /// In en, this message translates to:
  /// **'Jesika Merry'**
  String get hnt_owner_name;

  /// Phone Number
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get lbl_phone_number;

  /// 9898989898
  ///
  /// In en, this message translates to:
  /// **'9898989898'**
  String get hnt_phone_number;

  /// Address
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get lbl_address;

  /// 58 Street -al dulha london -USA
  ///
  /// In en, this message translates to:
  /// **'58 Street -al dulha london -USA'**
  String get hnt_address;

  /// Saloon Type
  ///
  /// In en, this message translates to:
  /// **'Saloon Type'**
  String get lbl_saloon_type;

  /// Male
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get lbl_male;

  /// Female
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get lbl_female;

  /// unisex
  ///
  /// In en, this message translates to:
  /// **'unisex'**
  String get lbl_unisex;

  /// Description
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get lbl_description;

  /// this is a description
  ///
  /// In en, this message translates to:
  /// **'This is a description'**
  String get hnt_description;

  /// Upload Photo
  ///
  /// In en, this message translates to:
  /// **'Upload Photo'**
  String get lbl_upload_image;

  /// CREATE account
  ///
  /// In en, this message translates to:
  /// **'CREATE ACCOUNT'**
  String get btn_create_account;

  /// Actions
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get lbl_action;

  /// Take picture
  ///
  /// In en, this message translates to:
  /// **'Take picture'**
  String get lbl_take_picture;

  /// Choose from library
  ///
  /// In en, this message translates to:
  /// **'Choose from library'**
  String get lbl_choose_from_library;

  /// Cancel
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get lbl_cancel;

  /// Please enter Parlour Name
  ///
  /// In en, this message translates to:
  /// **'Please enter Parlour Name'**
  String get txt_please_enter_parlour_name;

  /// Please enter Phone Number
  ///
  /// In en, this message translates to:
  /// **'Please enter Phone Number'**
  String get txt_please_enter_phone_number;

  /// Please enter valid Phone Number
  ///
  /// In en, this message translates to:
  /// **'Please enter valid Phone Number'**
  String get txt_please_enter_valid_phone_number;

  /// Please enter Owner name
  ///
  /// In en, this message translates to:
  /// **'Please enter Owner Name'**
  String get txt_please_enter_owner_name;

  /// Please enter Address
  ///
  /// In en, this message translates to:
  /// **'Please enter Address'**
  String get txt_please_enter_address;

  /// Please enter Employee ID
  ///
  /// In en, this message translates to:
  /// **'Please enter Employee ID'**
  String get txt_please_enter_employeID;

  /// Please enter description
  ///
  /// In en, this message translates to:
  /// **'Please enter Description'**
  String get txt_please_enter_description;

  /// Please select Image
  ///
  /// In en, this message translates to:
  /// **'Please select Image'**
  String get txt_please_select_image;

  /// UPDATE PROFILE
  ///
  /// In en, this message translates to:
  /// **'UPDATE PROFILE'**
  String get btn_update_profile;

  /// about
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get lbl_about;

  /// Opening Hours
  ///
  /// In en, this message translates to:
  /// **'Opening Hours'**
  String get lbl_opening_hours;

  /// Profile will be shown here
  ///
  /// In en, this message translates to:
  /// **'Profile will be shown here'**
  String get txt_profile_will_be_shown_here;

  /// User Request
  ///
  /// In en, this message translates to:
  /// **'User Request'**
  String get lbl_user_request;

  /// Amount
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get lbl_amount;

  /// user Request will be shown here
  ///
  /// In en, this message translates to:
  /// **'User Request will be shown here'**
  String get txt_user_request_will_be_shown_here;

  /// complete Request
  ///
  /// In en, this message translates to:
  /// **'Complete Request'**
  String get lbl_complete_request;

  /// are you sure you' want to complete this Request
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to Complete this Request ?'**
  String get txt_confirmation_message_for_complete_request;

  /// no
  ///
  /// In en, this message translates to:
  /// **'NO'**
  String get lbl_no;

  /// yes
  ///
  /// In en, this message translates to:
  /// **'YES'**
  String get lbl_yes;

  /// Cancel Request
  ///
  /// In en, this message translates to:
  /// **'Cancel Request'**
  String get lbl_cancel_request;

  /// Are you sure you want to Cancel this Request ?
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to Cancel this Request ?'**
  String get txt_confirmation_message_for_cancel_request;

  /// Appointment History
  ///
  /// In en, this message translates to:
  /// **'Appointment History'**
  String get lbl_appointment_history;

  /// Appointment History will be shown here
  ///
  /// In en, this message translates to:
  /// **'Appointment History will be shown here'**
  String get txt_appointment_history_will_be_shown_here;

  /// WEEKLY EARN
  ///
  /// In en, this message translates to:
  /// **'WEEKLY EARN'**
  String get lbl_weekly_earn;

  /// Weekly earning will be shown here
  ///
  /// In en, this message translates to:
  /// **'Weekly earning will be shown here'**
  String get txt_weekly_earn_will_shown_here;

  /// Total
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get lbl_total;

  /// Booking
  ///
  /// In en, this message translates to:
  /// **'Booking'**
  String get lbl_booking;

  /// Earning
  ///
  /// In en, this message translates to:
  /// **'Earning'**
  String get lbl_earning;

  /// Services
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get lbl_services;

  /// Pending
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get lbl_pending;

  /// completed
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get lbl_completed;

  /// complete Our Goals
  ///
  /// In en, this message translates to:
  /// **'Complete Our Goals'**
  String get lbl_complete_our_goals;

  /// Experts
  ///
  /// In en, this message translates to:
  /// **'Experts'**
  String get lbl_experts;

  /// delete lebal for list screen
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get lbl_delete;

  /// Edit lebal for list screen
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get lbl_edit;

  /// Expert List will be shown here
  ///
  /// In en, this message translates to:
  /// **'Expert List will be shown here'**
  String get txt_expert_will_shown_here;

  /// ADD NEW BEAUTY EXPERT +
  ///
  /// In en, this message translates to:
  /// **'ADD NEW BEAUTY EXPERT + '**
  String get btn_add_new_expert;

  /// Delete Expert
  ///
  /// In en, this message translates to:
  /// **'Delete Expert'**
  String get lbl_delete_expert;

  /// Are you sure you want to delete this Expert ?
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this Expert ?'**
  String get txt_confirmation_message_for_delete_expert;

  /// Coupons
  ///
  /// In en, this message translates to:
  /// **'Coupons'**
  String get lbl_coupons;

  /// Coupon List will be shown here
  ///
  /// In en, this message translates to:
  /// **'Coupon List will be shown here'**
  String get txt_coupon_list_will_shown_here;

  /// ADD NEW COUPON +
  ///
  /// In en, this message translates to:
  /// **'ADD NEW COUPON +'**
  String get btn_add_new_coupon;

  /// delete Coupon
  ///
  /// In en, this message translates to:
  /// **'Delete Coupon'**
  String get lbl_delete_coupon;

  /// Are you sure you want to delete this Coupon ?
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this Coupon ?'**
  String get txt_confirmation_message_for_delete_Coupon;

  /// Add Service Variant
  ///
  /// In en, this message translates to:
  /// **'Add Service Variant'**
  String get lbl_add_service_variant;

  /// Service List will be shown here
  ///
  /// In en, this message translates to:
  /// **'Service List will be shown here'**
  String get txt_service_will_shown_here;

  /// ADD NEW SERVICE +
  ///
  /// In en, this message translates to:
  /// **'ADD NEW SERVICE +'**
  String get btn_add_new_service;

  /// Delete Service
  ///
  /// In en, this message translates to:
  /// **'Delete Service'**
  String get lbl_delete_service;

  /// Are you sure you want to delete this Service ?
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this Service ?'**
  String get txt_confirmation_message_for_delete_service;

  /// Delete Service Variant
  ///
  /// In en, this message translates to:
  /// **'Delete Service Variant'**
  String get lbl_delete_service_variant;

  /// txt_confirmation_message_for_delete_service_variant
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this Service Variant ?'**
  String get txt_confirmation_message_for_delete_service_variant;

  /// min
  ///
  /// In en, this message translates to:
  /// **'min'**
  String get lbl_min;

  /// SAVE SERVICE +
  ///
  /// In en, this message translates to:
  /// **'SAVE SERVICE +'**
  String get btn_save_service;

  /// Edit Service
  ///
  /// In en, this message translates to:
  /// **'Edit Service'**
  String get lbl_edit_service;

  /// add Service
  ///
  /// In en, this message translates to:
  /// **'Add Service'**
  String get lbl_Add_service;

  /// Service Name
  ///
  /// In en, this message translates to:
  /// **'Service Name'**
  String get lbl_service_name;

  /// Spa, Facial, Makeup
  ///
  /// In en, this message translates to:
  /// **'Spa, Facial, Makeup'**
  String get hnt_service_name;

  /// Tap to add image
  ///
  /// In en, this message translates to:
  /// **'Tap to add image'**
  String get lbl_tap_to_add_image;

  /// Please enter name
  ///
  /// In en, this message translates to:
  /// **'Please enter name'**
  String get txt_please_enter_name;

  /// SAVE SERVICE VERIANT +
  ///
  /// In en, this message translates to:
  /// **'SAVE SERVICE VERIANT +'**
  String get btn_save_service_variant;

  /// Variant
  ///
  /// In en, this message translates to:
  /// **'Variant'**
  String get lbl_variant;

  /// Price
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get lbl_price;

  /// 100
  ///
  /// In en, this message translates to:
  /// **'100'**
  String get hnt_price;

  /// Discount
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get lbl_discount;

  /// Time
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get lbl_time;

  /// Enter Minute
  ///
  /// In en, this message translates to:
  /// **'Enter Minute'**
  String get hnt_time;

  /// Enter Discount
  ///
  /// In en, this message translates to:
  /// **'Enter Discount'**
  String get hnt_enter_discount;

  /// Please enter price
  ///
  /// In en, this message translates to:
  /// **'Please enter price'**
  String get txt_please_enter_price;

  /// Please enter time
  ///
  /// In en, this message translates to:
  /// **'Please enter time'**
  String get txt_please_enter_time;

  /// SAVE  EXPERT +
  ///
  /// In en, this message translates to:
  /// **'SAVE  EXPERT + '**
  String get btn_save_expert;

  /// Edit Beauty Expert
  ///
  /// In en, this message translates to:
  /// **'Edit Beauty Expert'**
  String get lbl_edit_expert;

  /// Add Beauty Expert
  ///
  /// In en, this message translates to:
  /// **'Add Beauty Expert'**
  String get lbl_add_Expert;

  /// Expert Name
  ///
  /// In en, this message translates to:
  /// **'Expert Name'**
  String get lbl_expert_name;

  /// Jesika Merry
  ///
  /// In en, this message translates to:
  /// **'Jesika Merry'**
  String get hnt_expert_name;

  /// Something went Wrong!Try again later
  ///
  /// In en, this message translates to:
  /// **'Something went Wrong!Try again later'**
  String get txt_something_went_wrong;

  /// SAVE COUPON +
  ///
  /// In en, this message translates to:
  /// **'SAVE COUPON +'**
  String get btn_save_coupon;

  /// Menu
  ///
  /// In en, this message translates to:
  /// **'Add Time'**
  String get lbl_Add_time;

  /// Menu
  ///
  /// In en, this message translates to:
  /// **'Add Menu'**
  String get lbl_Add_menu;

  /// Add Coupon
  ///
  /// In en, this message translates to:
  /// **'Add Coupon'**
  String get lbl_Add_coupon;

  /// Coupon Name
  ///
  /// In en, this message translates to:
  /// **'Coupon Name'**
  String get lbl_coupon_name;

  /// Beauty coupon
  ///
  /// In en, this message translates to:
  /// **'Beauty coupon'**
  String get hnt_coupon_name;

  /// Coupon Number
  ///
  /// In en, this message translates to:
  /// **'Coupon Number'**
  String get lbl_coupon_number;

  /// Beauty89
  ///
  /// In en, this message translates to:
  /// **'Beauty89'**
  String get hnt_coupon_number;

  /// coupon description
  ///
  /// In en, this message translates to:
  /// **'Coupon Desciption'**
  String get lbl_coupon_description;

  /// Select Coupon Type
  ///
  /// In en, this message translates to:
  /// **'Select Coupon Type'**
  String get lbl_select_coupon_type;

  /// Percentage
  ///
  /// In en, this message translates to:
  /// **'Percentage'**
  String get lbl_percentage;

  /// Select Coupon Type
  ///
  /// In en, this message translates to:
  /// **'Select Coupon Type'**
  String get hnt_coupon_type;

  /// Offer price/Percentage
  ///
  /// In en, this message translates to:
  /// **'Offer Price/Percentage'**
  String get lbl_offer_price;

  /// 100
  ///
  /// In en, this message translates to:
  /// **'100'**
  String get hnt_offer_price;

  /// Min Service Amount
  ///
  /// In en, this message translates to:
  /// **'Min Service Amount'**
  String get lbl_min_service_amount;

  /// Min Service Amount
  ///
  /// In en, this message translates to:
  /// **'250'**
  String get hnt_min_service_amount;

  /// Select Uses-restriction
  ///
  /// In en, this message translates to:
  /// **'Select Uses-restriction'**
  String get lbl_select_usesRestriction;

  /// Uses-Restriction
  ///
  /// In en, this message translates to:
  /// **'Uses-Restriction'**
  String get hnt_usesRestriction;

  /// Select Start Date
  ///
  /// In en, this message translates to:
  /// **'Select Start Date'**
  String get lbl_select_start_date;

  /// Start Date
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get hnt_select_start_date;

  /// Select End Date
  ///
  /// In en, this message translates to:
  /// **'Select End Date'**
  String get lbl_select__end_date;

  /// End Date
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get hnt_select_end_date;

  /// Please enter offer price
  ///
  /// In en, this message translates to:
  /// **'Please enter offer price'**
  String get txt_please_enter_offer_price;

  /// Please enter min service price
  ///
  /// In en, this message translates to:
  /// **'Please enter min service price'**
  String get txt_pleae_enter_min_service_price;

  /// Please enter coupon number
  ///
  /// In en, this message translates to:
  /// **'Please enter coupon number'**
  String get txt_please_enter_coupon_number;

  /// Please enter user restriction
  ///
  /// In en, this message translates to:
  /// **'Please enter user restriction'**
  String get txt_please_enter_usesRestriction;

  /// Please select coupon type
  ///
  /// In en, this message translates to:
  /// **'Please select coupon type'**
  String get txt_please_select_coupon_type;

  /// Please select start date
  ///
  /// In en, this message translates to:
  /// **'Please select start date'**
  String get txt_please_select_start_date;

  /// Please select end date
  ///
  /// In en, this message translates to:
  /// **'Please select end date'**
  String get txt_please_select_end_date;

  /// Gallery
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get lbl_gallery;

  /// Gallery List will be shown here
  ///
  /// In en, this message translates to:
  /// **'Gallery List will be shown here'**
  String get txt_gallery_will_shown_here;

  /// ADD NEW GALLERY +
  ///
  /// In en, this message translates to:
  /// **'ADD NEW GALLERY +'**
  String get btn_add_new_gallery;

  /// Delete Gallery
  ///
  /// In en, this message translates to:
  /// **'Delete Gallery'**
  String get lbl_delete_gallery;

  /// Are you sure you want to delete this Gallery ?
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this Gallery ?'**
  String get txt_confirmation_message_for_delete_gallery;

  /// Products
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get lbl_products;

  /// Product List will be shown here
  ///
  /// In en, this message translates to:
  /// **'Product List will be shown here'**
  String get txt_products_will_shown_here;

  /// ADD NEW PRODUCT+
  ///
  /// In en, this message translates to:
  /// **'ADD NEW PRODUCT+ '**
  String get btn_add_new_product;

  /// Delete Product
  ///
  /// In en, this message translates to:
  /// **'Delete Product'**
  String get lbl_delete_product;

  /// Are you sure you want to delete this Product ?
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this Product ?'**
  String get txt_confirmation_message_for_delete_product;

  /// SAVE GALLERY +
  ///
  /// In en, this message translates to:
  /// **'SAVE GALLERY +'**
  String get btn_save_gallery;

  /// Add Gallery
  ///
  /// In en, this message translates to:
  /// **'Add Gallery'**
  String get lbl_Add_gallery;

  /// SAVE  PRODUCT +
  ///
  /// In en, this message translates to:
  /// **'SAVE  PRODUCT + '**
  String get btn_save_product;

  /// Edit Product
  ///
  /// In en, this message translates to:
  /// **'Edit Product'**
  String get lbl_edit_product;

  /// Add Product
  ///
  /// In en, this message translates to:
  /// **'Add Product'**
  String get lbl_add_product;

  /// Product Name
  ///
  /// In en, this message translates to:
  /// **'Product Name'**
  String get lbl_product_name;

  /// shampoo
  ///
  /// In en, this message translates to:
  /// **'shampoo'**
  String get hnt_product_name;

  /// Quantity
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get lbl_quantity;

  /// 100L
  ///
  /// In en, this message translates to:
  /// **'100L'**
  String get hnt_quantity;

  /// Please enter quantity
  ///
  /// In en, this message translates to:
  /// **'Please enter quantity'**
  String get txt_please_enter_quantity;

  /// Beautyon
  ///
  /// In en, this message translates to:
  /// **'Beautyon'**
  String get lbl_beautyon;

  /// loading
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get lbl_loading;

  /// Orders
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get lbl_orders;

  /// Qty
  ///
  /// In en, this message translates to:
  /// **'Qty'**
  String get lbl_qty;

  /// Orders will be shown here
  ///
  /// In en, this message translates to:
  /// **'Orders will be shown here'**
  String get txt_orders_will_shown_here;

  /// Confirm Order
  ///
  /// In en, this message translates to:
  /// **'Confirm Order'**
  String get lbl_confirm_order;

  /// Are you sure you want to Confirm this Order ?
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to Confirm this Order ?'**
  String get txt_confirmation_message_for_confirm_order;

  /// SAVE SETTINGS
  ///
  /// In en, this message translates to:
  /// **'SAVE SETTINGS'**
  String get btn_save_setting;

  /// Settings
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get lbl_settings;

  /// Shop Open
  ///
  /// In en, this message translates to:
  /// **'Shop Open'**
  String get lbl_shop_open;

  /// Help & Support
  ///
  /// In en, this message translates to:
  /// **'Help & Support '**
  String get lbl_help_and_support;

  /// FAQ
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get lbl_faq;

  /// Faqs will be shown here
  ///
  /// In en, this message translates to:
  /// **'Faqs will be shown here'**
  String get txt_faq_will_shown_here;

  /// Change Password
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get lbl_change_password;

  /// Old password
  ///
  /// In en, this message translates to:
  /// **'Old Password'**
  String get lbl_old_password;

  /// New Password
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get lbl_new_password;

  /// CHANGE PASSWORD
  ///
  /// In en, this message translates to:
  /// **'CHANGE PASSWORD'**
  String get btn_change_password;

  /// password and confirm password do not match
  ///
  /// In en, this message translates to:
  /// **'password and confirm password do not match'**
  String get txt_password_and_confirm_password_do_not_match;

  /// Please enter old password
  ///
  /// In en, this message translates to:
  /// **'Please enter old password'**
  String get txt_please_enter_old_password;

  /// Please enter new password
  ///
  /// In en, this message translates to:
  /// **'Please enter new password'**
  String get txt_please_enter_new_password;

  /// My Wallet
  ///
  /// In en, this message translates to:
  /// **'My Wallet'**
  String get lbl_my_wallet;

  /// Total Earnings
  ///
  /// In en, this message translates to:
  /// **'Total Earnings'**
  String get lbl_total_earning;

  /// Paid to App
  ///
  /// In en, this message translates to:
  /// **'Paid to App'**
  String get lbl_paid_to_app;

  /// Payment Pending from App
  ///
  /// In en, this message translates to:
  /// **'Payment Pending from App'**
  String get lbl_payment_pending_from_app;

  /// Paid by App
  ///
  /// In en, this message translates to:
  /// **'Paid by App'**
  String get lbl_paid_by_app;

  /// Pending to give App
  ///
  /// In en, this message translates to:
  /// **'Pending to give App'**
  String get lbl_pending_to_give_app;

  /// MARK AS PAID
  ///
  /// In en, this message translates to:
  /// **'MARK AS PAID '**
  String get btn_mask_as_paid;

  /// Nothing yet to see here
  ///
  /// In en, this message translates to:
  /// **'Nothing yet to see here'**
  String get txt_nothing_yet_to_see_here;

  /// Confirm Dialog
  ///
  /// In en, this message translates to:
  /// **'Confirm Dialog'**
  String get lbl_confirm_dialog;

  /// Are you sure you want to paid this to admin
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to paid this to admin'**
  String get txt_confirmation_message_for_paid_to_admin;

  /// Notifications
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get lbl_notification;

  /// Notifications will be shown here
  ///
  /// In en, this message translates to:
  /// **'Notifications will be shown here'**
  String get txt_notification_will_shown_here;

  /// Accept
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get lbl_accept;

  /// OK
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get lbl_ok;

  /// Date & Time
  ///
  /// In en, this message translates to:
  /// **'Date & Time'**
  String get lbl_date_and_time;

  /// Date
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get lbl_date;

  /// Service
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get lbl_service;

  /// SubTotal
  ///
  /// In en, this message translates to:
  /// **'SubTotal'**
  String get lbl_subTotal;

  /// Discount by coupon
  ///
  /// In en, this message translates to:
  /// **'Discount by coupon'**
  String get lbl_discount_by_coupon;

  /// Service Summary
  ///
  /// In en, this message translates to:
  /// **'Service Summary'**
  String get lbl_service_summary;

  /// CONFIRM
  ///
  /// In en, this message translates to:
  /// **'CONFIRM'**
  String get btn_confirm;

  /// Confirm Service
  ///
  /// In en, this message translates to:
  /// **'Confirm Service'**
  String get lbl_confirm_service;

  /// Are you sure you want to Confirm this Service ?
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to Confirm this Service ?'**
  String get txt_confirmation_message_for_confirm_service;

  /// Update Profile
  ///
  /// In en, this message translates to:
  /// **'Update Profile'**
  String get lbl_update_profile;

  /// Easy to Find Customer
  ///
  /// In en, this message translates to:
  /// **'Easy to Find Customer'**
  String get txt_easy_to_find_customer;

  ///  Many desktop publishing packages and web page editors now use Lorem Ipsum as .
  ///
  /// In en, this message translates to:
  /// **'Many desktop publishing packages and web page editors now use Lorem Ipsum as .'**
  String get txt_easy_to_find_customer_detail_text;

  /// Branding For Your Parlour
  ///
  /// In en, this message translates to:
  /// **'Branding For Your Parlour'**
  String get txt_branding_for_your_parlour;

  /// There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words
  ///
  /// In en, this message translates to:
  /// **'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words'**
  String get txt_branding_for_your_parlour_detail_text;

  /// Get Customer Feedback
  ///
  /// In en, this message translates to:
  /// **'Get Customer Feedback'**
  String get txt_get_customer_feedback;

  /// to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.
  ///
  /// In en, this message translates to:
  /// **'to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'**
  String get txt_get_customer_feedback_detail_text;

  /// GET STARTED
  ///
  /// In en, this message translates to:
  /// **'GET STARTED'**
  String get btn_get_started;

  /// forgot password
  ///
  /// In en, this message translates to:
  /// **'Forgot Password'**
  String get lbl_forgot_password;

  /// SEND CODE
  ///
  /// In en, this message translates to:
  /// **'SEND CODE'**
  String get btn_send_code;

  /// SUBMIT
  ///
  /// In en, this message translates to:
  /// **'SUBMIT'**
  String get btn_submit;

  /// Verify Otp
  ///
  /// In en, this message translates to:
  /// **'Verify Otp'**
  String get lbl_verify_otp;

  /// Enter the Verification code from
  ///
  /// In en, this message translates to:
  /// **'Enter the Verification code from '**
  String get txt_enter_the_verification_code_from;

  /// the phone we just sent you
  ///
  /// In en, this message translates to:
  /// **'the phone we just sent you '**
  String get txt_the_phone_we_just_sent_you;

  /// Check your mail for opt
  ///
  /// In en, this message translates to:
  /// **'Check your mail for opt'**
  String get txt_check_your_mail_for_otp;

  /// Please enter Otp
  ///
  /// In en, this message translates to:
  /// **'Please enter Otp'**
  String get txt_please_enter_otp;

  /// Successfully add
  ///
  /// In en, this message translates to:
  /// **'Successfully add'**
  String get txt_successfully_add;

  /// your new expert
  ///
  /// In en, this message translates to:
  /// **'your new expert'**
  String get txt_your_new_expert;

  /// your new coupon
  ///
  /// In en, this message translates to:
  /// **'your new coupon'**
  String get txt_your_new_coupon;

  /// Successfully changed
  ///
  /// In en, this message translates to:
  /// **'Successfully changed your password'**
  String get txt_successfully_changed_your_password;

  /// your new product
  ///
  /// In en, this message translates to:
  /// **'your new product'**
  String get txt_your_new_product;

  /// your new service
  ///
  /// In en, this message translates to:
  /// **'your new service'**
  String get txt_your_new_service;

  /// Successfully save
  ///
  /// In en, this message translates to:
  /// **'Successfully save'**
  String get txt_successfully_save;

  /// your setting
  ///
  /// In en, this message translates to:
  /// **'your setting'**
  String get txt_your_setting;

  /// Successfully add your new coupon
  ///
  /// In en, this message translates to:
  /// **'Successfully add your new coupon'**
  String get txt_successfully_add_your_new_coupon;

  /// Successfully add your new expert
  ///
  /// In en, this message translates to:
  /// **'Successfully add your new expert'**
  String get txt_successfully_add_your_new_expert;

  /// Successfully add your new service
  ///
  /// In en, this message translates to:
  /// **'Successfully add your new service'**
  String get txt_successfully_add_your_new_service;

  /// Successfully save your setting
  ///
  /// In en, this message translates to:
  /// **'Successfully save your setting'**
  String get txt_successfully_save_your_setting;

  /// Successfully add your new product
  ///
  /// In en, this message translates to:
  /// **'Successfully add your new product'**
  String get txt_succesfully_add_your_new_product;

  /// Successfully changed your profile
  ///
  /// In en, this message translates to:
  /// **'Successfully changed your profile'**
  String get txt_successfully_changed_your_profile;

  /// Select Language
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get lbl_selet_language;

  /// Add Expert
  ///
  /// In en, this message translates to:
  /// **'Add Expert'**
  String get lbl_add_expert;

  /// Sign Out
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get lbl_sign_out;

  /// Are you sure you want to Sign Out?
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to Sign Out?'**
  String get txt_confirmation_message_for_sign_out;

  /// GoFresha
  ///
  /// In en, this message translates to:
  /// **'GoFresha'**
  String get lbl_gofresha;

  /// Total Admin Share sent by Vendor
  ///
  /// In en, this message translates to:
  /// **'Total Admin Share sent by Vendor'**
  String get txt_total_admin_share_sent_by_vendor;

  /// Total Admin Share pending at Vendor
  ///
  /// In en, this message translates to:
  /// **'Total Admin Share pending at Vendor'**
  String get txt_total_admin_share_pending_at_vendor;

  /// Total Vendor Share given by Admin
  ///
  /// In en, this message translates to:
  /// **'Total Vendor Share given by Admin'**
  String get txt_total_vendor_share_given_by_admin;

  /// Total Vendor Share pending at Admin
  ///
  /// In en, this message translates to:
  /// **'Total Vendor Share pending at Admin'**
  String get txt_total_vendor_share_pending_at_admin;

  /// Reviews
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get lbl_reviews;

  /// View All
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get lbl_view_all;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en', 'hi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
    case 'hi': return AppLocalizationsHi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
