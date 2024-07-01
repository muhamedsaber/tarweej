
import 'package:flutter/material.dart';


enum FirebaseAuthErrorsCodesEnum {
  adminRestrictedOperation,
  argumentError,
  appNotAuthorized,
  appNotInstalled,
  captchaCheckFailed,
  codeExpired,
  cordovaNotReady,
  corsUnsupported,
  credentialAlreadyInUse,
  customTokenMismatch,
  requiresRecentLogin,
  dependentSdkInitializedBeforeAuth,
  dynamicLinkNotActivated,
  emailChangeNeedsVerification,
  emailAlreadyInUse,
  emulatorConfigFailed,
  expiredActionCode,
  cancelledPopupRequest,
  internalError,
  invalidApiKey,
  invalidAppCredential,
  invalidAppId,
  invalidUserToken,
  invalidAuthEvent,
  invalidCertHash,
  invalidVerificationCode,
  invalidContinueUri,
  invalidCordovaConfiguration,
  invalidCustomToken,
  invalidDynamicLinkDomain,
  invalidEmail,
  invalidEmulatorScheme,
  invalidCredential,
  invalidMessagePayload,
  invalidMultiFactorSession,
  invalidOauthClientId,
  invalidOauthProvider,
  invalidActionCode,
  unauthorizedDomain,
  wrongPassword,
  invalidPersistenceType,
  invalidPhoneNumber,
  invalidProviderId,
  invalidRecipientEmail,
  invalidSender,
  invalidVerificationId,
  invalidTenantId,
  multiFactorInfoNotFound,
  multiFactorAuthRequired,
  missingAndroidPkgName,
  missingAppCredential,
  authDomainConfigRequired,
  missingVerificationCode,
  missingContinueUri,
  missingIframeStart,
  missingIosBundleId,
  missingOrInvalidNonce,
  missingMultiFactorInfo,
  missingMultiFactorSession,
  missingPhoneNumber,
  missingVerificationId,
  appDeleted,
  accountExistsWithDifferentCredential,
  networkRequestFailed,
  nullUser,
  noAuthEvent,
  noSuchProvider,
  operationNotAllowed,
  operationNotSupportedInThisEnvironment,
  popupBlocked,
  popupClosedByUser,
  providerAlreadyLinked,
  quotaExceeded,
  redirectCancelledByUser,
  redirectOperationPending,
  rejectedCredential,
  secondFactorAlreadyInUse,
  maximumSecondFactorCountExceeded,
  tenantIdMismatch,
  timeout,
  userTokenExpired,
  tooManyRequests,
  unauthorizedContinueUri,
  unsupportedFirstFactor,
  unsupportedPersistenceType,
  unsupportedTenantOperation,
  unverifiedEmail,
  userCancelled,
  userNotFound,
  userDisabled,
  userMismatch,
  userSignedOut,
  weakPassword,
  webStorageUnsupported,
  alreadyInitialized,
  recaptchaNotEnabled,
  missingRecaptchaToken,
  invalidRecaptchaToken,
  invalidRecaptchaAction,
  missingClientType,
  missingRecaptchaVersion,
  invalidRecaptchaVersion,
  invalidReqType,
  unknownError
} 

/// To be compeletes
 class FirebaseErrors {
   static const String accountExistsWithDifferentCredential= "account-exists-with-different-credential";
   static const String invalidCredential ="invalid-credential";
 }

class FirebaseAuthErrorMessages {
  static const String adminRestrictedOperation =
      "This operation is restricted to administrators only.";
  static const String argumentError = "An invalid argument was provided.";
  static const String appNotAuthorized = "The application is not authorized.";
  static const String appNotInstalled = "The application is not installed.";
  static const String captchaCheckFailed = "Captcha check failed.";
  static const String codeExpired = "The verification code has expired.";
  static const String cordovaNotReady = "Cordova is not ready.";
  static const String corsUnsupported = "CORS is not supported.";
  static const String credentialAlreadyInUse =
      "This credential is already in use by another account.";
  static const String customTokenMismatch =
      "The custom token does not match the expected format.";
  static const String requiresRecentLogin =
      "Please log in again to perform this operation.";
  static const String dependentSdkInitializedBeforeAuth =
      "A dependent SDK was initialized before auth.";
  static const String dynamicLinkNotActivated =
      "Dynamic links are not activated.";
  static const String emailChangeNeedsVerification =
      "Please verify your new email address.";
  static const String emailAlreadyInUse =
      "This email address is already in use.";
  static const String emulatorConfigFailed =
      "Failed to configure the emulator.";
  static const String expiredActionCode = "The action code has expired.";
  static const String cancelledPopupRequest =
      "The popup request was cancelled.";
  static const String internalError = "An internal error occurred.";
  static const String invalidApiKey = "The API key is invalid.";
  static const String invalidAppCredential = "The app credential is invalid.";
  static const String invalidAppId = "The app ID is invalid.";
  static const String invalidUserToken = "The user token is invalid.";
  static const String invalidAuthEvent = "The auth event is invalid.";
  static const String invalidCertHash = "The certificate hash is invalid.";
  static const String invalidVerificationCode =
      "The verification code is invalid.";
  static const String invalidContinueUri = "The continue URL is invalid.";
  static const String invalidCordovaConfiguration =
      "The Cordova configuration is invalid.";
  static const String invalidCustomToken = "The custom token is invalid.";
  static const String invalidDynamicLinkDomain =
      "The dynamic link domain is invalid.";
  static const String invalidEmail = "The email address is invalid.";
  static const String invalidEmulatorScheme = "The emulator scheme is invalid.";
  static const String invalidCredential ="The provided credential is not valid. Please check and try again.";
  static const String invalidMessagePayload = "The message payload is invalid.";
  static const String invalidMultiFactorSession =
      "The multi-factor session is invalid.";
  static const String invalidOauthClientId = "The OAuth client ID is invalid.";
  static const String invalidOauthProvider = "The OAuth provider is invalid.";
  static const String invalidActionCode = "The action code is invalid.";
  static const String unauthorizedDomain = "The domain is unauthorized.";
  static const String wrongPassword = "The password is incorrect.";
  static const String invalidPersistenceType =
      "The persistence type is invalid.";
  static const String invalidPhoneNumber = "The phone number is invalid.";
  static const String invalidProviderId = "The provider ID is invalid.";
  static const String invalidRecipientEmail = "The recipient email is invalid.";
  static const String invalidSender = "The sender is invalid.";
  static const String invalidVerificationId = "The verification ID is invalid.";
  static const String invalidTenantId = "The tenant ID is invalid.";
  static const String multiFactorInfoNotFound =
      "The multi-factor info was not found.";
  static const String multiFactorAuthRequired =
      "Multi-factor authentication is required.";
  static const String missingAndroidPkgName =
      "The Android package name is missing.";
  static const String missingAppCredential = "The app credential is missing.";
  static const String authDomainConfigRequired =
      "The auth domain configuration is required.";
  static const String missingVerificationCode =
      "The verification code is missing.";
  static const String missingContinueUri = "The continue URL is missing.";
  static const String missingIframeStart = "The iframe start is missing.";
  static const String missingIosBundleId = "The iOS bundle ID is missing.";
  static const String missingOrInvalidNonce =
      "The nonce is missing or invalid.";
  static const String missingMultiFactorInfo =
      "The multi-factor info is missing.";
  static const String missingMultiFactorSession =
      "The multi-factor session is missing.";
  static const String missingPhoneNumber = "The phone number is missing.";
  static const String missingVerificationId = "The verification ID is missing.";
  static const String appDeleted = "The app was deleted.";
  static const String accountExistsWithDifferentCredential =
      "An account already exists with a different credential.";
  static const String networkRequestFailed = "A network request failed.";
  static const String nullUser = "The user is null.";
  static const String noAuthEvent = "No auth event.";
  static const String noSuchProvider = "No such provider.";
  static const String operationNotAllowed = "This operation is not allowed.";
  static const String operationNotSupportedInThisEnvironment =
      "This operation is not supported in this environment.";
  static const String popupBlocked = "The popup was blocked.";
  static const String popupClosedByUser = "The popup was closed by the user.";
  static const String providerAlreadyLinked =
      "This provider is already linked to this account.";
  static const String quotaExceeded = "The quota has been exceeded.";
  static const String redirectCancelledByUser =
      "The redirect was cancelled by the user.";
  static const String redirectOperationPending =
      "A redirect operation is pending.";
  static const String rejectedCredential = "The credential was rejected.";
  static const String secondFactorAlreadyInUse =
      "This second factor is already in use.";
  static const String maximumSecondFactorCountExceeded =
      "The maximum second factor count has been exceeded.";
  static const String tenantIdMismatch = "The tenant ID does not match.";
  static const String timeout = "The operation timed out.";
  static const String userTokenExpired = "The user token has expired.";
  static const String tooManyRequests =
      "There are too many requests. Please try again later.";
  static const String unauthorizedContinueUri =
      "The continue URL is unauthorized.";
  static const String unsupportedFirstFactor =
      "This first factor is not supported.";
  static const String unsupportedPersistenceType =
      "The persistence type is not supported.";
  static const String unsupportedTenantOperation =
      "This tenant operation is not supported.";
  static const String unverifiedEmail = "The email address is unverified.";
  static const String userCancelled = "The user cancelled the operation.";
  static const String userNotFound = "No user found with this identifier.";
  static const String userDisabled = "The user has been disabled.";
  static const String userMismatch =
      "The user does not match the credentials provided.";
  static const String userSignedOut = "The user has signed out.";
  static const String weakPassword = "The password is too weak.";
  static const String webStorageUnsupported = "Web storage is not supported.";
  static const String alreadyInitialized =
      "The app has already been initialized.";
  static const String recaptchaNotEnabled = "Recaptcha is not enabled.";
  static const String missingRecaptchaToken = "The Recaptcha token is missing.";
  static const String invalidRecaptchaToken = "The Recaptcha token is invalid.";
  static const String invalidRecaptchaAction =
      "The Recaptcha action is invalid.";
  static const String missingClientType = "The client type is missing.";
  static const String missingRecaptchaVersion =
      "The Recaptcha version is missing.";
  static const String invalidRecaptchaVersion =
      "The Recaptcha version is invalid.";
  static const String invalidReqType = "The request type is invalid.";
  static const String unknownError = "An unknown error occurred.";
}

Map<FirebaseAuthErrorsCodesEnum, String> firebaseAuthErrorsMessagesMap = {
  FirebaseAuthErrorsCodesEnum.adminRestrictedOperation:
      FirebaseAuthErrorMessages.adminRestrictedOperation,
  FirebaseAuthErrorsCodesEnum.argumentError:
      FirebaseAuthErrorMessages.argumentError,
  FirebaseAuthErrorsCodesEnum.appNotAuthorized:
      FirebaseAuthErrorMessages.appNotAuthorized,
  FirebaseAuthErrorsCodesEnum.appNotInstalled:
      FirebaseAuthErrorMessages.appNotInstalled,
  FirebaseAuthErrorsCodesEnum.captchaCheckFailed:
      FirebaseAuthErrorMessages.captchaCheckFailed,
  FirebaseAuthErrorsCodesEnum.codeExpired:
      FirebaseAuthErrorMessages.codeExpired,
  FirebaseAuthErrorsCodesEnum.cordovaNotReady:
      FirebaseAuthErrorMessages.cordovaNotReady,
  FirebaseAuthErrorsCodesEnum.corsUnsupported:
      FirebaseAuthErrorMessages.corsUnsupported,
  FirebaseAuthErrorsCodesEnum.credentialAlreadyInUse:
      FirebaseAuthErrorMessages.credentialAlreadyInUse,
  FirebaseAuthErrorsCodesEnum.customTokenMismatch:
      FirebaseAuthErrorMessages.customTokenMismatch,
  FirebaseAuthErrorsCodesEnum.requiresRecentLogin:
      FirebaseAuthErrorMessages.requiresRecentLogin,
  FirebaseAuthErrorsCodesEnum.dependentSdkInitializedBeforeAuth:
      FirebaseAuthErrorMessages.dependentSdkInitializedBeforeAuth,
  FirebaseAuthErrorsCodesEnum.dynamicLinkNotActivated:
      FirebaseAuthErrorMessages.dynamicLinkNotActivated,
  FirebaseAuthErrorsCodesEnum.emailChangeNeedsVerification:
      FirebaseAuthErrorMessages.emailChangeNeedsVerification,
  FirebaseAuthErrorsCodesEnum.emailAlreadyInUse:
      FirebaseAuthErrorMessages.emailAlreadyInUse,
  FirebaseAuthErrorsCodesEnum.emulatorConfigFailed:
      FirebaseAuthErrorMessages.emulatorConfigFailed,
  FirebaseAuthErrorsCodesEnum.expiredActionCode:
      FirebaseAuthErrorMessages.expiredActionCode,
  FirebaseAuthErrorsCodesEnum.cancelledPopupRequest:
      FirebaseAuthErrorMessages.cancelledPopupRequest,
  FirebaseAuthErrorsCodesEnum.internalError:
      FirebaseAuthErrorMessages.internalError,
  FirebaseAuthErrorsCodesEnum.invalidApiKey:
      FirebaseAuthErrorMessages.invalidApiKey,
  FirebaseAuthErrorsCodesEnum.invalidAppCredential:
      FirebaseAuthErrorMessages.invalidAppCredential,
  FirebaseAuthErrorsCodesEnum.invalidAppId:
      FirebaseAuthErrorMessages.invalidAppId,
  FirebaseAuthErrorsCodesEnum.invalidUserToken:
      FirebaseAuthErrorMessages.invalidUserToken,
  FirebaseAuthErrorsCodesEnum.invalidAuthEvent:
      FirebaseAuthErrorMessages.invalidAuthEvent,
  FirebaseAuthErrorsCodesEnum.invalidCertHash:
      FirebaseAuthErrorMessages.invalidCertHash,
  FirebaseAuthErrorsCodesEnum.invalidVerificationCode:
      FirebaseAuthErrorMessages.invalidVerificationCode,
  FirebaseAuthErrorsCodesEnum.invalidContinueUri:
      FirebaseAuthErrorMessages.invalidContinueUri,
  FirebaseAuthErrorsCodesEnum.invalidCordovaConfiguration:
      FirebaseAuthErrorMessages.invalidCordovaConfiguration,
  FirebaseAuthErrorsCodesEnum.invalidCustomToken:
      FirebaseAuthErrorMessages.invalidCustomToken,
  FirebaseAuthErrorsCodesEnum.invalidDynamicLinkDomain:
      FirebaseAuthErrorMessages.invalidDynamicLinkDomain,
  FirebaseAuthErrorsCodesEnum.invalidEmail:
      FirebaseAuthErrorMessages.invalidEmail,
  FirebaseAuthErrorsCodesEnum.invalidEmulatorScheme:
      FirebaseAuthErrorMessages.invalidEmulatorScheme,
  FirebaseAuthErrorsCodesEnum.invalidCredential:
      FirebaseAuthErrorMessages.invalidCredential,
  FirebaseAuthErrorsCodesEnum.invalidMessagePayload:
      FirebaseAuthErrorMessages.invalidMessagePayload,
  FirebaseAuthErrorsCodesEnum.invalidMultiFactorSession:
      FirebaseAuthErrorMessages.invalidMultiFactorSession,
  FirebaseAuthErrorsCodesEnum.invalidOauthClientId:
      FirebaseAuthErrorMessages.invalidOauthClientId,
  FirebaseAuthErrorsCodesEnum.invalidOauthProvider:
      FirebaseAuthErrorMessages.invalidOauthProvider,
  FirebaseAuthErrorsCodesEnum.invalidActionCode:
      FirebaseAuthErrorMessages.invalidActionCode,
  FirebaseAuthErrorsCodesEnum.unauthorizedDomain:
      FirebaseAuthErrorMessages.unauthorizedDomain,
  FirebaseAuthErrorsCodesEnum.wrongPassword:
      FirebaseAuthErrorMessages.wrongPassword,
  FirebaseAuthErrorsCodesEnum.invalidPersistenceType:
      FirebaseAuthErrorMessages.invalidPersistenceType,
  FirebaseAuthErrorsCodesEnum.invalidPhoneNumber:
      FirebaseAuthErrorMessages.invalidPhoneNumber,
  FirebaseAuthErrorsCodesEnum.invalidProviderId:
      FirebaseAuthErrorMessages.invalidProviderId,
  FirebaseAuthErrorsCodesEnum.invalidRecipientEmail:
      FirebaseAuthErrorMessages.invalidRecipientEmail,
  FirebaseAuthErrorsCodesEnum.invalidSender:
      FirebaseAuthErrorMessages.invalidSender,
  FirebaseAuthErrorsCodesEnum.invalidVerificationId:
      FirebaseAuthErrorMessages.invalidVerificationId,
  FirebaseAuthErrorsCodesEnum.invalidTenantId:
      FirebaseAuthErrorMessages.invalidTenantId,
  FirebaseAuthErrorsCodesEnum.multiFactorInfoNotFound:
      FirebaseAuthErrorMessages.multiFactorInfoNotFound,
  FirebaseAuthErrorsCodesEnum.multiFactorAuthRequired:
      FirebaseAuthErrorMessages.multiFactorAuthRequired,
  FirebaseAuthErrorsCodesEnum.missingAndroidPkgName:
      FirebaseAuthErrorMessages.missingAndroidPkgName,
  FirebaseAuthErrorsCodesEnum.missingAppCredential:
      FirebaseAuthErrorMessages.missingAppCredential,
  FirebaseAuthErrorsCodesEnum.authDomainConfigRequired:
      FirebaseAuthErrorMessages.authDomainConfigRequired,
  FirebaseAuthErrorsCodesEnum.missingVerificationCode:
      FirebaseAuthErrorMessages.missingVerificationCode,
  FirebaseAuthErrorsCodesEnum.missingContinueUri:
      FirebaseAuthErrorMessages.missingContinueUri,
  FirebaseAuthErrorsCodesEnum.missingIframeStart:
      FirebaseAuthErrorMessages.missingIframeStart,
  FirebaseAuthErrorsCodesEnum.missingIosBundleId:
      FirebaseAuthErrorMessages.missingIosBundleId,
  FirebaseAuthErrorsCodesEnum.missingOrInvalidNonce:
      FirebaseAuthErrorMessages.missingOrInvalidNonce,
  FirebaseAuthErrorsCodesEnum.missingMultiFactorInfo:
      FirebaseAuthErrorMessages.missingMultiFactorInfo,
  FirebaseAuthErrorsCodesEnum.missingMultiFactorSession:
      FirebaseAuthErrorMessages.missingMultiFactorSession,
  FirebaseAuthErrorsCodesEnum.missingPhoneNumber:
      FirebaseAuthErrorMessages.missingPhoneNumber,
  FirebaseAuthErrorsCodesEnum.missingVerificationId:
      FirebaseAuthErrorMessages.missingVerificationId,
  FirebaseAuthErrorsCodesEnum.appDeleted: FirebaseAuthErrorMessages.appDeleted,
  FirebaseAuthErrorsCodesEnum.accountExistsWithDifferentCredential:
      FirebaseAuthErrorMessages.accountExistsWithDifferentCredential,
  FirebaseAuthErrorsCodesEnum.networkRequestFailed:
      FirebaseAuthErrorMessages.networkRequestFailed,
  FirebaseAuthErrorsCodesEnum.nullUser: FirebaseAuthErrorMessages.nullUser,
  FirebaseAuthErrorsCodesEnum.noAuthEvent:
      FirebaseAuthErrorMessages.noAuthEvent,
  FirebaseAuthErrorsCodesEnum.noSuchProvider:
      FirebaseAuthErrorMessages.noSuchProvider,
  FirebaseAuthErrorsCodesEnum.operationNotAllowed:
      FirebaseAuthErrorMessages.operationNotAllowed,
  FirebaseAuthErrorsCodesEnum.operationNotSupportedInThisEnvironment:
      FirebaseAuthErrorMessages.operationNotSupportedInThisEnvironment,
  FirebaseAuthErrorsCodesEnum.popupBlocked:
      FirebaseAuthErrorMessages.popupBlocked,
  FirebaseAuthErrorsCodesEnum.popupClosedByUser:
      FirebaseAuthErrorMessages.popupClosedByUser,
  FirebaseAuthErrorsCodesEnum.providerAlreadyLinked:
      FirebaseAuthErrorMessages.providerAlreadyLinked,
  FirebaseAuthErrorsCodesEnum.quotaExceeded:
      FirebaseAuthErrorMessages.quotaExceeded,
  FirebaseAuthErrorsCodesEnum.redirectCancelledByUser:
      FirebaseAuthErrorMessages.redirectCancelledByUser,
  FirebaseAuthErrorsCodesEnum.redirectOperationPending:
      FirebaseAuthErrorMessages.redirectOperationPending,
  FirebaseAuthErrorsCodesEnum.rejectedCredential:
      FirebaseAuthErrorMessages.rejectedCredential,
  FirebaseAuthErrorsCodesEnum.secondFactorAlreadyInUse:
      FirebaseAuthErrorMessages.secondFactorAlreadyInUse,
  FirebaseAuthErrorsCodesEnum.maximumSecondFactorCountExceeded:
      FirebaseAuthErrorMessages.maximumSecondFactorCountExceeded,
  FirebaseAuthErrorsCodesEnum.tenantIdMismatch:
      FirebaseAuthErrorMessages.tenantIdMismatch,
  FirebaseAuthErrorsCodesEnum.timeout: FirebaseAuthErrorMessages.timeout,
  FirebaseAuthErrorsCodesEnum.userTokenExpired:
      FirebaseAuthErrorMessages.userTokenExpired,
  FirebaseAuthErrorsCodesEnum.tooManyRequests:
      FirebaseAuthErrorMessages.tooManyRequests,
  FirebaseAuthErrorsCodesEnum.unauthorizedContinueUri:
      FirebaseAuthErrorMessages.unauthorizedContinueUri,
  FirebaseAuthErrorsCodesEnum.unsupportedFirstFactor:
      FirebaseAuthErrorMessages.unsupportedFirstFactor,
  FirebaseAuthErrorsCodesEnum.unsupportedPersistenceType:
      FirebaseAuthErrorMessages.unsupportedPersistenceType,
  FirebaseAuthErrorsCodesEnum.unsupportedTenantOperation:
      FirebaseAuthErrorMessages.unsupportedTenantOperation,
  FirebaseAuthErrorsCodesEnum.unverifiedEmail:
      FirebaseAuthErrorMessages.unverifiedEmail,
  FirebaseAuthErrorsCodesEnum.userCancelled:
      FirebaseAuthErrorMessages.userCancelled,
  FirebaseAuthErrorsCodesEnum.userNotFound:
      FirebaseAuthErrorMessages.userNotFound,
  FirebaseAuthErrorsCodesEnum.userDisabled:
      FirebaseAuthErrorMessages.userDisabled,
  FirebaseAuthErrorsCodesEnum.userMismatch:
      FirebaseAuthErrorMessages.userMismatch,
  FirebaseAuthErrorsCodesEnum.userSignedOut:
      FirebaseAuthErrorMessages.userSignedOut,
  FirebaseAuthErrorsCodesEnum.weakPassword:
      FirebaseAuthErrorMessages.weakPassword,
  FirebaseAuthErrorsCodesEnum.webStorageUnsupported:
      FirebaseAuthErrorMessages.webStorageUnsupported,
  FirebaseAuthErrorsCodesEnum.alreadyInitialized:
      FirebaseAuthErrorMessages.alreadyInitialized,
  FirebaseAuthErrorsCodesEnum.recaptchaNotEnabled:
      FirebaseAuthErrorMessages.recaptchaNotEnabled,
  FirebaseAuthErrorsCodesEnum.missingRecaptchaToken:
      FirebaseAuthErrorMessages.missingRecaptchaToken,
  FirebaseAuthErrorsCodesEnum.invalidRecaptchaToken:
      FirebaseAuthErrorMessages.invalidRecaptchaToken,
  FirebaseAuthErrorsCodesEnum.invalidRecaptchaAction:
      FirebaseAuthErrorMessages.invalidRecaptchaAction,
  FirebaseAuthErrorsCodesEnum.missingClientType:
      FirebaseAuthErrorMessages.missingClientType,
  FirebaseAuthErrorsCodesEnum.missingRecaptchaVersion:
      FirebaseAuthErrorMessages.missingRecaptchaVersion,
  FirebaseAuthErrorsCodesEnum.invalidRecaptchaVersion:
      FirebaseAuthErrorMessages.invalidRecaptchaVersion,
  FirebaseAuthErrorsCodesEnum.invalidReqType:
      FirebaseAuthErrorMessages.invalidReqType,
  FirebaseAuthErrorsCodesEnum.unknownError:
      FirebaseAuthErrorMessages.unknownError,
};
Map<FirebaseAuthErrorsCodesEnum, IconData> getFirebaseAuthIcon = {
  FirebaseAuthErrorsCodesEnum.adminRestrictedOperation:
      Icons.admin_panel_settings,
  FirebaseAuthErrorsCodesEnum.argumentError: Icons.error,
  FirebaseAuthErrorsCodesEnum.appNotAuthorized: Icons.error,
  FirebaseAuthErrorsCodesEnum.appNotInstalled: Icons.error,
  FirebaseAuthErrorsCodesEnum.captchaCheckFailed: Icons.error,
  FirebaseAuthErrorsCodesEnum.codeExpired: Icons.error,
  FirebaseAuthErrorsCodesEnum.cordovaNotReady: Icons.error,
  FirebaseAuthErrorsCodesEnum.corsUnsupported: Icons.error,
  FirebaseAuthErrorsCodesEnum.credentialAlreadyInUse: Icons.error,
  FirebaseAuthErrorsCodesEnum.customTokenMismatch: Icons.error,
  FirebaseAuthErrorsCodesEnum.requiresRecentLogin: Icons.error,
  FirebaseAuthErrorsCodesEnum.dependentSdkInitializedBeforeAuth: Icons.error,
  FirebaseAuthErrorsCodesEnum.dynamicLinkNotActivated: Icons.error,
  FirebaseAuthErrorsCodesEnum.emailChangeNeedsVerification: Icons.error,
  FirebaseAuthErrorsCodesEnum.emailAlreadyInUse: Icons.error,
  FirebaseAuthErrorsCodesEnum.emulatorConfigFailed: Icons.error,
  FirebaseAuthErrorsCodesEnum.expiredActionCode: Icons.error,
  FirebaseAuthErrorsCodesEnum.cancelledPopupRequest: Icons.error,
  FirebaseAuthErrorsCodesEnum.internalError: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidApiKey: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidAppCredential: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidAppId: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidUserToken: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidAuthEvent: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidCertHash: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidVerificationCode: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidContinueUri: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidCordovaConfiguration: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidCustomToken: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidDynamicLinkDomain: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidEmail: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidEmulatorScheme: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidCredential: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidMessagePayload: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidMultiFactorSession: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidOauthClientId: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidOauthProvider: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidActionCode: Icons.error,
  FirebaseAuthErrorsCodesEnum.unauthorizedDomain: Icons.error,
  FirebaseAuthErrorsCodesEnum.wrongPassword: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidPersistenceType: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidPhoneNumber: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidProviderId: Icons.error,
  FirebaseAuthErrorsCodesEnum.invalidRecipientEmail: Icons.error,
};

Map<String, FirebaseAuthErrorsCodesEnum> errorsCodes = {
  'admin-restricted-operation':
      FirebaseAuthErrorsCodesEnum.adminRestrictedOperation,
  'argument-error': FirebaseAuthErrorsCodesEnum.argumentError,
  'app-not-authorized': FirebaseAuthErrorsCodesEnum.appNotAuthorized,
  'app-not-installed': FirebaseAuthErrorsCodesEnum.appNotInstalled,
  'captcha-check-failed': FirebaseAuthErrorsCodesEnum.captchaCheckFailed,
  'code-expired': FirebaseAuthErrorsCodesEnum.codeExpired,
  'cordova-not-ready': FirebaseAuthErrorsCodesEnum.cordovaNotReady,
  'cors-unsupported': FirebaseAuthErrorsCodesEnum.corsUnsupported,
  'credential-already-in-use':
      FirebaseAuthErrorsCodesEnum.credentialAlreadyInUse,
  'custom-token-mismatch': FirebaseAuthErrorsCodesEnum.customTokenMismatch,
  'requires-recent-login': FirebaseAuthErrorsCodesEnum.requiresRecentLogin,
  'dependent-sdk-initialized-before-auth':
      FirebaseAuthErrorsCodesEnum.dependentSdkInitializedBeforeAuth,
  'dynamic-link-not-activated':
      FirebaseAuthErrorsCodesEnum.dynamicLinkNotActivated,
  'email-change-needs-verification':
      FirebaseAuthErrorsCodesEnum.emailChangeNeedsVerification,
  'email-already-in-use': FirebaseAuthErrorsCodesEnum.emailAlreadyInUse,
  'emulator-config-failed': FirebaseAuthErrorsCodesEnum.emulatorConfigFailed,
  'expired-action-code': FirebaseAuthErrorsCodesEnum.expiredActionCode,
  'cancelled-popup-request': FirebaseAuthErrorsCodesEnum.cancelledPopupRequest,
  'internal-error': FirebaseAuthErrorsCodesEnum.internalError,
  'invalid-api-key': FirebaseAuthErrorsCodesEnum.invalidApiKey,
  'invalid-app-credential': FirebaseAuthErrorsCodesEnum.invalidAppCredential,
  'invalid-app-id': FirebaseAuthErrorsCodesEnum.invalidAppId,
  'invalid-user-token': FirebaseAuthErrorsCodesEnum.invalidUserToken,
  'invalid-auth-event': FirebaseAuthErrorsCodesEnum.invalidAuthEvent,
  'invalid-cert-hash': FirebaseAuthErrorsCodesEnum.invalidCertHash,
  'invalid-verification-code':
      FirebaseAuthErrorsCodesEnum.invalidVerificationCode,
  'invalid-continue-uri': FirebaseAuthErrorsCodesEnum.invalidContinueUri,
  'invalid-cordova-configuration':
      FirebaseAuthErrorsCodesEnum.invalidCordovaConfiguration,
  'invalid-custom-token': FirebaseAuthErrorsCodesEnum.invalidCustomToken,
  'invalid-dynamic-link-domain':
      FirebaseAuthErrorsCodesEnum.invalidDynamicLinkDomain,
  'invalid-email': FirebaseAuthErrorsCodesEnum.invalidEmail,
  'invalid-emulator-scheme': FirebaseAuthErrorsCodesEnum.invalidEmulatorScheme,
  'invalid-credential': FirebaseAuthErrorsCodesEnum.invalidCredential,
  'invalid-message-payload': FirebaseAuthErrorsCodesEnum.invalidMessagePayload,
  'invalid-multi-factor-session':
      FirebaseAuthErrorsCodesEnum.invalidMultiFactorSession,
  'invalid-oauth-client-id': FirebaseAuthErrorsCodesEnum.invalidOauthClientId,
  'invalid-oauth-provider': FirebaseAuthErrorsCodesEnum.invalidOauthProvider,
  'invalid-action-code': FirebaseAuthErrorsCodesEnum.invalidActionCode,
  'unauthorized-domain': FirebaseAuthErrorsCodesEnum.unauthorizedDomain,
  'wrong-password': FirebaseAuthErrorsCodesEnum.wrongPassword,
  'invalid-persistence-type':
      FirebaseAuthErrorsCodesEnum.invalidPersistenceType,
  'invalid-phone-number': FirebaseAuthErrorsCodesEnum.invalidPhoneNumber,
  'invalid-provider-id': FirebaseAuthErrorsCodesEnum.invalidProviderId,
  'invalid-recipient-email': FirebaseAuthErrorsCodesEnum.invalidRecipientEmail,
  'invalid-sender': FirebaseAuthErrorsCodesEnum.invalidSender,
  'invalid-verification-id': FirebaseAuthErrorsCodesEnum.invalidVerificationId,
  'invalid-tenant-id': FirebaseAuthErrorsCodesEnum.invalidTenantId,
  'multi-factor-info-not-found':
      FirebaseAuthErrorsCodesEnum.multiFactorInfoNotFound,
  'multi-factor-auth-required':
      FirebaseAuthErrorsCodesEnum.multiFactorAuthRequired,
  'missing-android-pkg-name': FirebaseAuthErrorsCodesEnum.missingAndroidPkgName,
  'missing-app-credential': FirebaseAuthErrorsCodesEnum.missingAppCredential,
  'auth-domain-config-required':
      FirebaseAuthErrorsCodesEnum.authDomainConfigRequired,
  'missing-verification-code':
      FirebaseAuthErrorsCodesEnum.missingVerificationCode,
  'missing-continue-uri': FirebaseAuthErrorsCodesEnum.missingContinueUri,
  'missing-iframe-start': FirebaseAuthErrorsCodesEnum.missingIframeStart,
  'missing-ios-bundle-id': FirebaseAuthErrorsCodesEnum.missingIosBundleId,
  'missing-or-invalid-nonce': FirebaseAuthErrorsCodesEnum.missingOrInvalidNonce,
  'missing-multi-factor-info':
      FirebaseAuthErrorsCodesEnum.missingMultiFactorInfo,
  'missing-multi-factor-session':
      FirebaseAuthErrorsCodesEnum.missingMultiFactorSession,
  'missing-phone-number': FirebaseAuthErrorsCodesEnum.missingPhoneNumber,
  'missing-verification-id': FirebaseAuthErrorsCodesEnum.missingVerificationId,
  'app-deleted': FirebaseAuthErrorsCodesEnum.appDeleted,
  'account-exists-with-different-credential':
      FirebaseAuthErrorsCodesEnum.accountExistsWithDifferentCredential,
  'network-request-failed': FirebaseAuthErrorsCodesEnum.networkRequestFailed,
  'null-user': FirebaseAuthErrorsCodesEnum.nullUser,
  'no-auth-event': FirebaseAuthErrorsCodesEnum.noAuthEvent,
  'no-such-provider': FirebaseAuthErrorsCodesEnum.noSuchProvider,
  'operation-not-allowed': FirebaseAuthErrorsCodesEnum.operationNotAllowed,
  'operation-not-supported-in-this-environment':
      FirebaseAuthErrorsCodesEnum.operationNotSupportedInThisEnvironment,
  'popup-blocked': FirebaseAuthErrorsCodesEnum.popupBlocked,
  'popup-closed-by-user': FirebaseAuthErrorsCodesEnum.popupClosedByUser,
  'provider-already-linked': FirebaseAuthErrorsCodesEnum.providerAlreadyLinked,
  'quota-exceeded': FirebaseAuthErrorsCodesEnum.quotaExceeded,
  'redirect-cancelled-by-user':
      FirebaseAuthErrorsCodesEnum.redirectCancelledByUser,
  'redirect-operation-pending':
      FirebaseAuthErrorsCodesEnum.redirectOperationPending,
  'rejected-credential': FirebaseAuthErrorsCodesEnum.rejectedCredential,
  'second-factor-already-in-use':
      FirebaseAuthErrorsCodesEnum.secondFactorAlreadyInUse,
  'maximum-second-factor-count-exceeded':
      FirebaseAuthErrorsCodesEnum.maximumSecondFactorCountExceeded,
  'tenant-id-mismatch': FirebaseAuthErrorsCodesEnum.tenantIdMismatch,
  'timeout': FirebaseAuthErrorsCodesEnum.timeout,
  'user-token-expired': FirebaseAuthErrorsCodesEnum.userTokenExpired,
  'too-many-requests': FirebaseAuthErrorsCodesEnum.tooManyRequests,
  'unauthorized-continue-uri':
      FirebaseAuthErrorsCodesEnum.unauthorizedContinueUri,
  'unsupported-first-factor':
      FirebaseAuthErrorsCodesEnum.unsupportedFirstFactor,
  'unsupported-persistence-type':
      FirebaseAuthErrorsCodesEnum.unsupportedPersistenceType,
  'unsupported-tenant-operation':
      FirebaseAuthErrorsCodesEnum.unsupportedTenantOperation,
  'unverified-email': FirebaseAuthErrorsCodesEnum.unverifiedEmail,
  'user-cancelled': FirebaseAuthErrorsCodesEnum.userCancelled,
  'user-not-found': FirebaseAuthErrorsCodesEnum.userNotFound,
  'user-disabled': FirebaseAuthErrorsCodesEnum.userDisabled,
  'user-mismatch': FirebaseAuthErrorsCodesEnum.userMismatch,
  'user-signed-out': FirebaseAuthErrorsCodesEnum.userSignedOut,
  'weak-password': FirebaseAuthErrorsCodesEnum.weakPassword,
  'web-storage-unsupported': FirebaseAuthErrorsCodesEnum.webStorageUnsupported,
  'already-initialized': FirebaseAuthErrorsCodesEnum.alreadyInitialized,
  'recaptcha-not-enabled': FirebaseAuthErrorsCodesEnum.recaptchaNotEnabled,
  'missing-recaptcha-token': FirebaseAuthErrorsCodesEnum.missingRecaptchaToken,
  'invalid-recaptcha-token': FirebaseAuthErrorsCodesEnum.invalidRecaptchaToken,
  'invalid-recaptcha-action':
      FirebaseAuthErrorsCodesEnum.invalidRecaptchaAction,
  'missing-client-type': FirebaseAuthErrorsCodesEnum.missingClientType,
  'missing-recaptcha-version':
      FirebaseAuthErrorsCodesEnum.missingRecaptchaVersion,
  'invalid-recaptcha-version':
      FirebaseAuthErrorsCodesEnum.invalidRecaptchaVersion,
  'invalid-req-type': FirebaseAuthErrorsCodesEnum.invalidReqType,
  'unknown-error': FirebaseAuthErrorsCodesEnum.unknownError,
};

