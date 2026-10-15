
import SwiftUI

struct HomeView: View {

    @AppStorage("onboarding") private var isOnboardingViewActive = false
    @State private var isAnimating = false

    var body: some View {
        VStack {
            Spacer()

            ZStack {
                CircleGray()

                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 26)
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(
                        .easeInOut(duration: 4)
                            .repeatForever(autoreverses: true),
                        value: isAnimating
                    )
            }

            Text("""
            The time that leads to mastery is
            dependent on the intensity of our focus.
            """)
                .multilineTextAlignment(.center)

            Text("Restart")
                .font(.system(.title3, design: .rounded))
                .fontWeight(.bold)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                isAnimating = true
            }
        }
    }
}

#Preview {
    HomeView()
}
