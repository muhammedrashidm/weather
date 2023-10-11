// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double lat, double long) fetchWithCords,
    required TResult Function(double lat, double long) getForecastData,
    required TResult Function() getCachedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double lat, double long)? fetchWithCords,
    TResult? Function(double lat, double long)? getForecastData,
    TResult? Function()? getCachedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double lat, double long)? fetchWithCords,
    TResult Function(double lat, double long)? getForecastData,
    TResult Function()? getCachedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherEventStarted value) started,
    required TResult Function(_WeatherEventFetchWithCord value) fetchWithCords,
    required TResult Function(_WeatherEventGetForecastData value)
        getForecastData,
    required TResult Function(_WeatherEventGetCachedData value) getCachedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherEventStarted value)? started,
    TResult? Function(_WeatherEventFetchWithCord value)? fetchWithCords,
    TResult? Function(_WeatherEventGetForecastData value)? getForecastData,
    TResult? Function(_WeatherEventGetCachedData value)? getCachedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherEventStarted value)? started,
    TResult Function(_WeatherEventFetchWithCord value)? fetchWithCords,
    TResult Function(_WeatherEventGetForecastData value)? getForecastData,
    TResult Function(_WeatherEventGetCachedData value)? getCachedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherEventStartedImplCopyWith<$Res> {
  factory _$$WeatherEventStartedImplCopyWith(_$WeatherEventStartedImpl value,
          $Res Function(_$WeatherEventStartedImpl) then) =
      __$$WeatherEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherEventStartedImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$WeatherEventStartedImpl>
    implements _$$WeatherEventStartedImplCopyWith<$Res> {
  __$$WeatherEventStartedImplCopyWithImpl(_$WeatherEventStartedImpl _value,
      $Res Function(_$WeatherEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherEventStartedImpl implements _WeatherEventStarted {
  const _$WeatherEventStartedImpl();

  @override
  String toString() {
    return 'WeatherEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double lat, double long) fetchWithCords,
    required TResult Function(double lat, double long) getForecastData,
    required TResult Function() getCachedData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double lat, double long)? fetchWithCords,
    TResult? Function(double lat, double long)? getForecastData,
    TResult? Function()? getCachedData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double lat, double long)? fetchWithCords,
    TResult Function(double lat, double long)? getForecastData,
    TResult Function()? getCachedData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherEventStarted value) started,
    required TResult Function(_WeatherEventFetchWithCord value) fetchWithCords,
    required TResult Function(_WeatherEventGetForecastData value)
        getForecastData,
    required TResult Function(_WeatherEventGetCachedData value) getCachedData,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherEventStarted value)? started,
    TResult? Function(_WeatherEventFetchWithCord value)? fetchWithCords,
    TResult? Function(_WeatherEventGetForecastData value)? getForecastData,
    TResult? Function(_WeatherEventGetCachedData value)? getCachedData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherEventStarted value)? started,
    TResult Function(_WeatherEventFetchWithCord value)? fetchWithCords,
    TResult Function(_WeatherEventGetForecastData value)? getForecastData,
    TResult Function(_WeatherEventGetCachedData value)? getCachedData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _WeatherEventStarted implements WeatherEvent {
  const factory _WeatherEventStarted() = _$WeatherEventStartedImpl;
}

/// @nodoc
abstract class _$$WeatherEventFetchWithCordImplCopyWith<$Res> {
  factory _$$WeatherEventFetchWithCordImplCopyWith(
          _$WeatherEventFetchWithCordImpl value,
          $Res Function(_$WeatherEventFetchWithCordImpl) then) =
      __$$WeatherEventFetchWithCordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double lat, double long});
}

/// @nodoc
class __$$WeatherEventFetchWithCordImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$WeatherEventFetchWithCordImpl>
    implements _$$WeatherEventFetchWithCordImplCopyWith<$Res> {
  __$$WeatherEventFetchWithCordImplCopyWithImpl(
      _$WeatherEventFetchWithCordImpl _value,
      $Res Function(_$WeatherEventFetchWithCordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$WeatherEventFetchWithCordImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$WeatherEventFetchWithCordImpl implements _WeatherEventFetchWithCord {
  const _$WeatherEventFetchWithCordImpl(
      {required this.lat, required this.long});

  @override
  final double lat;
  @override
  final double long;

  @override
  String toString() {
    return 'WeatherEvent.fetchWithCords(lat: $lat, long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherEventFetchWithCordImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherEventFetchWithCordImplCopyWith<_$WeatherEventFetchWithCordImpl>
      get copyWith => __$$WeatherEventFetchWithCordImplCopyWithImpl<
          _$WeatherEventFetchWithCordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double lat, double long) fetchWithCords,
    required TResult Function(double lat, double long) getForecastData,
    required TResult Function() getCachedData,
  }) {
    return fetchWithCords(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double lat, double long)? fetchWithCords,
    TResult? Function(double lat, double long)? getForecastData,
    TResult? Function()? getCachedData,
  }) {
    return fetchWithCords?.call(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double lat, double long)? fetchWithCords,
    TResult Function(double lat, double long)? getForecastData,
    TResult Function()? getCachedData,
    required TResult orElse(),
  }) {
    if (fetchWithCords != null) {
      return fetchWithCords(lat, long);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherEventStarted value) started,
    required TResult Function(_WeatherEventFetchWithCord value) fetchWithCords,
    required TResult Function(_WeatherEventGetForecastData value)
        getForecastData,
    required TResult Function(_WeatherEventGetCachedData value) getCachedData,
  }) {
    return fetchWithCords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherEventStarted value)? started,
    TResult? Function(_WeatherEventFetchWithCord value)? fetchWithCords,
    TResult? Function(_WeatherEventGetForecastData value)? getForecastData,
    TResult? Function(_WeatherEventGetCachedData value)? getCachedData,
  }) {
    return fetchWithCords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherEventStarted value)? started,
    TResult Function(_WeatherEventFetchWithCord value)? fetchWithCords,
    TResult Function(_WeatherEventGetForecastData value)? getForecastData,
    TResult Function(_WeatherEventGetCachedData value)? getCachedData,
    required TResult orElse(),
  }) {
    if (fetchWithCords != null) {
      return fetchWithCords(this);
    }
    return orElse();
  }
}

abstract class _WeatherEventFetchWithCord implements WeatherEvent {
  const factory _WeatherEventFetchWithCord(
      {required final double lat,
      required final double long}) = _$WeatherEventFetchWithCordImpl;

  double get lat;
  double get long;
  @JsonKey(ignore: true)
  _$$WeatherEventFetchWithCordImplCopyWith<_$WeatherEventFetchWithCordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherEventGetForecastDataImplCopyWith<$Res> {
  factory _$$WeatherEventGetForecastDataImplCopyWith(
          _$WeatherEventGetForecastDataImpl value,
          $Res Function(_$WeatherEventGetForecastDataImpl) then) =
      __$$WeatherEventGetForecastDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double lat, double long});
}

/// @nodoc
class __$$WeatherEventGetForecastDataImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$WeatherEventGetForecastDataImpl>
    implements _$$WeatherEventGetForecastDataImplCopyWith<$Res> {
  __$$WeatherEventGetForecastDataImplCopyWithImpl(
      _$WeatherEventGetForecastDataImpl _value,
      $Res Function(_$WeatherEventGetForecastDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$WeatherEventGetForecastDataImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$WeatherEventGetForecastDataImpl
    implements _WeatherEventGetForecastData {
  const _$WeatherEventGetForecastDataImpl(
      {required this.lat, required this.long});

  @override
  final double lat;
  @override
  final double long;

  @override
  String toString() {
    return 'WeatherEvent.getForecastData(lat: $lat, long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherEventGetForecastDataImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherEventGetForecastDataImplCopyWith<_$WeatherEventGetForecastDataImpl>
      get copyWith => __$$WeatherEventGetForecastDataImplCopyWithImpl<
          _$WeatherEventGetForecastDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double lat, double long) fetchWithCords,
    required TResult Function(double lat, double long) getForecastData,
    required TResult Function() getCachedData,
  }) {
    return getForecastData(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double lat, double long)? fetchWithCords,
    TResult? Function(double lat, double long)? getForecastData,
    TResult? Function()? getCachedData,
  }) {
    return getForecastData?.call(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double lat, double long)? fetchWithCords,
    TResult Function(double lat, double long)? getForecastData,
    TResult Function()? getCachedData,
    required TResult orElse(),
  }) {
    if (getForecastData != null) {
      return getForecastData(lat, long);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherEventStarted value) started,
    required TResult Function(_WeatherEventFetchWithCord value) fetchWithCords,
    required TResult Function(_WeatherEventGetForecastData value)
        getForecastData,
    required TResult Function(_WeatherEventGetCachedData value) getCachedData,
  }) {
    return getForecastData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherEventStarted value)? started,
    TResult? Function(_WeatherEventFetchWithCord value)? fetchWithCords,
    TResult? Function(_WeatherEventGetForecastData value)? getForecastData,
    TResult? Function(_WeatherEventGetCachedData value)? getCachedData,
  }) {
    return getForecastData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherEventStarted value)? started,
    TResult Function(_WeatherEventFetchWithCord value)? fetchWithCords,
    TResult Function(_WeatherEventGetForecastData value)? getForecastData,
    TResult Function(_WeatherEventGetCachedData value)? getCachedData,
    required TResult orElse(),
  }) {
    if (getForecastData != null) {
      return getForecastData(this);
    }
    return orElse();
  }
}

abstract class _WeatherEventGetForecastData implements WeatherEvent {
  const factory _WeatherEventGetForecastData(
      {required final double lat,
      required final double long}) = _$WeatherEventGetForecastDataImpl;

  double get lat;
  double get long;
  @JsonKey(ignore: true)
  _$$WeatherEventGetForecastDataImplCopyWith<_$WeatherEventGetForecastDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherEventGetCachedDataImplCopyWith<$Res> {
  factory _$$WeatherEventGetCachedDataImplCopyWith(
          _$WeatherEventGetCachedDataImpl value,
          $Res Function(_$WeatherEventGetCachedDataImpl) then) =
      __$$WeatherEventGetCachedDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherEventGetCachedDataImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$WeatherEventGetCachedDataImpl>
    implements _$$WeatherEventGetCachedDataImplCopyWith<$Res> {
  __$$WeatherEventGetCachedDataImplCopyWithImpl(
      _$WeatherEventGetCachedDataImpl _value,
      $Res Function(_$WeatherEventGetCachedDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherEventGetCachedDataImpl implements _WeatherEventGetCachedData {
  const _$WeatherEventGetCachedDataImpl();

  @override
  String toString() {
    return 'WeatherEvent.getCachedData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherEventGetCachedDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double lat, double long) fetchWithCords,
    required TResult Function(double lat, double long) getForecastData,
    required TResult Function() getCachedData,
  }) {
    return getCachedData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double lat, double long)? fetchWithCords,
    TResult? Function(double lat, double long)? getForecastData,
    TResult? Function()? getCachedData,
  }) {
    return getCachedData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double lat, double long)? fetchWithCords,
    TResult Function(double lat, double long)? getForecastData,
    TResult Function()? getCachedData,
    required TResult orElse(),
  }) {
    if (getCachedData != null) {
      return getCachedData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherEventStarted value) started,
    required TResult Function(_WeatherEventFetchWithCord value) fetchWithCords,
    required TResult Function(_WeatherEventGetForecastData value)
        getForecastData,
    required TResult Function(_WeatherEventGetCachedData value) getCachedData,
  }) {
    return getCachedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherEventStarted value)? started,
    TResult? Function(_WeatherEventFetchWithCord value)? fetchWithCords,
    TResult? Function(_WeatherEventGetForecastData value)? getForecastData,
    TResult? Function(_WeatherEventGetCachedData value)? getCachedData,
  }) {
    return getCachedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherEventStarted value)? started,
    TResult Function(_WeatherEventFetchWithCord value)? fetchWithCords,
    TResult Function(_WeatherEventGetForecastData value)? getForecastData,
    TResult Function(_WeatherEventGetCachedData value)? getCachedData,
    required TResult orElse(),
  }) {
    if (getCachedData != null) {
      return getCachedData(this);
    }
    return orElse();
  }
}

abstract class _WeatherEventGetCachedData implements WeatherEvent {
  const factory _WeatherEventGetCachedData() = _$WeatherEventGetCachedDataImpl;
}

/// @nodoc
mixin _$WeatherState {
  SingleWeatherData? get whetherModal => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<DayWeatherData> get forecast => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SingleWeatherData? whetherModal, bool isLoading,
            bool hasError, List<DayWeatherData> forecast, String? errorMessage)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SingleWeatherData? whetherModal, bool isLoading,
            bool hasError, List<DayWeatherData> forecast, String? errorMessage)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SingleWeatherData? whetherModal, bool isLoading,
            bool hasError, List<DayWeatherData> forecast, String? errorMessage)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {SingleWeatherData? whetherModal,
      bool isLoading,
      bool hasError,
      List<DayWeatherData> forecast,
      String? errorMessage});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whetherModal = freezed,
    Object? isLoading = null,
    Object? hasError = null,
    Object? forecast = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      whetherModal: freezed == whetherModal
          ? _value.whetherModal
          : whetherModal // ignore: cast_nullable_to_non_nullable
              as SingleWeatherData?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as List<DayWeatherData>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SingleWeatherData? whetherModal,
      bool isLoading,
      bool hasError,
      List<DayWeatherData> forecast,
      String? errorMessage});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whetherModal = freezed,
    Object? isLoading = null,
    Object? hasError = null,
    Object? forecast = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$InitialImpl(
      whetherModal: freezed == whetherModal
          ? _value.whetherModal
          : whetherModal // ignore: cast_nullable_to_non_nullable
              as SingleWeatherData?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      forecast: null == forecast
          ? _value._forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as List<DayWeatherData>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.whetherModal,
      required this.isLoading,
      required this.hasError,
      required final List<DayWeatherData> forecast,
      this.errorMessage})
      : _forecast = forecast;

  @override
  final SingleWeatherData? whetherModal;
  @override
  final bool isLoading;
  @override
  final bool hasError;
  final List<DayWeatherData> _forecast;
  @override
  List<DayWeatherData> get forecast {
    if (_forecast is EqualUnmodifiableListView) return _forecast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecast);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'WeatherState.initial(whetherModal: $whetherModal, isLoading: $isLoading, hasError: $hasError, forecast: $forecast, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.whetherModal, whetherModal) ||
                other.whetherModal == whetherModal) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality().equals(other._forecast, _forecast) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, whetherModal, isLoading,
      hasError, const DeepCollectionEquality().hash(_forecast), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SingleWeatherData? whetherModal, bool isLoading,
            bool hasError, List<DayWeatherData> forecast, String? errorMessage)
        initial,
  }) {
    return initial(whetherModal, isLoading, hasError, forecast, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SingleWeatherData? whetherModal, bool isLoading,
            bool hasError, List<DayWeatherData> forecast, String? errorMessage)?
        initial,
  }) {
    return initial?.call(
        whetherModal, isLoading, hasError, forecast, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SingleWeatherData? whetherModal, bool isLoading,
            bool hasError, List<DayWeatherData> forecast, String? errorMessage)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(whetherModal, isLoading, hasError, forecast, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WeatherState {
  const factory _Initial(
      {final SingleWeatherData? whetherModal,
      required final bool isLoading,
      required final bool hasError,
      required final List<DayWeatherData> forecast,
      final String? errorMessage}) = _$InitialImpl;

  @override
  SingleWeatherData? get whetherModal;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<DayWeatherData> get forecast;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
