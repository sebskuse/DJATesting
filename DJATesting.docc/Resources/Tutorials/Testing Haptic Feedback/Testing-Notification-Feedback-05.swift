import XCTest
import DJATesting
@testable import MyApp

final class NotificationDisplayControllerTests: XCTestCase {
    private var notificationDisplayController: NotificationDisplayController!
    private var mockNotificationFeedbackGenerator: MockNotificationFeedbackGenerator!
    
    override func setUp() {
        super.setUp()
        mockNotificationFeedbackGenerator = MockNotificationFeedbackGenerator()
    }
    
    override func tearDown() {
        notificationDisplayController = nil
        mockNotificationFeedbackGenerator = nil
        super.tearDown()
    }
    
    private func givenANotificationDisplayController() {
        notificationDisplayController = NotificationDisplayController(contentViewController: UIViewController(),
                                                                      notificationFeedbackGenerator: mockNotificationFeedbackGenerator)
    }
    
    private func whenTheNotificationDisplayController(receivesNotification notification: NotificationDisplayController.Notification) {
        notificationDisplayController.display(notification: notification)
    }
}