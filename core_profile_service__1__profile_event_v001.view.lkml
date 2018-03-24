explore: profile_backup {}

view: profile_backup {
  sql_table_name: wwi_processed_data.core_profile_service__1__ProfileEvent_v001 ;;


### Container Fields ###
#   dimension: headers {
#     hidden: yes
#     sql: ${TABLE}.headers ;;
#   }
#
#   dimension: partitions {
#     hidden: yes
#     sql: ${TABLE}.partitions ;;
#   }
#
#   dimension: payload {
#     hidden: yes
#     sql: ${TABLE}.payload ;;
#   }
#
#   measure: count {
#     type: count
#     drill_fields: []
#   }

# }
#
# # view: core_profile_service__1__ProfileEvent_v001__partitions {
#   dimension: day {
#     type: string
#     sql: ${TABLE}.partitions.day ;;
#   }
#
#   dimension: hour {
#     type: string
#     sql: ${TABLE}.partitions.hour ;;
#   }
#
#   dimension: month {
#     type: string
#     sql: ${TABLE}.partitions.month ;;
#   }
#
#   dimension: year {
#     type: string
#     sql: ${TABLE}.partitions.year ;;
#   }
# # }
# #
# # view: core_profile_service__1__ProfileEvent_v001__headers {
# #   dimension: action {
# #     type: string
# #     sql: ${TABLE}.headers.action ;;
# #   }
#   dimension: headers__action{label:"action" sql:${TABLE}.headers.action;;}
#
# #   dimension: message_id {
# #     type: string
# #     sql: ${TABLE}.headers.messageId ;;
# #   }
#   dimension: headers__messageId{label:"messageId" sql:${TABLE}.headers.messageId;;}
#
# #   dimension: source {
# #     type: string
# #     sql: ${TABLE}.headers.source ;;
# #   }
#   dimension: headers__source{label:"source" sql:${TABLE}.headers.source;;}
# # }




  dimension: headers__action{label:"action" sql:${TABLE}.headers.action;;}
dimension: headers__messageId{label:"messageId" sql:${TABLE}.headers.messageId;;}
dimension: headers__source{label:"source" sql:${TABLE}.headers.source;;}
dimension: partitions__day{label:"day" sql:${TABLE}.partitions.day;;}
dimension: partitions__hour{label:"hour" sql:${TABLE}.partitions.hour;;}
dimension: partitions__month{label:"month" sql:${TABLE}.partitions.month;;}
dimension: partitions__year{label:"year" sql:${TABLE}.partitions.year;;}
dimension: payload__accountStatus__billingAddress__addressLine1{label:"addressLine1" sql:${TABLE}.payload.accountStatus.billingAddress.addressLine1;; group_label:"accountStatus.billingAddress"}
dimension: payload__accountStatus__billingAddress__addressLine2{label:"addressLine2" sql:${TABLE}.payload.accountStatus.billingAddress.addressLine2;; group_label:"accountStatus.billingAddress"}
dimension: payload__accountStatus__billingAddress__city{label:"city" sql:${TABLE}.payload.accountStatus.billingAddress.city;; group_label:"accountStatus.billingAddress"}
dimension: payload__accountStatus__billingAddress__countryId{label:"countryId" sql:${TABLE}.payload.accountStatus.billingAddress.countryId;; group_label:"accountStatus.billingAddress"}
dimension: payload__accountStatus__billingAddress__countryName{label:"countryName" sql:${TABLE}.payload.accountStatus.billingAddress.countryName;; group_label:"accountStatus.billingAddress"}
dimension: payload__accountStatus__billingAddress__firstName{label:"firstName" sql:${TABLE}.payload.accountStatus.billingAddress.firstName;; group_label:"accountStatus.billingAddress"}
dimension: payload__accountStatus__billingAddress__lastName{label:"lastName" sql:${TABLE}.payload.accountStatus.billingAddress.lastName;; group_label:"accountStatus.billingAddress"}
dimension: payload__accountStatus__billingAddress__pinNumber{label:"pinNumber" sql:${TABLE}.payload.accountStatus.billingAddress.pinNumber;; group_label:"accountStatus.billingAddress"}
dimension: payload__accountStatus__billingAddress__postalCode{label:"postalCode" sql:${TABLE}.payload.accountStatus.billingAddress.postalCode;; group_label:"accountStatus.billingAddress"}
dimension: payload__accountStatus__billingAddress__stateId{label:"stateId" sql:${TABLE}.payload.accountStatus.billingAddress.stateId;; group_label:"accountStatus.billingAddress"}
dimension: payload__accountStatus__billingAddress__stateName{label:"stateName" sql:${TABLE}.payload.accountStatus.billingAddress.stateName;; group_label:"accountStatus.billingAddress"}
dimension: payload__accountStatus__billingAddress__stateNameDetails{label:"stateNameDetails" sql:${TABLE}.payload.accountStatus.billingAddress.stateNameDetails;; group_label:"accountStatus.billingAddress"}
dimension: payload__accountStatus__paymentInfo__ccExpDate{label:"ccExpDate" sql:${TABLE}.payload.accountStatus.paymentInfo.ccExpDate;; group_label:"accountStatus.paymentInfo"}
dimension: payload__accountStatus__paymentInfo__ccNumber{label:"ccNumber" sql:${TABLE}.payload.accountStatus.paymentInfo.ccNumber;; group_label:"accountStatus.paymentInfo"}
dimension: payload__accountStatus__paymentInfo__paymentType{label:"paymentType" sql:${TABLE}.payload.accountStatus.paymentInfo.paymentType;; group_label:"accountStatus.paymentInfo"}
dimension: payload__accountStatus__paymentInfo__type{label:"type" sql:${TABLE}.payload.accountStatus.paymentInfo.type;; group_label:"accountStatus.paymentInfo"}
dimension: payload__accountStatus__shippingAddress__addressLine1{label:"addressLine1" sql:${TABLE}.payload.accountStatus.shippingAddress.addressLine1;; group_label:"accountStatus.shippingAddress"}
dimension: payload__accountStatus__shippingAddress__addressLine2{label:"addressLine2" sql:${TABLE}.payload.accountStatus.shippingAddress.addressLine2;; group_label:"accountStatus.shippingAddress"}
dimension: payload__accountStatus__shippingAddress__city{label:"city" sql:${TABLE}.payload.accountStatus.shippingAddress.city;; group_label:"accountStatus.shippingAddress"}
dimension: payload__accountStatus__shippingAddress__countryId{label:"countryId" sql:${TABLE}.payload.accountStatus.shippingAddress.countryId;; group_label:"accountStatus.shippingAddress"}
dimension: payload__accountStatus__shippingAddress__countryName{label:"countryName" sql:${TABLE}.payload.accountStatus.shippingAddress.countryName;; group_label:"accountStatus.shippingAddress"}
dimension: payload__accountStatus__shippingAddress__postalCode{label:"postalCode" sql:${TABLE}.payload.accountStatus.shippingAddress.postalCode;; group_label:"accountStatus.shippingAddress"}
dimension: payload__accountStatus__shippingAddress__stateId{label:"stateId" sql:${TABLE}.payload.accountStatus.shippingAddress.stateId;; group_label:"accountStatus.shippingAddress"}
dimension: payload__accountStatus__shippingAddress__stateName{label:"stateName" sql:${TABLE}.payload.accountStatus.shippingAddress.stateName;; group_label:"accountStatus.shippingAddress"}
dimension: payload__accountStatus__shippingAddress__stateNameDetails{label:"stateNameDetails" sql:${TABLE}.payload.accountStatus.shippingAddress.stateNameDetails;; group_label:"accountStatus.shippingAddress"}
dimension: payload__accountSubscriptions__currentTransaction__corporate{label:"corporate" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.corporate;; group_label:"accountSubscriptions.currentTransaction"}
dimension_group: payload__accountSubscriptions__currentTransaction__enrollmentDate{label:"enrollmentDate" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.enrollmentDate;; group_label:"accountSubscriptions.currentTransaction" type:time timeframes: [raw,time,date,month,year]}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__addOnMonthlyFee{label:"addOnMonthlyFee" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.addOnMonthlyFee;; group_label:"accountSubscriptions.currentTransaction.mainProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__amount{label:"amount" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.amount;; group_label:"accountSubscriptions.currentTransaction.mainProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__amountFormatted{label:"amountFormatted" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.amountFormatted;; group_label:"accountSubscriptions.currentTransaction.mainProgram"}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__copay{label:"copay" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.copay;; group_label:"accountSubscriptions.currentTransaction.mainProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__countryId{label:"countryId" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.countryId;; group_label:"accountSubscriptions.currentTransaction.mainProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__discount{label:"discount" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.discount;; group_label:"accountSubscriptions.currentTransaction.mainProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__id{label:"id" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.id;; group_label:"accountSubscriptions.currentTransaction.mainProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__latestTransactionDate{label:"latestTransactionDate" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.latestTransactionDate;; group_label:"accountSubscriptions.currentTransaction.mainProgram"}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__monthlyFee{label:"monthlyFee" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.monthlyFee;; group_label:"accountSubscriptions.currentTransaction.mainProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__name{label:"name" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.name;; group_label:"accountSubscriptions.currentTransaction.mainProgram"}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__numberOfMonths{label:"numberOfMonths" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.numberOfMonths;; group_label:"accountSubscriptions.currentTransaction.mainProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__productId{label:"productId" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.productId;; group_label:"accountSubscriptions.currentTransaction.mainProgram"}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__registrationFee{label:"registrationFee" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.registrationFee;; group_label:"accountSubscriptions.currentTransaction.mainProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__rolesGroup__id{label:"id" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.rolesGroup.id;; group_label:"accountSubscriptions.currentTransaction.mainProgram.rolesGroup" type:number}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__rolesGroup__name{label:"name" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.rolesGroup.name;; group_label:"accountSubscriptions.currentTransaction.mainProgram.rolesGroup"}
dimension: payload__accountSubscriptions__currentTransaction__mainProgram__totalAmount{label:"totalAmount" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.totalAmount;; group_label:"accountSubscriptions.currentTransaction.mainProgram"}
dimension: payload__accountSubscriptions__currentTransaction__memberNo{label:"memberNo" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.memberNo;; group_label:"accountSubscriptions.currentTransaction"}
dimension: payload__accountSubscriptions__currentTransaction__newProgram__addOnMonthlyFee{label:"addOnMonthlyFee" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.addOnMonthlyFee;; group_label:"accountSubscriptions.currentTransaction.newProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__newProgram__amount{label:"amount" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.amount;; group_label:"accountSubscriptions.currentTransaction.newProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__newProgram__amountFormatted{label:"amountFormatted" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.amountFormatted;; group_label:"accountSubscriptions.currentTransaction.newProgram"}
dimension: payload__accountSubscriptions__currentTransaction__newProgram__copay{label:"copay" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.copay;; group_label:"accountSubscriptions.currentTransaction.newProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__newProgram__countryId{label:"countryId" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.countryId;; group_label:"accountSubscriptions.currentTransaction.newProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__newProgram__discount{label:"discount" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.discount;; group_label:"accountSubscriptions.currentTransaction.newProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__newProgram__id{label:"id" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.id;; group_label:"accountSubscriptions.currentTransaction.newProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__newProgram__monthlyFee{label:"monthlyFee" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.monthlyFee;; group_label:"accountSubscriptions.currentTransaction.newProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__newProgram__name{label:"name" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.name;; group_label:"accountSubscriptions.currentTransaction.newProgram"}
dimension: payload__accountSubscriptions__currentTransaction__newProgram__numberOfMonths{label:"numberOfMonths" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.numberOfMonths;; group_label:"accountSubscriptions.currentTransaction.newProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__newProgram__productId{label:"productId" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.productId;; group_label:"accountSubscriptions.currentTransaction.newProgram"}
dimension: payload__accountSubscriptions__currentTransaction__newProgram__registrationFee{label:"registrationFee" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.registrationFee;; group_label:"accountSubscriptions.currentTransaction.newProgram" type:number}
dimension: payload__accountSubscriptions__currentTransaction__newProgram__rolesGroup__id{label:"id" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.rolesGroup.id;; group_label:"accountSubscriptions.currentTransaction.newProgram.rolesGroup" type:number}
dimension: payload__accountSubscriptions__currentTransaction__newProgram__rolesGroup__name{label:"name" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.rolesGroup.name;; group_label:"accountSubscriptions.currentTransaction.newProgram.rolesGroup"}
dimension_group: payload__accountSubscriptions__currentTransaction__nextBillDate{label:"nextBillDate" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.nextBillDate;; group_label:"accountSubscriptions.currentTransaction" type:time timeframes: [raw,time,date,month,year]}
dimension: payload__accountSubscriptions__currentTransaction__paymentPlan{label:"paymentPlan" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.paymentPlan;; group_label:"accountSubscriptions.currentTransaction"}
dimension: payload__accountSubscriptions__currentTransaction__planEndDate{label:"planEndDate" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.planEndDate;; group_label:"accountSubscriptions.currentTransaction"}
dimension: payload__accountSubscriptions__currentTransaction__planMonths{label:"planMonths" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.planMonths;; group_label:"accountSubscriptions.currentTransaction" type:number}
dimension_group: payload__accountSubscriptions__currentTransaction__renewalDate{label:"renewalDate" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.renewalDate;; group_label:"accountSubscriptions.currentTransaction" type:time timeframes: [raw,time,date,month,year]}
dimension: payload__accountSubscriptions__currentTransaction__userName{label:"userName" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.userName;; group_label:"accountSubscriptions.currentTransaction"}
dimension: payload__accountSubscriptions__currentTransaction__userType__id{label:"id" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.userType.id;; group_label:"accountSubscriptions.currentTransaction.userType" type:number}
dimension: payload__accountSubscriptions__currentTransaction__userType__name{label:"name" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.userType.name;; group_label:"accountSubscriptions.currentTransaction.userType"}
dimension: payload__acquisitionId{label:"acquisitionId" sql:${TABLE}.payload.acquisitionId;;}
dimension: payload__active{label:"active" sql:${TABLE}.payload.active;; type:yesno}
dimension: payload__additionalSettings__another{label:"another" sql:${TABLE}.payload.additionalSettings.another;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__classicSettingsClientId{label:"classicSettingsClientId" sql:${TABLE}.payload.additionalSettings.classicSettingsClientId;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__classicSettingsClientName{label:"classicSettingsClientName" sql:${TABLE}.payload.additionalSettings.classicSettingsClientName;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__classicSettingsClientUniqueID{label:"classicSettingsClientUniqueID" sql:${TABLE}.payload.additionalSettings.classicSettingsClientUniqueID;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__classicSettingsContractNo{label:"classicSettingsContractNo" sql:${TABLE}.payload.additionalSettings.classicSettingsContractNo;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__classicSettingsEmployeeId{label:"classicSettingsEmployeeId" sql:${TABLE}.payload.additionalSettings.classicSettingsEmployeeId;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__classicSettingsIsFranFlag{label:"classicSettingsIsFranFlag" sql:${TABLE}.payload.additionalSettings.classicSettingsIsFranFlag;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__classicSettingsLifeTimeFlag{label:"classicSettingsLifeTimeFlag" sql:${TABLE}.payload.additionalSettings.classicSettingsLifeTimeFlag;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__classicSettingsMonthlyPassId{label:"classicSettingsMonthlyPassId" sql:${TABLE}.payload.additionalSettings.classicSettingsMonthlyPassId;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__classicSettingsUserPersonalId{label:"classicSettingsUserPersonalId" sql:${TABLE}.payload.additionalSettings.classicSettingsUserPersonalId;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__emailPreference{label:"emailPreference" sql:${TABLE}.payload.additionalSettings.emailPreference;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__hasCompletedActivityAssessment{label:"hasCompletedActivityAssessment" sql:${TABLE}.payload.additionalSettings.hasCompletedActivityAssessment;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__hasCompletedPersonalAssessment{label:"hasCompletedPersonalAssessment" sql:${TABLE}.payload.additionalSettings.hasCompletedPersonalAssessment;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__hasSeenPersonalAssessment{label:"hasSeenPersonalAssessment" sql:${TABLE}.payload.additionalSettings.hasSeenPersonalAssessment;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__other{label:"other" sql:${TABLE}.payload.additionalSettings.other;; group_label:"additionalSettings"}
dimension: payload__address__home__country{label:"country" sql:${TABLE}.payload.address.home.country;; group_label:"address.home"}
dimension: payload__address__home__extendedAddress{label:"extendedAddress" sql:${TABLE}.payload.address.home.extendedAddress;; group_label:"address.home"}
dimension: payload__address__home__latitude{label:"latitude" sql:${TABLE}.payload.address.home.latitude;; group_label:"address.home" type:number}
dimension: payload__address__home__locality{label:"locality" sql:${TABLE}.payload.address.home.locality;; group_label:"address.home"}
dimension: payload__address__home__longitude{label:"longitude" sql:${TABLE}.payload.address.home.longitude;; group_label:"address.home" type:number}
dimension: payload__address__home__postalCode{label:"postalCode" sql:${TABLE}.payload.address.home.postalCode;; group_label:"address.home"}
dimension: payload__address__home__postOfficeBox{label:"postOfficeBox" sql:${TABLE}.payload.address.home.postOfficeBox;; group_label:"address.home"}
dimension: payload__address__home__region{label:"region" sql:${TABLE}.payload.address.home.region;; group_label:"address.home"}
dimension: payload__address__home__streetAddress{label:"streetAddress" sql:${TABLE}.payload.address.home.streetAddress;; group_label:"address.home"}
dimension: payload__address__shipping__country{label:"country" sql:${TABLE}.payload.address.shipping.country;; group_label:"address.shipping"}
dimension: payload__address__shipping__extendedAddress{label:"extendedAddress" sql:${TABLE}.payload.address.shipping.extendedAddress;; group_label:"address.shipping"}
dimension: payload__address__shipping__latitude{label:"latitude" sql:${TABLE}.payload.address.shipping.latitude;; group_label:"address.shipping" type:number}
dimension: payload__address__shipping__locality{label:"locality" sql:${TABLE}.payload.address.shipping.locality;; group_label:"address.shipping"}
dimension: payload__address__shipping__longitude{label:"longitude" sql:${TABLE}.payload.address.shipping.longitude;; group_label:"address.shipping" type:number}
dimension: payload__address__shipping__postalCode{label:"postalCode" sql:${TABLE}.payload.address.shipping.postalCode;; group_label:"address.shipping"}
dimension: payload__address__shipping__postOfficeBox{label:"postOfficeBox" sql:${TABLE}.payload.address.shipping.postOfficeBox;; group_label:"address.shipping"}
dimension: payload__address__shipping__region{label:"region" sql:${TABLE}.payload.address.shipping.region;; group_label:"address.shipping"}
dimension: payload__address__shipping__streetAddress{label:"streetAddress" sql:${TABLE}.payload.address.shipping.streetAddress;; group_label:"address.shipping"}
dimension: payload__avatarUrl{label:"avatarUrl" sql:${TABLE}.payload.avatarUrl;;}
dimension: payload__birthDate{label:"birthDate" sql:${TABLE}.payload.birthDate;;}
dimension: payload__classicCountry{label:"classicCountry" sql:${TABLE}.payload.classicCountry;;}
dimension: payload__classicLocale{label:"classicLocale" sql:${TABLE}.payload.classicLocale;;}
dimension: payload__communicationPreferences{label:"communicationPreferences" sql:${TABLE}.payload.communicationPreferences;;}
dimension_group: payload__currentTimestamp{label:"currentTimestamp" sql:${TABLE}.payload.currentTimestamp;; type:time timeframes: [raw,time,date,month,year]}
dimension: payload__dptAdjustment{label:"dptAdjustment" sql:${TABLE}.payload.dptAdjustment;; type:number}
dimension: payload__email__personal{label:"personal" sql:${TABLE}.payload.email.personal;; group_label:"email"}
dimension: payload__emailPreferences__eNewsletterEmail{label:"eNewsletterEmail" sql:${TABLE}.payload.emailPreferences.eNewsletterEmail;; group_label:"emailPreferences" type:yesno}
dimension: payload__emailPreferences__reminderEmail{label:"reminderEmail" sql:${TABLE}.payload.emailPreferences.reminderEmail;; group_label:"emailPreferences" type:yesno}
dimension: payload__emailPreferences__specialOffersEmail{label:"specialOffersEmail" sql:${TABLE}.payload.emailPreferences.specialOffersEmail;; group_label:"emailPreferences" type:yesno}
dimension: payload__enrollmentDate{label:"enrollmentDate" sql:${TABLE}.payload.enrollmentDate;;}
dimension: payload__entitlements{label:"entitlements" sql:ARRAY_TO_STRING(${TABLE}.payload.entitlements, "; ");;}
dimension: payload__firstName{label:"firstName" sql:${TABLE}.payload.firstName;;}
dimension_group: payload__freestyleActivationDate{label:"freestyleActivationDate" sql:${TABLE}.payload.freestyleActivationDate;; type:time timeframes: [raw,time,date,month,year]}
dimension: payload__gender{label:"gender" sql:${TABLE}.payload.gender;;}
dimension: payload__goalWeight{label:"goalWeight" sql:${TABLE}.payload.goalWeight;; type:number}
dimension: payload__goalWeightUnits{label:"goalWeightUnits" sql:${TABLE}.payload.goalWeightUnits;;}
dimension: payload__hasCompletedOnboarding{label:"hasCompletedOnboarding" sql:${TABLE}.payload.hasCompletedOnboarding;; type:yesno}
dimension: payload__height{label:"height" sql:${TABLE}.payload.height;; type:number}
dimension: payload__id{label:"id" sql:${TABLE}.payload.id;;}
dimension: payload__identity__classic{label:"classic" sql:${TABLE}.payload.identity.classic;; group_label:"identity" type:number}
dimension: payload__identity__facebook{label:"facebook" sql:${TABLE}.payload.identity.facebook;; group_label:"identity" type:number}
dimension: payload__lastName{label:"lastName" sql:${TABLE}.payload.lastName;;}
dimension: payload__middleInitial{label:"middleInitial" sql:${TABLE}.payload.middleInitial;;}
dimension: payload__newsletterOption{label:"newsletterOption" sql:${TABLE}.payload.newsletterOption;; type:yesno}
dimension: payload__nursingMother{label:"nursingMother" sql:${TABLE}.payload.nursingMother;;}
dimension: payload__optIn{label:"optIn" sql:${TABLE}.payload.optIn;; type:yesno}
dimension: payload__phone__cell{label:"cell" sql:${TABLE}.payload.phone.cell;; group_label:"phone"}
dimension: payload__phone__home{label:"home" sql:${TABLE}.payload.phone.home;; group_label:"phone"}
dimension: payload__pointsProgram{label:"pointsProgram" sql:${TABLE}.payload.pointsProgram;;}
dimension: payload__preferredHeightWeightUnits{label:"preferredHeightWeightUnits" sql:${TABLE}.payload.preferredHeightWeightUnits;;}
dimension: payload__referrerSite{label:"referrerSite" sql:${TABLE}.payload.referrerSite;;}
dimension_group: payload__registrationDate{label:"registrationDate" sql:${TABLE}.payload.registrationDate;; type:time timeframes: [raw,time,date,month,year]}
dimension: payload__rollover{label:"rollover" sql:${TABLE}.payload.rollover;; type:yesno}
dimension: payload__smartPointsActivationDateOverride{label:"smartPointsActivationDateOverride" sql:${TABLE}.payload.smartPointsActivationDateOverride;;}
dimension: payload__startWeight{label:"startWeight" sql:${TABLE}.payload.startWeight;; type:number}
dimension: payload__swappingMode{label:"swappingMode" sql:${TABLE}.payload.swappingMode;;}
dimension_group: payload__timestamp{label:"timestamp" sql:${TABLE}.payload.timestamp;; type:time timeframes: [raw,time,date,month,year]}
dimension: payload__timezone{label:"timezone" sql:${TABLE}.payload.timezone;;}
dimension: payload__title{label:"title" sql:${TABLE}.payload.title;;}
dimension: payload__trackingMode{label:"trackingMode" sql:${TABLE}.payload.trackingMode;;}
dimension: payload__userId{label:"userId" sql:${TABLE}.payload.userId;;}
dimension: payload__username{label:"username" sql:${TABLE}.payload.username;;}
dimension: payload__version{label:"version" sql:${TABLE}.payload.version;; type:number}
dimension: payload__weighInDay{label:"weighInDay" sql:${TABLE}.payload.weighInDay;;}
dimension: payload__weight{label:"weight" sql:${TABLE}.payload.weight;; type:number}
dimension: payload__weightLossMode{label:"weightLossMode" sql:${TABLE}.payload.weightLossMode;;}
dimension: payload__wpaAdjustment{label:"wpaAdjustment" sql:${TABLE}.payload.wpaAdjustment;; type:number}
dimension: payload__wwuuid{label:"wwuuid" sql:${TABLE}.payload.wwuuid;;}
dimension: payload__zipWork{label:"zipWork" sql:${TABLE}.payload.zipWork;;}

#dynamic field creation attempt 1#

#   dimension: payload__accountStatus__billingAddress__addressLine1{group_label:"accountStatus.billingAddress" label:"addressLine1" sql:${TABLE}.payload.accountStatus.billingAddress.addressLine1;;}
# dimension: payload__accountStatus__billingAddress__addressLine2{group_label:"accountStatus.billingAddress" label:"addressLine2" sql:${TABLE}.payload.accountStatus.billingAddress.addressLine2;;}
# dimension: payload__accountStatus__billingAddress__city{group_label:"accountStatus.billingAddress" label:"city" sql:${TABLE}.payload.accountStatus.billingAddress.city;;}
# dimension: payload__accountStatus__billingAddress__countryId{group_label:"accountStatus.billingAddress" label:"countryId" sql:${TABLE}.payload.accountStatus.billingAddress.countryId;;}
# dimension: payload__accountStatus__billingAddress__countryName{group_label:"accountStatus.billingAddress" label:"countryName" sql:${TABLE}.payload.accountStatus.billingAddress.countryName;;}
# dimension: payload__accountStatus__billingAddress__firstName{group_label:"accountStatus.billingAddress" label:"firstName" sql:${TABLE}.payload.accountStatus.billingAddress.firstName;;}
# dimension: payload__accountStatus__billingAddress__lastName{group_label:"accountStatus.billingAddress" label:"lastName" sql:${TABLE}.payload.accountStatus.billingAddress.lastName;;}
# dimension: payload__accountStatus__billingAddress__pinNumber{group_label:"accountStatus.billingAddress" label:"pinNumber" sql:${TABLE}.payload.accountStatus.billingAddress.pinNumber;;}
# dimension: payload__accountStatus__billingAddress__postalCode{group_label:"accountStatus.billingAddress" label:"postalCode" sql:${TABLE}.payload.accountStatus.billingAddress.postalCode;;}
# dimension: payload__accountStatus__billingAddress__stateId{group_label:"accountStatus.billingAddress" label:"stateId" sql:${TABLE}.payload.accountStatus.billingAddress.stateId;;}
# dimension: payload__accountStatus__billingAddress__stateName{group_label:"accountStatus.billingAddress" label:"stateName" sql:${TABLE}.payload.accountStatus.billingAddress.stateName;;}
# dimension: payload__accountStatus__billingAddress__stateNameDetails{group_label:"accountStatus.billingAddress" label:"stateNameDetails" sql:${TABLE}.payload.accountStatus.billingAddress.stateNameDetails;;}
#
# dimension: payload__accountStatus__paymentInfo__ccExpDate{label:"accountStatus.paymentInfo.ccExpDate" sql:${TABLE}.payload.accountStatus.paymentInfo.ccExpDate;;}
# dimension: payload__accountStatus__paymentInfo__ccNumber{label:"accountStatus.paymentInfo.ccNumber" sql:${TABLE}.payload.accountStatus.paymentInfo.ccNumber;;}
# dimension: payload__accountStatus__paymentInfo__paymentType{label:"accountStatus.paymentInfo.paymentType" sql:${TABLE}.payload.accountStatus.paymentInfo.paymentType;;}
# dimension: payload__accountStatus__paymentInfo__type{label:"accountStatus.paymentInfo.type" sql:${TABLE}.payload.accountStatus.paymentInfo.type;;}
#
#
# dimension: payload__accountStatus__shippingAddress__addressLine1{label:"accountStatus.shippingAddress.addressLine1" sql:${TABLE}.payload.accountStatus.shippingAddress.addressLine1;;}
# dimension: payload__accountStatus__shippingAddress__addressLine2{label:"accountStatus.shippingAddress.addressLine2" sql:${TABLE}.payload.accountStatus.shippingAddress.addressLine2;;}
# dimension: payload__accountStatus__shippingAddress__city{label:"accountStatus.shippingAddress.city" sql:${TABLE}.payload.accountStatus.shippingAddress.city;;}
# dimension: payload__accountStatus__shippingAddress__countryId{label:"accountStatus.shippingAddress.countryId" sql:${TABLE}.payload.accountStatus.shippingAddress.countryId;;}
# dimension: payload__accountStatus__shippingAddress__countryName{label:"accountStatus.shippingAddress.countryName" sql:${TABLE}.payload.accountStatus.shippingAddress.countryName;;}
# dimension: payload__accountStatus__shippingAddress__postalCode{label:"accountStatus.shippingAddress.postalCode" sql:${TABLE}.payload.accountStatus.shippingAddress.postalCode;;}
# dimension: payload__accountStatus__shippingAddress__stateId{label:"accountStatus.shippingAddress.stateId" sql:${TABLE}.payload.accountStatus.shippingAddress.stateId;;}
# dimension: payload__accountStatus__shippingAddress__stateName{label:"accountStatus.shippingAddress.stateName" sql:${TABLE}.payload.accountStatus.shippingAddress.stateName;;}
# dimension: payload__accountStatus__shippingAddress__stateNameDetails{label:"accountStatus.shippingAddress.stateNameDetails" sql:${TABLE}.payload.accountStatus.shippingAddress.stateNameDetails;;}
# dimension: payload__accountSubscriptions__currentTransaction__corporate{label:"accountSubscriptions.currentTransaction.corporate" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.corporate;;}
# dimension_group: payload__accountSubscriptions__currentTransaction__enrollmentDate{label:"accountSubscriptions.currentTransaction.enrollmentDate" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.enrollmentDate;;
#     type: time
#     timeframes: [raw,time,date,month,year]
#     }
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__addOnMonthlyFee{label:"accountSubscriptions.currentTransaction.mainProgram.addOnMonthlyFee" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.addOnMonthlyFee;;}
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__amount{label:"accountSubscriptions.currentTransaction.mainProgram.amount" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.amount;;}
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__amountFormatted{label:"accountSubscriptions.currentTransaction.mainProgram.amountFormatted" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.amountFormatted;;}
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__copay{label:"accountSubscriptions.currentTransaction.mainProgram.copay" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.copay;;}
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__countryId{label:"accountSubscriptions.currentTransaction.mainProgram.countryId" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.countryId;;}
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__discount{label:"accountSubscriptions.currentTransaction.mainProgram.discount" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.discount;;}
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__id{label:"accountSubscriptions.currentTransaction.mainProgram.id" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.id;;}
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__latestTransactionDate{label:"accountSubscriptions.currentTransaction.mainProgram.latestTransactionDate" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.latestTransactionDate;;}
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__monthlyFee{label:"accountSubscriptions.currentTransaction.mainProgram.monthlyFee" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.monthlyFee;;}
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__name{label:"accountSubscriptions.currentTransaction.mainProgram.name" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.name;;}
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__numberOfMonths{label:"accountSubscriptions.currentTransaction.mainProgram.numberOfMonths" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.numberOfMonths;;}
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__productId{label:"accountSubscriptions.currentTransaction.mainProgram.productId" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.productId;;}
#
#
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__registrationFee{label:"accountSubscriptions.currentTransaction.mainProgram.registrationFee" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.registrationFee;;}
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__rolesGroup__id{label:"accountSubscriptions.currentTransaction.mainProgram.rolesGroup.id" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.rolesGroup.id;;}
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__rolesGroup__name{label:"accountSubscriptions.currentTransaction.mainProgram.rolesGroup.name" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.rolesGroup.name;;}
# dimension: payload__accountSubscriptions__currentTransaction__mainProgram__totalAmount{label:"accountSubscriptions.currentTransaction.mainProgram.totalAmount" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.mainProgram.totalAmount;;}
# dimension: payload__accountSubscriptions__currentTransaction__memberNo{label:"accountSubscriptions.currentTransaction.memberNo" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.memberNo;;}
# dimension: payload__accountSubscriptions__currentTransaction__newProgram__addOnMonthlyFee{label:"accountSubscriptions.currentTransaction.newProgram.addOnMonthlyFee" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.addOnMonthlyFee;;
#   type:number
# }
# dimension: payload__accountSubscriptions__currentTransaction__newProgram__amount{label:"accountSubscriptions.currentTransaction.newProgram.amount" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.amount;;
#   type:number
# }
# dimension: payload__accountSubscriptions__currentTransaction__newProgram__amountFormatted{label:"accountSubscriptions.currentTransaction.newProgram.amountFormatted" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.amountFormatted;;}
# dimension: payload__accountSubscriptions__currentTransaction__newProgram__copay{label:"accountSubscriptions.currentTransaction.newProgram.copay" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.copay;;
#   type:number
# }
# dimension: payload__accountSubscriptions__currentTransaction__newProgram__countryId{label:"accountSubscriptions.currentTransaction.newProgram.countryId" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.countryId;;
#   type:number
# }
# dimension: payload__accountSubscriptions__currentTransaction__newProgram__discount{label:"accountSubscriptions.currentTransaction.newProgram.discount" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.discount;;
#   type:number
# }
# dimension: payload__accountSubscriptions__currentTransaction__newProgram__id{label:"accountSubscriptions.currentTransaction.newProgram.id" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.id;;}
# dimension: payload__accountSubscriptions__currentTransaction__newProgram__monthlyFee{label:"accountSubscriptions.currentTransaction.newProgram.monthlyFee" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.monthlyFee;;
#   type:number
# }
# dimension: payload__accountSubscriptions__currentTransaction__newProgram__name{label:"accountSubscriptions.currentTransaction.newProgram.name" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.name;;}
# dimension: payload__accountSubscriptions__currentTransaction__newProgram__numberOfMonths{label:"accountSubscriptions.currentTransaction.newProgram.numberOfMonths" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.numberOfMonths;;
#   type:number
# }
# dimension: payload__accountSubscriptions__currentTransaction__newProgram__productId{label:"accountSubscriptions.currentTransaction.newProgram.productId" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.productId;;}
# dimension: payload__accountSubscriptions__currentTransaction__newProgram__registrationFee{label:"accountSubscriptions.currentTransaction.newProgram.registrationFee" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.registrationFee;;
#   type:number
# }
# dimension: payload__accountSubscriptions__currentTransaction__newProgram__rolesGroup__id{label:"accountSubscriptions.currentTransaction.newProgram.rolesGroup.id" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.rolesGroup.id;;}
# dimension: payload__accountSubscriptions__currentTransaction__newProgram__rolesGroup__name{label:"accountSubscriptions.currentTransaction.newProgram.rolesGroup.name" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.newProgram.rolesGroup.name;;}
# dimension_group: payload__accountSubscriptions__currentTransaction__nextBillDate{label:"accountSubscriptions.currentTransaction.nextBillDate" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.nextBillDate;;
#   type: time
#   timeframes: [
#     raw,
#     time,
#     date,
#     week,
#     month,
#     quarter,
#     year
#   ]}
# dimension: payload__accountSubscriptions__currentTransaction__paymentPlan{label:"accountSubscriptions.currentTransaction.paymentPlan" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.paymentPlan;;}
# dimension: payload__accountSubscriptions__currentTransaction__planEndDate{label:"accountSubscriptions.currentTransaction.planEndDate" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.planEndDate;;}
# dimension: payload__accountSubscriptions__currentTransaction__planMonths{label:"accountSubscriptions.currentTransaction.planMonths" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.planMonths;;
#   type: number
# }
#
#
# dimension_group: payload__accountSubscriptions__currentTransaction__renewalDate{label:"accountSubscriptions.currentTransaction.renewalDate" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.renewalDate;;
#   type: time
#   timeframes: [
#     raw,
#     time,
#     date,
#     week,
#     month,
#     quarter,
#     year
#   ]}
# dimension: payload__accountSubscriptions__currentTransaction__userName{label:"accountSubscriptions.currentTransaction.userName" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.userName;;}
# dimension: payload__accountSubscriptions__currentTransaction__userType__id{label:"accountSubscriptions.currentTransaction.userType.id" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.userType.id;;}
# dimension: payload__accountSubscriptions__currentTransaction__userType__name{label:"accountSubscriptions.currentTransaction.userType.name" sql:${TABLE}.payload.accountSubscriptions.currentTransaction.userType.name;;}
# dimension: payload__acquisitionId{label:"acquisitionId" sql:${TABLE}.payload.acquisitionId;;}
# dimension: payload__active{label:"active" sql:${TABLE}.payload.active;;
#   type: yesno
# }
# dimension: payload__additionalSettings__another{label:"additionalSettings.another" sql:${TABLE}.payload.additionalSettings.another;;}
# dimension: payload__additionalSettings__classicSettingsClientId{label:"additionalSettings.classicSettingsClientId" sql:${TABLE}.payload.additionalSettings.classicSettingsClientId;;}
# dimension: payload__additionalSettings__classicSettingsClientName{label:"additionalSettings.classicSettingsClientName" sql:${TABLE}.payload.additionalSettings.classicSettingsClientName;;}
# dimension: payload__additionalSettings__classicSettingsClientUniqueID{label:"additionalSettings.classicSettingsClientUniqueID" sql:${TABLE}.payload.additionalSettings.classicSettingsClientUniqueID;;}
# dimension: payload__additionalSettings__classicSettingsContractNo{label:"additionalSettings.classicSettingsContractNo" sql:${TABLE}.payload.additionalSettings.classicSettingsContractNo;;}
# dimension: payload__additionalSettings__classicSettingsEmployeeId{label:"additionalSettings.classicSettingsEmployeeId" sql:${TABLE}.payload.additionalSettings.classicSettingsEmployeeId;;}
# dimension: payload__additionalSettings__classicSettingsIsFranFlag{label:"additionalSettings.classicSettingsIsFranFlag" sql:${TABLE}.payload.additionalSettings.classicSettingsIsFranFlag;;}
# dimension: payload__additionalSettings__classicSettingsLifeTimeFlag{label:"additionalSettings.classicSettingsLifeTimeFlag" sql:${TABLE}.payload.additionalSettings.classicSettingsLifeTimeFlag;;}
# dimension: payload__additionalSettings__classicSettingsMonthlyPassId{label:"additionalSettings.classicSettingsMonthlyPassId" sql:${TABLE}.payload.additionalSettings.classicSettingsMonthlyPassId;;}
# dimension: payload__additionalSettings__classicSettingsUserPersonalId{label:"additionalSettings.classicSettingsUserPersonalId" sql:${TABLE}.payload.additionalSettings.classicSettingsUserPersonalId;;}
# dimension: payload__additionalSettings__emailPreference{label:"additionalSettings.emailPreference" sql:${TABLE}.payload.additionalSettings.emailPreference;;}
# dimension: payload__additionalSettings__hasCompletedActivityAssessment{label:"additionalSettings.hasCompletedActivityAssessment" sql:${TABLE}.payload.additionalSettings.hasCompletedActivityAssessment;;}
# dimension: payload__additionalSettings__hasCompletedPersonalAssessment{label:"additionalSettings.hasCompletedPersonalAssessment" sql:${TABLE}.payload.additionalSettings.hasCompletedPersonalAssessment;;}
# dimension: payload__additionalSettings__hasSeenPersonalAssessment{label:"additionalSettings.hasSeenPersonalAssessment" sql:${TABLE}.payload.additionalSettings.hasSeenPersonalAssessment;;}
# dimension: payload__additionalSettings__other{label:"additionalSettings.other" sql:${TABLE}.payload.additionalSettings.other;;}
# dimension: payload__address__home__country{label:"address.home.country" sql:${TABLE}.payload.address.home.country;;
#   map_layer_name: countries
#   }
# dimension: payload__address__home__extendedAddress{label:"address.home.extendedAddress" sql:${TABLE}.payload.address.home.extendedAddress;;}
#
#
# dimension: payload__address__home__latitude{label:"address.home.latitude" sql:${TABLE}.payload.address.home.latitude;;}
# dimension: payload__address__home__locality{label:"address.home.locality" sql:${TABLE}.payload.address.home.locality;;}
# dimension: payload__address__home__longitude{label:"address.home.longitude" sql:${TABLE}.payload.address.home.longitude;;}
# dimension: payload__address__home__postalCode{label:"address.home.postalCode" sql:${TABLE}.payload.address.home.postalCode;;}
# dimension: payload__address__home__postOfficeBox{label:"address.home.postOfficeBox" sql:${TABLE}.payload.address.home.postOfficeBox;;}
# dimension: payload__address__home__region{label:"address.home.region" sql:${TABLE}.payload.address.home.region;;}
# dimension: payload__address__home__streetAddress{label:"address.home.streetAddress" sql:${TABLE}.payload.address.home.streetAddress;;}
# dimension: payload__address__shipping__country{label:"address.shipping.country" sql:${TABLE}.payload.address.shipping.country;;}
# dimension: payload__address__shipping__extendedAddress{label:"address.shipping.extendedAddress" sql:${TABLE}.payload.address.shipping.extendedAddress;;}
# dimension: payload__address__shipping__latitude{label:"address.shipping.latitude" sql:${TABLE}.payload.address.shipping.latitude;;}
# dimension: payload__address__shipping__locality{label:"address.shipping.locality" sql:${TABLE}.payload.address.shipping.locality;;}
# dimension: payload__address__shipping__longitude{label:"address.shipping.longitude" sql:${TABLE}.payload.address.shipping.longitude;;}
# dimension: payload__address__shipping__postalCode{label:"address.shipping.postalCode" sql:${TABLE}.payload.address.shipping.postalCode;;}
# dimension: payload__address__shipping__postOfficeBox{label:"address.shipping.postOfficeBox" sql:${TABLE}.payload.address.shipping.postOfficeBox;;}
# dimension: payload__address__shipping__region{label:"address.shipping.region" sql:${TABLE}.payload.address.shipping.region;;}
# dimension: payload__address__shipping__streetAddress{label:"address.shipping.streetAddress" sql:${TABLE}.payload.address.shipping.streetAddress;;}
# dimension: payload__avatarUrl{label:"avatarUrl" sql:${TABLE}.payload.avatarUrl;;}
# dimension: payload__birthDate{label:"birthDate" sql:${TABLE}.payload.birthDate;;}
# dimension: payload__classicCountry{label:"classicCountry" sql:${TABLE}.payload.classicCountry;;}
# dimension: payload__classicLocale{label:"classicLocale" sql:${TABLE}.payload.classicLocale;;}
# dimension: payload__communicationPreferences{label:"communicationPreferences" sql:${TABLE}.payload.communicationPreferences;;}
# dimension_group: payload__currentTimestamp{label:"currentTimestamp" sql:${TABLE}.payload.currentTimestamp;;
#   type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]}
# dimension: payload__dptAdjustment{label:"dptAdjustment" sql:${TABLE}.payload.dptAdjustment;;
#   type: number
# }
#
#
# dimension: payload__emailPreferences__eNewsletterEmail{label:"emailPreferences.eNewsletterEmail" sql:${TABLE}.payload.emailPreferences.eNewsletterEmail;;
#   type:yesno
# }
# dimension: payload__emailPreferences__reminderEmail{label:"emailPreferences.reminderEmail" sql:${TABLE}.payload.emailPreferences.reminderEmail;;
#   type:yesno
# }
# dimension: payload__emailPreferences__specialOffersEmail{label:"emailPreferences.specialOffersEmail" sql:${TABLE}.payload.emailPreferences.specialOffersEmail;;
#   type:yesno
# }
# dimension: payload__enrollmentDate{label:"enrollmentDate" sql:${TABLE}.payload.enrollmentDate;;}
# #SPECIAL ARRAY HANDLING CODE ADDED#
# dimension: payload__entitlements{label:"entitlements" sql:ARRAY_TO_STRING(${TABLE}.payload.entitlements, " ");;}
# dimension: payload__firstName{label:"firstName" sql:${TABLE}.payload.firstName;;}
# dimension_group: payload__freestyleActivationDate{label:"freestyleActivationDate" sql:${TABLE}.payload.freestyleActivationDate;;
#   type: time
#   timeframes: [
#     raw,
#     time,
#     date,
#     week,
#     month,
#     quarter,
#     year
#   ]}
# dimension: payload__gender{label:"gender" sql:${TABLE}.payload.gender;;}
# dimension: payload__goalWeight{label:"goalWeight" sql:${TABLE}.payload.goalWeight;;
#   type: number
# }
# dimension: payload__goalWeightUnits{label:"goalWeightUnits" sql:${TABLE}.payload.goalWeightUnits;;}
# dimension: payload__hasCompletedOnboarding{label:"hasCompletedOnboarding" sql:${TABLE}.payload.hasCompletedOnboarding;;
#   type: yesno
# }
# dimension: payload__height{label:"height" sql:${TABLE}.payload.height;;
#   type: number
# }
# dimension: payload__id{label:"id" sql:${TABLE}.payload.id;;}
# dimension: payload__identity__classic{label:"identity.classic" sql:${TABLE}.payload.identity.classic;;
#   type:number
# }
# dimension: payload__identity__facebook{label:"identity.facebook" sql:${TABLE}.payload.identity.facebook;;
#   type:number
# }
# dimension: payload__lastName{label:"lastName" sql:${TABLE}.payload.lastName;;}
# dimension: payload__middleInitial{label:"middleInitial" sql:${TABLE}.payload.middleInitial;;}
# dimension: payload__newsletterOption{label:"newsletterOption" sql:${TABLE}.payload.newsletterOption;;
#   type: yesno
# }
# dimension: payload__nursingMother{label:"nursingMother" sql:${TABLE}.payload.nursingMother;;}
# dimension: payload__optIn{label:"optIn" sql:${TABLE}.payload.optIn;;
#   type: yesno
# }
# dimension: payload__phone__cell{label:"phone.cell" sql:${TABLE}.payload.phone.cell;;}
# dimension: payload__phone__home{label:"phone.home" sql:${TABLE}.payload.phone.home;;}
# dimension: payload__pointsProgram{label:"pointsProgram" sql:${TABLE}.payload.pointsProgram;;}
#
#
# dimension: payload__preferredHeightWeightUnits{label:"preferredHeightWeightUnits" sql:${TABLE}.payload.preferredHeightWeightUnits;;}
# dimension: payload__referrerSite{label:"referrerSite" sql:${TABLE}.payload.referrerSite;;}
# dimension_group: payload__registrationDate{label:"registrationDate" sql:${TABLE}.payload.registrationDate;;
#   type: time
#   timeframes: [
#     raw,
#     time,
#     date,
#     week,
#     month,
#     quarter,
#     year
#   ]}
# dimension: payload__rollover{label:"rollover" sql:${TABLE}.payload.rollover;;
#   type: yesno
# }
# dimension: payload__smartPointsActivationDateOverride{label:"smartPointsActivationDateOverride" sql:${TABLE}.payload.smartPointsActivationDateOverride;;}
# dimension: payload__startWeight{label:"startWeight" sql:${TABLE}.payload.startWeight;;
#   type: number
# }
# dimension: payload__swappingMode{label:"swappingMode" sql:${TABLE}.payload.swappingMode;;}
# dimension_group: payload__timestamp{label:"timestamp" sql:${TABLE}.payload.timestamp;;
#   type: time
#   timeframes: [
#     raw,
#     time,
#     date,
#     week,
#     month,
#     quarter,
#     year
#   ]}
# dimension: payload__timezone{label:"timezone" sql:${TABLE}.payload.timezone;;}
# dimension: payload__title{label:"title" sql:${TABLE}.payload.title;;}
# dimension: payload__trackingMode{label:"trackingMode" sql:${TABLE}.payload.trackingMode;;}
# dimension: payload__userId{label:"userId" sql:${TABLE}.payload.userId;;}
# dimension: payload__username{label:"username" sql:${TABLE}.payload.username;;}
# dimension: payload__version{label:"version" sql:${TABLE}.payload.version;;
#   type: number
# }
# dimension: payload__weighInDay{label:"weighInDay" sql:${TABLE}.payload.weighInDay;;}
# dimension: payload__weight{label:"weight" sql:${TABLE}.payload.weight;;
#   type: number
# }
# dimension: payload__weightLossMode{label:"weightLossMode" sql:${TABLE}.payload.weightLossMode;;}
# dimension: payload__wpaAdjustment{label:"wpaAdjustment" sql:${TABLE}.payload.wpaAdjustment;;
#   type: number
# }
# dimension: payload__wwuuid{label:"wwuuid" sql:${TABLE}.payload.wwuuid;;}
# dimension: payload__zipWork{label:"zipWork" sql:${TABLE}.payload.zipWork;;}
#end dynamic field creation attempt 1#


#
# view: core_profile_service__1__ProfileEvent_v001__payload {
#   dimension: id {
#     primary_key: yes
#     type: string
#     sql: ${TABLE}.payload.id ;;
#   }
#
#   dimension: account_status {
#     hidden: yes
#     sql: ${TABLE}.accountStatus ;;
#   }
#
#   dimension: account_subscriptions {
#     hidden: yes
#     sql: ${TABLE}.accountSubscriptions ;;
#   }
#
#   dimension: acquisition_id {
#     type: string
#     sql: ${TABLE}.acquisitionId ;;
#   }
#
#   dimension: active {
#     type: yesno
#     sql: ${TABLE}.active ;;
#   }
#
#   dimension: additional_settings {
#     hidden: yes
#     sql: ${TABLE}.additionalSettings ;;
#   }
#
#   dimension: address {
#     hidden: yes
#     sql: ${TABLE}.address ;;
#   }
#
#   dimension: avatar_url {
#     type: string
#     sql: ${TABLE}.avatarUrl ;;
#   }
#
#   dimension: birth_date {
#     type: string
#     sql: ${TABLE}.birthDate ;;
#   }
#
#   dimension: classic_country {
#     type: string
#     sql: ${TABLE}.classicCountry ;;
#   }
#
#   dimension: classic_locale {
#     type: string
#     sql: ${TABLE}.classicLocale ;;
#   }
#
#   dimension: communication_preferences {
#     type: string
#     sql: ${TABLE}.communicationPreferences ;;
#   }
#
#   dimension_group: current_timestamp {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.currentTimestamp ;;
#   }
#
#   dimension: dpt_adjustment {
#     type: number
#     sql: ${TABLE}.dptAdjustment ;;
#   }
#
#   dimension: email {
#     hidden: yes
#     sql: ${TABLE}.email ;;
#   }
#
#   dimension: email_preferences {
#     hidden: yes
#     sql: ${TABLE}.emailPreferences ;;
#   }
#
#   dimension: enrollment_date {
#     type: string
#     sql: ${TABLE}.enrollmentDate ;;
#   }
#
#   dimension: entitlements {
#     type: string
#     sql: ${TABLE}.entitlements ;;
#   }
#
#   dimension: first_name {
#     type: string
#     sql: ${TABLE}.firstName ;;
#   }
#
#   dimension_group: freestyle_activation {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.freestyleActivationDate ;;
#   }
#
#   dimension: gender {
#     type: string
#     sql: ${TABLE}.gender ;;
#   }
#
#   dimension: goal_weight {
#     type: number
#     sql: ${TABLE}.goalWeight ;;
#   }
#
#   dimension: goal_weight_units {
#     type: string
#     sql: ${TABLE}.goalWeightUnits ;;
#   }
#
#   dimension: has_completed_onboarding {
#     type: yesno
#     sql: ${TABLE}.hasCompletedOnboarding ;;
#   }
#
#   dimension: height {
#     type: number
#     sql: ${TABLE}.height ;;
#   }
#
#   dimension: identity {
#     hidden: yes
#     sql: ${TABLE}.identity ;;
#   }
#
#   dimension: last_name {
#     type: string
#     sql: ${TABLE}.lastName ;;
#   }
#
#   dimension: middle_initial {
#     type: string
#     sql: ${TABLE}.middleInitial ;;
#   }
#
#   dimension: newsletter_option {
#     type: yesno
#     sql: ${TABLE}.newsletterOption ;;
#   }
#
#   dimension: nursing_mother {
#     type: string
#     sql: ${TABLE}.nursingMother ;;
#   }
#
#   dimension: opt_in {
#     type: yesno
#     sql: ${TABLE}.optIn ;;
#   }
#
#   dimension: phone {
#     hidden: yes
#     sql: ${TABLE}.phone ;;
#   }
#
#   dimension: points_program {
#     type: string
#     sql: ${TABLE}.pointsProgram ;;
#   }
#
#   dimension: preferred_height_weight_units {
#     type: string
#     sql: ${TABLE}.preferredHeightWeightUnits ;;
#   }
#
#   dimension: referrer_site {
#     type: string
#     sql: ${TABLE}.referrerSite ;;
#   }
#
#   dimension_group: registration {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.registrationDate ;;
#   }
#
#   dimension: rollover {
#     type: yesno
#     sql: ${TABLE}.rollover ;;
#   }
#
#   dimension: smart_points_activation_date_override {
#     type: string
#     sql: ${TABLE}.smartPointsActivationDateOverride ;;
#   }
#
#   dimension: start_weight {
#     type: number
#     sql: ${TABLE}.startWeight ;;
#   }
#
#   dimension: swapping_mode {
#     type: string
#     sql: ${TABLE}.swappingMode ;;
#   }
#
#   dimension_group: timestamp {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.timestamp ;;
#   }
#
#   dimension: timezone {
#     type: string
#     sql: ${TABLE}.timezone ;;
#   }
#
#   dimension: title {
#     type: string
#     sql: ${TABLE}.title ;;
#   }
#
#   dimension: tracking_mode {
#     type: string
#     sql: ${TABLE}.trackingMode ;;
#   }
#
#   dimension: user_id {
#     type: string
#     sql: ${TABLE}.userId ;;
#   }
#
#   dimension: username {
#     type: string
#     sql: ${TABLE}.username ;;
#   }
#
#   dimension: version {
#     type: number
#     sql: ${TABLE}.version ;;
#   }
#
#   dimension: weigh_in_day {
#     type: string
#     sql: ${TABLE}.weighInDay ;;
#   }
#
#   dimension: weight {
#     type: number
#     sql: ${TABLE}.weight ;;
#   }
#
#   dimension: weight_loss_mode {
#     type: string
#     sql: ${TABLE}.weightLossMode ;;
#   }
#
#   dimension: wpa_adjustment {
#     type: number
#     sql: ${TABLE}.wpaAdjustment ;;
#   }
#
#   dimension: wwuuid {
#     type: string
#     sql: ${TABLE}.wwuuid ;;
#   }
#
#   dimension: zip_work {
#     type: string
#     sql: ${TABLE}.zipWork ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__account_subscriptions__current_transaction {
#   dimension: corporate {
#     type: string
#     sql: ${TABLE}.corporate ;;
#   }
#
#   dimension_group: enrollment {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.enrollmentDate ;;
#   }
#
#   dimension: main_program {
#     hidden: yes
#     sql: ${TABLE}.mainProgram ;;
#   }
#
#   dimension: member_no {
#     type: string
#     sql: ${TABLE}.memberNo ;;
#   }
#
#   dimension: new_program {
#     hidden: yes
#     sql: ${TABLE}.newProgram ;;
#   }
#
#   dimension_group: next_bill {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.nextBillDate ;;
#   }
#
#   dimension: payment_plan {
#     type: string
#     sql: ${TABLE}.paymentPlan ;;
#   }
#
#   dimension: plan_end_date {
#     type: string
#     sql: ${TABLE}.planEndDate ;;
#   }
#
#   dimension: plan_months {
#     type: number
#     sql: ${TABLE}.planMonths ;;
#   }
#
#   dimension_group: renewal {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     sql: ${TABLE}.renewalDate ;;
#   }
#
#   dimension: user_name {
#     type: string
#     sql: ${TABLE}.userName ;;
#   }
#
#   dimension: user_type {
#     hidden: yes
#     sql: ${TABLE}.userType ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__account_subscriptions__current_transaction__main_program {
#   dimension: id {
#     primary_key: yes
#     type: number
#     sql: ${TABLE}.id ;;
#   }
#
#   dimension: add_on_monthly_fee {
#     type: number
#     sql: ${TABLE}.addOnMonthlyFee ;;
#   }
#
#   dimension: amount {
#     type: number
#     sql: ${TABLE}.amount ;;
#   }
#
#   dimension: amount_formatted {
#     type: string
#     sql: ${TABLE}.amountFormatted ;;
#   }
#
#   dimension: copay {
#     type: number
#     sql: ${TABLE}.copay ;;
#   }
#
#   dimension: country_id {
#     type: number
#     sql: ${TABLE}.countryId ;;
#   }
#
#   dimension: discount {
#     type: number
#     sql: ${TABLE}.discount ;;
#   }
#
#   dimension: latest_transaction_date {
#     type: string
#     sql: ${TABLE}.latestTransactionDate ;;
#   }
#
#   dimension: monthly_fee {
#     type: number
#     sql: ${TABLE}.monthlyFee ;;
#   }
#
#   dimension: name {
#     type: string
#     sql: ${TABLE}.name ;;
#   }
#
#   dimension: number_of_months {
#     type: number
#     sql: ${TABLE}.numberOfMonths ;;
#   }
#
#   dimension: product_id {
#     type: string
#     sql: ${TABLE}.productId ;;
#   }
#
#   dimension: registration_fee {
#     type: number
#     sql: ${TABLE}.registrationFee ;;
#   }
#
#   dimension: roles_group {
#     hidden: yes
#     sql: ${TABLE}.rolesGroup ;;
#   }
#
#   dimension: total_amount {
#     type: string
#     sql: ${TABLE}.totalAmount ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__account_subscriptions__current_transaction__main_program__roles_group {
#   dimension: id {
#     primary_key: yes
#     type: number
#     sql: ${TABLE}.id ;;
#   }
#
#   dimension: name {
#     type: string
#     sql: ${TABLE}.name ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__account_subscriptions__current_transaction__new_program {
#   dimension: id {
#     primary_key: yes
#     type: number
#     sql: ${TABLE}.id ;;
#   }
#
#   dimension: add_on_monthly_fee {
#     type: number
#     sql: ${TABLE}.addOnMonthlyFee ;;
#   }
#
#   dimension: amount {
#     type: number
#     sql: ${TABLE}.amount ;;
#   }
#
#   dimension: amount_formatted {
#     type: string
#     sql: ${TABLE}.amountFormatted ;;
#   }
#
#   dimension: copay {
#     type: number
#     sql: ${TABLE}.copay ;;
#   }
#
#   dimension: country_id {
#     type: number
#     sql: ${TABLE}.countryId ;;
#   }
#
#   dimension: discount {
#     type: number
#     sql: ${TABLE}.discount ;;
#   }
#
#   dimension: monthly_fee {
#     type: number
#     sql: ${TABLE}.monthlyFee ;;
#   }
#
#   dimension: name {
#     type: string
#     sql: ${TABLE}.name ;;
#   }
#
#   dimension: number_of_months {
#     type: number
#     sql: ${TABLE}.numberOfMonths ;;
#   }
#
#   dimension: product_id {
#     type: string
#     sql: ${TABLE}.productId ;;
#   }
#
#   dimension: registration_fee {
#     type: number
#     sql: ${TABLE}.registrationFee ;;
#   }
#
#   dimension: roles_group {
#     hidden: yes
#     sql: ${TABLE}.rolesGroup ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__account_subscriptions__current_transaction__new_program__roles_group {
#   dimension: id {
#     primary_key: yes
#     type: number
#     sql: ${TABLE}.id ;;
#   }
#
#   dimension: name {
#     type: string
#     sql: ${TABLE}.name ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__account_subscriptions__current_transaction__user_type {
#   dimension: id {
#     primary_key: yes
#     type: number
#     sql: ${TABLE}.id ;;
#   }
#
#   dimension: name {
#     type: string
#     sql: ${TABLE}.name ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__email_preferences {
#   dimension: e_newsletter_email {
#     type: yesno
#     sql: ${TABLE}.eNewsletterEmail ;;
#   }
#
#   dimension: reminder_email {
#     type: yesno
#     sql: ${TABLE}.reminderEmail ;;
#   }
#
#   dimension: special_offers_email {
#     type: yesno
#     sql: ${TABLE}.specialOffersEmail ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__phone {
#   dimension: cell {
#     type: string
#     sql: ${TABLE}.cell ;;
#   }
#
#   dimension: home {
#     type: string
#     sql: ${TABLE}.home ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__account_status__shipping_address {
#   dimension: address_line1 {
#     type: string
#     sql: ${TABLE}.addressLine1 ;;
#   }
#
#   dimension: address_line2 {
#     type: string
#     sql: ${TABLE}.addressLine2 ;;
#   }
#
#   dimension: city {
#     type: string
#     sql: ${TABLE}.city ;;
#   }
#
#   dimension: country_id {
#     type: string
#     sql: ${TABLE}.countryId ;;
#   }
#
#   dimension: country_name {
#     type: string
#     sql: ${TABLE}.countryName ;;
#   }
#
#   dimension: postal_code {
#     type: string
#     sql: ${TABLE}.postalCode ;;
#   }
#
#   dimension: state_id {
#     type: string
#     sql: ${TABLE}.stateId ;;
#   }
#
#   dimension: state_name {
#     type: string
#     sql: ${TABLE}.stateName ;;
#   }
#
#   dimension: state_name_details {
#     type: string
#     sql: ${TABLE}.stateNameDetails ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__account_status__billing_address {
#   dimension: address_line1 {
#     type: string
#     sql: ${TABLE}.addressLine1 ;;
#   }
#
#   dimension: address_line2 {
#     type: string
#     sql: ${TABLE}.addressLine2 ;;
#   }
#
#   dimension: city {
#     type: string
#     sql: ${TABLE}.city ;;
#   }
#
#   dimension: country_id {
#     type: string
#     sql: ${TABLE}.countryId ;;
#   }
#
#   dimension: country_name {
#     type: string
#     sql: ${TABLE}.countryName ;;
#   }
#
#   dimension: first_name {
#     type: string
#     sql: ${TABLE}.firstName ;;
#   }
#
#   dimension: last_name {
#     type: string
#     sql: ${TABLE}.lastName ;;
#   }
#
#   dimension: pin_number {
#     type: string
#     sql: ${TABLE}.pinNumber ;;
#   }
#
#   dimension: postal_code {
#     type: string
#     sql: ${TABLE}.postalCode ;;
#   }
#
#   dimension: state_id {
#     type: string
#     sql: ${TABLE}.stateId ;;
#   }
#
#   dimension: state_name {
#     type: string
#     sql: ${TABLE}.stateName ;;
#   }
#
#   dimension: state_name_details {
#     type: string
#     sql: ${TABLE}.stateNameDetails ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__account_status__payment_info {
#   dimension: cc_exp_date {
#     type: string
#     sql: ${TABLE}.ccExpDate ;;
#   }
#
#   dimension: cc_number {
#     type: string
#     sql: ${TABLE}.ccNumber ;;
#   }
#
#   dimension: payment_type {
#     type: string
#     sql: ${TABLE}.paymentType ;;
#   }
#
#   dimension: type {
#     type: string
#     sql: ${TABLE}.type ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__identity {
#   dimension: classic {
#     type: number
#     sql: ${TABLE}.classic ;;
#   }
#
#   dimension: facebook {
#     type: number
#     sql: ${TABLE}.facebook ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__additional_settings {
#   dimension: another {
#     type: string
#     sql: ${TABLE}.another ;;
#   }
#
#   dimension: classic_settings_client_id {
#     type: string
#     sql: ${TABLE}.classicSettingsClientId ;;
#   }
#
#   dimension: classic_settings_client_name {
#     type: string
#     sql: ${TABLE}.classicSettingsClientName ;;
#   }
#
#   dimension: classic_settings_client_unique_id {
#     type: string
#     sql: ${TABLE}.classicSettingsClientUniqueID ;;
#   }
#
#   dimension: classic_settings_contract_no {
#     type: string
#     sql: ${TABLE}.classicSettingsContractNo ;;
#   }
#
#   dimension: classic_settings_employee_id {
#     type: string
#     sql: ${TABLE}.classicSettingsEmployeeId ;;
#   }
#
#   dimension: classic_settings_is_fran_flag {
#     type: string
#     sql: ${TABLE}.classicSettingsIsFranFlag ;;
#   }
#
#   dimension: classic_settings_life_time_flag {
#     type: string
#     sql: ${TABLE}.classicSettingsLifeTimeFlag ;;
#   }
#
#   dimension: classic_settings_monthly_pass_id {
#     type: string
#     sql: ${TABLE}.classicSettingsMonthlyPassId ;;
#   }
#
#   dimension: classic_settings_user_personal_id {
#     type: string
#     sql: ${TABLE}.classicSettingsUserPersonalId ;;
#   }
#
#   dimension: email_preference {
#     type: string
#     sql: ${TABLE}.emailPreference ;;
#   }
#
#   dimension: has_completed_activity_assessment {
#     type: string
#     sql: ${TABLE}.hasCompletedActivityAssessment ;;
#   }
#
#   dimension: has_completed_personal_assessment {
#     type: string
#     sql: ${TABLE}.hasCompletedPersonalAssessment ;;
#   }
#
#   dimension: has_seen_personal_assessment {
#     type: string
#     sql: ${TABLE}.hasSeenPersonalAssessment ;;
#   }
#
#   dimension: other {
#     type: string
#     sql: ${TABLE}.other ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__email {
#   dimension: personal {
#     type: string
#     sql: ${TABLE}.personal ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__address__shipping {
#   dimension: country {
#     type: string
#     map_layer_name: countries
#     sql: ${TABLE}.country ;;
#   }
#
#   dimension: extended_address {
#     type: string
#     sql: ${TABLE}.extendedAddress ;;
#   }
#
#   dimension: latitude {
#     type: number
#     sql: ${TABLE}.latitude ;;
#   }
#
#   dimension: locality {
#     type: string
#     sql: ${TABLE}.locality ;;
#   }
#
#   dimension: longitude {
#     type: number
#     sql: ${TABLE}.longitude ;;
#   }
#
#   dimension: post_office_box {
#     type: string
#     sql: ${TABLE}.postOfficeBox ;;
#   }
#
#   dimension: postal_code {
#     type: string
#     sql: ${TABLE}.postalCode ;;
#   }
#
#   dimension: region {
#     type: string
#     sql: ${TABLE}.region ;;
#   }
#
#   dimension: street_address {
#     type: string
#     sql: ${TABLE}.streetAddress ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__address__home {
#   dimension: country {
#     type: string
#     map_layer_name: countries
#     sql: ${TABLE}.country ;;
#   }
#
#   dimension: extended_address {
#     type: string
#     sql: ${TABLE}.extendedAddress ;;
#   }
#
#   dimension: latitude {
#     type: number
#     sql: ${TABLE}.latitude ;;
#   }
#
#   dimension: locality {
#     type: string
#     sql: ${TABLE}.locality ;;
#   }
#
#   dimension: longitude {
#     type: number
#     sql: ${TABLE}.longitude ;;
#   }
#
#   dimension: post_office_box {
#     type: string
#     sql: ${TABLE}.postOfficeBox ;;
#   }
#
#   dimension: postal_code {
#     type: string
#     sql: ${TABLE}.postalCode ;;
#   }
#
#   dimension: region {
#     type: string
#     sql: ${TABLE}.region ;;
#   }
#
#   dimension: street_address {
#     type: string
#     sql: ${TABLE}.streetAddress ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__account_subscriptions {
#   dimension: current_transaction {
#     hidden: yes
#     sql: ${TABLE}.currentTransaction ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__account_status {
#   dimension: billing_address {
#     hidden: yes
#     sql: ${TABLE}.billingAddress ;;
#   }
#
#   dimension: payment_info {
#     hidden: yes
#     sql: ${TABLE}.paymentInfo ;;
#   }
#
#   dimension: shipping_address {
#     hidden: yes
#     sql: ${TABLE}.shippingAddress ;;
#   }
# }
#
# view: core_profile_service__1__ProfileEvent_v001__payload__address {
#   dimension: home {
#     hidden: yes
#     sql: ${TABLE}.home ;;
#   }
#
#   dimension: shipping {
#     hidden: yes
#     sql: ${TABLE}.shipping ;;
#   }
}
