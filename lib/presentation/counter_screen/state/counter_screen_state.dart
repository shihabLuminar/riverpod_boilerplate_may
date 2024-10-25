class CounterScreenState {
  int counter;
  bool isLoading;
  String? name;
  String? course;

  CounterScreenState({
    required this.counter,
    this.name,
    this.course,
    required this.isLoading,
  });

  CounterScreenState copyWith(
      {int? counter, bool? isLoading, String? name, String? course}) {
    return CounterScreenState(
        counter: counter ?? this.counter,
        isLoading: isLoading ?? this.isLoading,
        name: name ?? this.name,
        course: course ?? this.course);
  }
}
