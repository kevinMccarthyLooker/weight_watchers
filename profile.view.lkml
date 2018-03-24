explore: profile {}
view: profile {
# sql_table_name: wwi_processed_data.core_profile_service__1__ProfileEvent_v020 ;;
  sql_table_name: `wwi_processed_data.core_profile_service__1__ProfileEvent_*` ;;

dimension: headers__action{label:"action" sql:${TABLE}.headers.action;;}
dimension: headers__messageId{label:"messageId" sql:${TABLE}.headers.messageId;;}
dimension: headers__source{label:"source" sql:${TABLE}.headers.source;;}
dimension: partitions__day{label:"day" sql:${TABLE}.partitions.day;;}
dimension: partitions__hour{label:"hour" sql:${TABLE}.partitions.hour;;}
dimension: partitions__month{label:"month" sql:${TABLE}.partitions.month;;}
dimension: partitions__year{label:"year" sql:${TABLE}.partitions.year;;}
dimension: payload__acquisitionId{label:"acquisitionId" sql:${TABLE}.payload.acquisitionId;;}
dimension: payload__additionalSettings__classicSettingsIsFranFlag{label:"classicSettingsIsFranFlag" sql:${TABLE}.payload.additionalSettings.classicSettingsIsFranFlag;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__classicSettingsLifeTimeFlag{label:"classicSettingsLifeTimeFlag" sql:${TABLE}.payload.additionalSettings.classicSettingsLifeTimeFlag;; group_label:"additionalSettings"}
dimension: payload__additionalSettings__classicSettingsUserPersonalId{label:"classicSettingsUserPersonalId" sql:${TABLE}.payload.additionalSettings.classicSettingsUserPersonalId;; group_label:"additionalSettings"}
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
dimension: payload__email__personal{label:"personal" sql:${TABLE}.payload.email.personal;; group_label:"email"}
dimension: payload__enrollmentDate{label:"enrollmentDate" sql:${TABLE}.payload.enrollmentDate;;}
dimension: payload__entitlements{label:"entitlements" sql:ARRAY_TO_STRING(${TABLE}.payload.entitlements, "; ");;}
dimension: payload__firstName{label:"firstName" sql:${TABLE}.payload.firstName;;}
dimension_group: payload__freestyleActivationDate{label:"freestyleActivationDate" sql:${TABLE}.payload.freestyleActivationDate;; type:time timeframes: [raw,time,date,month,year]}
dimension: payload__gender{label:"gender" sql:${TABLE}.payload.gender;;}
dimension: payload__goalWeight{label:"goalWeight" sql:${TABLE}.payload.goalWeight;; type:number}
dimension: payload__goalWeightUnits{label:"goalWeightUnits" sql:${TABLE}.payload.goalWeightUnits;;}
dimension: payload__height{label:"height" sql:${TABLE}.payload.height;; type:number}
dimension: payload__id{label:"id" sql:${TABLE}.payload.id;;}
dimension: payload__identity__classic{label:"classic" sql:${TABLE}.payload.identity.classic;; group_label:"identity" type:number}
dimension: payload__identity__facebook{label:"facebook" sql:${TABLE}.payload.identity.facebook;; group_label:"identity" type:number}
dimension: payload__lastName{label:"lastName" sql:${TABLE}.payload.lastName;;}
dimension: payload__middleInitial{label:"middleInitial" sql:${TABLE}.payload.middleInitial;;}
dimension: payload__newletterOption{label:"newletterOption" sql:${TABLE}.payload.newletterOption;; type:yesno}
dimension: payload__newsletterOption{label:"newsletterOption" sql:${TABLE}.payload.newsletterOption;; type:yesno}
dimension: payload__nursingMother{label:"nursingMother" sql:${TABLE}.payload.nursingMother;;}
dimension: payload__optIn{label:"optIn" sql:${TABLE}.payload.optIn;; type:yesno}
dimension: payload__phone__cell{label:"cell" sql:${TABLE}.payload.phone.cell;; group_label:"phone"}
dimension: payload__phone__home{label:"home" sql:${TABLE}.payload.phone.home;; group_label:"phone"}
dimension: payload__pointsProgram{label:"pointsProgram" sql:${TABLE}.payload.pointsProgram;;}
dimension: payload__preferredHeightWeightUnits{label:"preferredHeightWeightUnits" sql:${TABLE}.payload.preferredHeightWeightUnits;;}
dimension: payload__referrerSite{label:"referrerSite" sql:${TABLE}.payload.referrerSite;;}
dimension: payload__rollover{label:"rollover" sql:${TABLE}.payload.rollover;; type:yesno}
dimension: payload__sendRegisterationEmail{label:"sendRegisterationEmail" sql:${TABLE}.payload.sendRegisterationEmail;; type:yesno}
dimension: payload__swappingMode{label:"swappingMode" sql:${TABLE}.payload.swappingMode;;}
dimension_group: payload__timestamp{label:"timestamp" sql:${TABLE}.payload.timestamp;; type:time timeframes: [raw,time,date,month,year]}
dimension: payload__title{label:"title" sql:${TABLE}.payload.title;;}
dimension: payload__trackingMode{label:"trackingMode" sql:${TABLE}.payload.trackingMode;;}
dimension: payload__userId{label:"userId" sql:${TABLE}.payload.userId;;}
dimension: payload__username{label:"username" sql:${TABLE}.payload.username;;}
dimension: payload__version{label:"version" sql:${TABLE}.payload.version;; type:number}
dimension: payload__weighInDay{label:"weighInDay" sql:${TABLE}.payload.weighInDay;;}
dimension: payload__zipWork{label:"zipWork" sql:${TABLE}.payload.zipWork;;}
}
