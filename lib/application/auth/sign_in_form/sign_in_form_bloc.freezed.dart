// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  RegisterWithEmailAndPasswordPress registerWithEmailAndPasswordPress() {
    return const RegisterWithEmailAndPasswordPress();
  }

// ignore: unused_element
  SignInWithEmailAndPasswordPress signInWithEmailAndPasswordPress() {
    return const SignInWithEmailAndPasswordPress();
  }

// ignore: unused_element
  SignInWithGooglePress signInWithGooglePress() {
    return const SignInWithGooglePress();
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithEmailAndPasswordPress(),
    @required TResult signInWithEmailAndPasswordPress(),
    @required TResult signInWithGooglePress(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithEmailAndPasswordPress(),
    TResult signInWithEmailAndPasswordPress(),
    TResult signInWithGooglePress(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required
        TResult registerWithEmailAndPasswordPress(
            RegisterWithEmailAndPasswordPress value),
    @required
        TResult signInWithEmailAndPasswordPress(
            SignInWithEmailAndPasswordPress value),
    @required TResult signInWithGooglePress(SignInWithGooglePress value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult registerWithEmailAndPasswordPress(
        RegisterWithEmailAndPasswordPress value),
    TResult signInWithEmailAndPasswordPress(
        SignInWithEmailAndPasswordPress value),
    TResult signInWithGooglePress(SignInWithGooglePress value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithEmailAndPasswordPress(),
    @required TResult signInWithEmailAndPasswordPress(),
    @required TResult signInWithGooglePress(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGooglePress != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithEmailAndPasswordPress(),
    TResult signInWithEmailAndPasswordPress(),
    TResult signInWithGooglePress(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required
        TResult registerWithEmailAndPasswordPress(
            RegisterWithEmailAndPasswordPress value),
    @required
        TResult signInWithEmailAndPasswordPress(
            SignInWithEmailAndPasswordPress value),
    @required TResult signInWithGooglePress(SignInWithGooglePress value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGooglePress != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult registerWithEmailAndPasswordPress(
        RegisterWithEmailAndPasswordPress value),
    TResult signInWithEmailAndPasswordPress(
        SignInWithEmailAndPasswordPress value),
    TResult signInWithGooglePress(SignInWithGooglePress value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithEmailAndPasswordPress(),
    @required TResult signInWithEmailAndPasswordPress(),
    @required TResult signInWithGooglePress(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGooglePress != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithEmailAndPasswordPress(),
    TResult signInWithEmailAndPasswordPress(),
    TResult signInWithGooglePress(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required
        TResult registerWithEmailAndPasswordPress(
            RegisterWithEmailAndPasswordPress value),
    @required
        TResult signInWithEmailAndPasswordPress(
            SignInWithEmailAndPasswordPress value),
    @required TResult signInWithGooglePress(SignInWithGooglePress value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGooglePress != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult registerWithEmailAndPasswordPress(
        RegisterWithEmailAndPasswordPress value),
    TResult signInWithEmailAndPasswordPress(
        SignInWithEmailAndPasswordPress value),
    TResult signInWithGooglePress(SignInWithGooglePress value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $RegisterWithEmailAndPasswordPressCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressCopyWith(
          RegisterWithEmailAndPasswordPress value,
          $Res Function(RegisterWithEmailAndPasswordPress) then) =
      _$RegisterWithEmailAndPasswordPressCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressCopyWithImpl(
      RegisterWithEmailAndPasswordPress _value,
      $Res Function(RegisterWithEmailAndPasswordPress) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPress));

  @override
  RegisterWithEmailAndPasswordPress get _value =>
      super._value as RegisterWithEmailAndPasswordPress;
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPress
    implements RegisterWithEmailAndPasswordPress {
  const _$RegisterWithEmailAndPasswordPress();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithEmailAndPasswordPress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPasswordPress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithEmailAndPasswordPress(),
    @required TResult signInWithEmailAndPasswordPress(),
    @required TResult signInWithGooglePress(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGooglePress != null);
    return registerWithEmailAndPasswordPress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithEmailAndPasswordPress(),
    TResult signInWithEmailAndPasswordPress(),
    TResult signInWithGooglePress(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPress != null) {
      return registerWithEmailAndPasswordPress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required
        TResult registerWithEmailAndPasswordPress(
            RegisterWithEmailAndPasswordPress value),
    @required
        TResult signInWithEmailAndPasswordPress(
            SignInWithEmailAndPasswordPress value),
    @required TResult signInWithGooglePress(SignInWithGooglePress value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGooglePress != null);
    return registerWithEmailAndPasswordPress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult registerWithEmailAndPasswordPress(
        RegisterWithEmailAndPasswordPress value),
    TResult signInWithEmailAndPasswordPress(
        SignInWithEmailAndPasswordPress value),
    TResult signInWithGooglePress(SignInWithGooglePress value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPress != null) {
      return registerWithEmailAndPasswordPress(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPress implements SignInFormEvent {
  const factory RegisterWithEmailAndPasswordPress() =
      _$RegisterWithEmailAndPasswordPress;
}

/// @nodoc
abstract class $SignInWithEmailAndPasswordPressCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordPressCopyWith(
          SignInWithEmailAndPasswordPress value,
          $Res Function(SignInWithEmailAndPasswordPress) then) =
      _$SignInWithEmailAndPasswordPressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithEmailAndPasswordPressCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordPressCopyWith<$Res> {
  _$SignInWithEmailAndPasswordPressCopyWithImpl(
      SignInWithEmailAndPasswordPress _value,
      $Res Function(SignInWithEmailAndPasswordPress) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPasswordPress));

  @override
  SignInWithEmailAndPasswordPress get _value =>
      super._value as SignInWithEmailAndPasswordPress;
}

/// @nodoc
class _$SignInWithEmailAndPasswordPress
    implements SignInWithEmailAndPasswordPress {
  const _$SignInWithEmailAndPasswordPress();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailAndPasswordPress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithEmailAndPasswordPress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithEmailAndPasswordPress(),
    @required TResult signInWithEmailAndPasswordPress(),
    @required TResult signInWithGooglePress(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGooglePress != null);
    return signInWithEmailAndPasswordPress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithEmailAndPasswordPress(),
    TResult signInWithEmailAndPasswordPress(),
    TResult signInWithGooglePress(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPress != null) {
      return signInWithEmailAndPasswordPress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required
        TResult registerWithEmailAndPasswordPress(
            RegisterWithEmailAndPasswordPress value),
    @required
        TResult signInWithEmailAndPasswordPress(
            SignInWithEmailAndPasswordPress value),
    @required TResult signInWithGooglePress(SignInWithGooglePress value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGooglePress != null);
    return signInWithEmailAndPasswordPress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult registerWithEmailAndPasswordPress(
        RegisterWithEmailAndPasswordPress value),
    TResult signInWithEmailAndPasswordPress(
        SignInWithEmailAndPasswordPress value),
    TResult signInWithGooglePress(SignInWithGooglePress value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPress != null) {
      return signInWithEmailAndPasswordPress(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPress implements SignInFormEvent {
  const factory SignInWithEmailAndPasswordPress() =
      _$SignInWithEmailAndPasswordPress;
}

/// @nodoc
abstract class $SignInWithGooglePressCopyWith<$Res> {
  factory $SignInWithGooglePressCopyWith(SignInWithGooglePress value,
          $Res Function(SignInWithGooglePress) then) =
      _$SignInWithGooglePressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithGooglePressCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithGooglePressCopyWith<$Res> {
  _$SignInWithGooglePressCopyWithImpl(
      SignInWithGooglePress _value, $Res Function(SignInWithGooglePress) _then)
      : super(_value, (v) => _then(v as SignInWithGooglePress));

  @override
  SignInWithGooglePress get _value => super._value as SignInWithGooglePress;
}

/// @nodoc
class _$SignInWithGooglePress implements SignInWithGooglePress {
  const _$SignInWithGooglePress();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGooglePress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGooglePress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String emailStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithEmailAndPasswordPress(),
    @required TResult signInWithEmailAndPasswordPress(),
    @required TResult signInWithGooglePress(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGooglePress != null);
    return signInWithGooglePress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String emailStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithEmailAndPasswordPress(),
    TResult signInWithEmailAndPasswordPress(),
    TResult signInWithGooglePress(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePress != null) {
      return signInWithGooglePress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required
        TResult registerWithEmailAndPasswordPress(
            RegisterWithEmailAndPasswordPress value),
    @required
        TResult signInWithEmailAndPasswordPress(
            SignInWithEmailAndPasswordPress value),
    @required TResult signInWithGooglePress(SignInWithGooglePress value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGooglePress != null);
    return signInWithGooglePress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult registerWithEmailAndPasswordPress(
        RegisterWithEmailAndPasswordPress value),
    TResult signInWithEmailAndPasswordPress(
        SignInWithEmailAndPasswordPress value),
    TResult signInWithGooglePress(SignInWithGooglePress value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePress != null) {
      return signInWithGooglePress(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePress implements SignInFormEvent {
  const factory SignInWithGooglePress() = _$SignInWithGooglePress;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

// ignore: unused_element
  _SignInFormState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get emailAddress;
  Password get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
