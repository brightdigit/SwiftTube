import Prch

extension Result {
  init<DefaultResponseType>(
    response: ClientResult<Success, DefaultResponseType>
  ) where Failure == Error {
    let value: Success
    do {
      value = try response.get()
      self = .success(value)
    } catch {
      self = .failure(error)
    }
  }
}
