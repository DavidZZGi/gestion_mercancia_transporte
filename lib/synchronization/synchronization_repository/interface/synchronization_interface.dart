abstract class SynchronizationInterface {
  Future<void> uploadDataToServer();
  Future<void> downloadDataFromServer();
}
