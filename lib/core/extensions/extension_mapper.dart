import 'package:academy/core/extensions/extensions.dart';
import 'package:academy/features/academy/domain/entities/event_enrolls/mufin_events.dart';
import 'package:academy/features/academy/domain/entities/user/mufin_user.dart';
import 'package:academy/features/auth/domain/entities/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../features/academy/domain/entities/utils/carousel_item.dart';

extension MufinUserExt on MufinUser {
  Map<String, dynamic> get toHashMap => {
        "userId": userId,
        "firstname": firstname,
        "lastname": lastname,
        "name": name,
        "description": description,
        "timestamp": timestamp,
        "phone": phone,
        "email": email,
        "emailType": emailType,
        "phoneType": phoneType,
        "alternateEmail": alternateEmail,
        "studentRelationShip": studentRelationShip,
        "receiveEmails": receiveEmails,
        "receiveSMS": receiveSMS,
        "address": address,
        "country": country,
        "city": city,
        "state": state,
        "extra": extra,
        "howDidYouFindUs": howDidYouFindUs,
        "lastUpdated": lastUpdated,
        "documentId": documentId,
        "preferredDays": preferredDays,
        "preferredTimes": preferredTimes
      };
}

extension QuerySnapExt on QuerySnapshot {
  List<QueryDocumentSnapshot<Object?>> get snaps => docs;

  List<Map<String, dynamic>> get toMapList =>
      snaps.map((e) => e.data() as Map<String, dynamic>).toList();

  
}

extension DocumentSnapExt on DocumentSnapshot {
  Map<String, dynamic> get snaps => data() as Map<String, dynamic>;



  MufinEvents get toMufinEvents => MufinEvents(
      mufinEventId: snaps['mufinEventId'],
      imageUrl: snaps['imageUrl'],
      description: snaps['description'],
      btnText: snaps['btnText'],
      title: snaps['title'],
      eventDate: snaps['eventDate'],
      sortOrder: snaps['sortOrder'],
      cKey: snaps['cKey'],
      timestamp: snaps['timestamp'],
      lastUpdated: snaps['lastUpdated']);

  CarouselItem get toCarouselItem => CarouselItem(
      itemIndex: snaps['itemIndex'],
      title: snaps['title'],
      desc: snaps['desc'],
      id: snaps['id'],
      image: snaps['image'],
      isVisibleItem: snaps['isVisibleItem'],
      timestamp: snaps['timestamp']);

  MufinUser get toMufinUser => MufinUser(
      name: snaps['name'],
      userId: snaps['userId'],
      firstname: snaps['firstname'],
      lastname: snaps['lastname'],
      description: snaps['description'],
      documentId: snaps['documentId'],
      phone: snaps['phone'],
      email: snaps['email'],
      alternateEmail: snaps['alternateEmail'],
      studentRelationShip: snaps['studentRelationShip'],
      emailType: snaps['emailType'],
      phoneType: snaps['phoneType'],
      address: snaps['address'],
      country: snaps['country'],
      city: snaps['city'],
      state: snaps['state'],
      extra: snaps['extra'],
      howDidYouFindUs: snaps['howDidYouFindUs'],
      timestamp: snaps['timestamp'],
      lastUpdated: snaps['lastUpdated'],
      preferredDays: (snaps['preferredDays'] as List<dynamic>)
          .map((e) => e.toString())
          .toList(),
      preferredTimes: (snaps['preferredTimes'] as List<dynamic>)
          .map((e) => e.toString())
          .toList(),
      receiveEmails: snaps['receiveEmails'],
      receiveSMS: snaps['receiveSMS'],
      admin: snaps['admin'],
      inspector: snaps['inspector']);
}

extension UserModelExt on User {
  UserModel get toUserModel => UserModel(
      name: displayName ?? "",
      phone: phoneNumber,
      email: email,
      uid: uid,
      photoUrl: photoURL);
}

extension Strings on String {
  Widget toAssetIcon({double size = 24, Color? color}) {
    return Image.asset(
      this,
      height: size,
      width: size,
      color: color,
    );
  }

  IconData getIcon() {
    if (contains("Added") || contains("added")) {
      return Icons.add;
    } else if (contains("Deleted") || contains("deleted")) {
      return Icons.delete_outline_rounded;
    } else if (contains("Updated") || contains("updated")) {
      return Icons.edit_rounded;
    } else if (contains("Enrolled") || contains("enrolled")) {
      return Icons.add_card;
    } else if (contains("Accepted") || contains("accepted")) {
      return Icons.check_box;
    } else if (contains("Registered") || contains("registered")) {
      return Icons.app_registration_rounded;
    } else {
      return Icons.music_note_rounded;
    }
  }

  Color getActColor(BuildContext context) {
    // if (contains("Added")) {
    //   return context.colorScheme.background;
    // } else if (contains("Deleted")) {
    //   return context.colorScheme.errorContainer;
    // } else if (contains("Updated")) {
    //   return context.colorScheme.tertiaryContainer;
    // } else if (contains("Enrolled")) {
    //   return context.colorScheme.tertiaryContainer;
    // } else if (contains("registered")) {
    //   return context.colorScheme.secondaryContainer;
    // } else if (contains("accepted")) {
    //   return context.colorScheme.secondaryContainer;
    // } else {
    return context.colorScheme.surfaceVariant.withOpacity(0.5);
    // }
  }

  Widget get toBottomIcon => Image.asset(
        this,
        height: 24,
        width: 24,
      );
}
