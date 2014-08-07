func compact<T>(collection: [T?]) -> [T] {
  return filter(collection) {
    if $0 {
      return true
    } else {
      return false
    }
  }.map { $0! }
}

func >>=<A, B>(source: A?, f: A -> B?) -> B? {
  if source {
    return f(source!)
  } else {
    return nil
  }
}

func ||=<T>(value: T?, defaultValue: T) -> T {
  if let actualValue = value {
    return actualValue
  }
  return defaultValue
}
