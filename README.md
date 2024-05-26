# auto_route_100_exercise

## en

This is a practice repository that 100 exercise using auto_route.

The `exercise~.dart` files are placed under the `lib/exercise/` directory, each containing the source code corresponding to the exercise number.

We are using fvm as the version management tool for Flutter.

## 100 exercises of screen transitions using auto_route

<details>
<summary> list of exercises </summary>

### Basic Screen Transitions

1. Simple Screen Transition: Click a button to navigate to the next screen.
1. Display Text: Show text on the next screen.
1. Back Button: Use the back button to return to the previous screen.
1. Data Passing: Pass input data to the next screen.
1. Navigation Bar: Use the top navigation bar to switch screens.

### Animated Screen Transitions

1. Fade In/Out: Add fade in/out animation during screen transitions.
1. Slide In/Out: Slide the screen in and out during transitions.
1. Rotation Animation: Rotate the screen during transitions.
1. Scale Animation: Scale the screen up or down during transitions.
1. Custom Animation: Implement custom animations for transitions.

### Modal Screens

1. Show Modal: Display a modal when a button is clicked.
1. Modal Data Entry: Enter data in a modal and return to the parent screen.
1. Modal Animation: Add animation to modal display.
1. Modal to Screen Transition: Transition from a modal to another screen.
1. Custom Modal Design: Customize the appearance of the modal.

### User Authentication and Screen Transitions

1. Login Screen: Navigate to the main screen after login.
1. Logout Functionality: Logout and return to the login screen.
1. Persist Login State: Maintain login state and display the main screen on next launch.
1. User Registration Screen: Navigate from user registration to completion screen.
1. Password Reset: Navigate from password reset to confirmation screen.

### Nested Screen Transitions

1. Triple Screen Transition: Transition from screen A to B, then B to C.
1. Return Loop: Return from screen C to B, then B to A.
1. Conditional Transition: Navigate to different screens based on conditions.
1. Submenu: Navigate from the main screen to a submenu screen.
1. Tab Navigation: Navigate within a tab.

### Side Menu

1. Show Side Menu: Swipe to show the side menu.
1. Side Menu to Screen Transition: Select a side menu item to navigate to a screen.
1. Custom Side Menu Design: Customize the appearance of the side menu.
1. Drawer Menu: Navigate using a side drawer menu.
1. Side Menu Icons: Implement icons in the side menu items.

### Tab Navigation

1. Add Tab Bar: Add a tab bar at the bottom to switch screens.
1. Highlight Active Tab: Emphasize the currently selected tab.
1. Custom Tab Design: Customize the appearance of tabs.
1. Tab to Screen Transition: Implement screen transitions within a tab.
1. Async Data Loading: Load data asynchronously when switching tabs.

### Deep Linking and Screen Transitions

1. Deep Link Support: Navigate to specific screens from a URL.
1. Deep Link Parameters: Pass data using URL parameters.
1. Return from Deep Link: Navigate back from a screen opened via deep link.
1. Custom URL Scheme: Set up a custom URL scheme.
1. Deep Link Debugging: Debug deep link functionality.

### State Management and Screen Transitions

1. Using Redux: Manage state for screen transitions with Redux.
1. Using Context API: Share state using Context API.
1. Provider Pattern: Manage state with the Provider pattern.
1. Global State Management: Use global state for managing screen transitions.
1. Async State Management: Combine async operations with screen transitions.

### Networking and Screen Transitions

1. Data Fetching: Fetch data and display it on the next screen.
1. Loading Screen: Display a loading screen while data is being fetched.
1. Error Handling: Handle errors during data fetching.
1. Refresh Functionality: Refresh data after transitioning to a screen.
1. Retry Functionality: Retry data fetching after a failure.

### Dialogs and Screen Transitions

1. Confirmation Dialog: Show a confirmation dialog before transitioning.
1. Warning Dialog: Display a warning message to control screen transitions.
1. Custom Dialog: Create a custom dialog.
1. Dialog to Screen Transition: Navigate to the next screen from a dialog.
1. Fullscreen Dialog: Implement a fullscreen dialog.

### Navigation Stack Operations

1. Reset Navigation Stack: Reset the stack to return to a specific screen.
1. Check Navigation Stack: Check the current navigation stack.
1. Insert into Stack: Insert a new screen into the middle of the stack.
1. Remove from Stack: Remove a specific screen from the stack.
1. Limit Stack Depth: Limit the depth of the navigation stack.

### Data Sharing between Tabs

1. Data Passing between Tabs: Share data between tabs.
1. Tab State Management: Manage the state of each tab.
1. Async Data Sharing: Share data between tabs asynchronously.
1. Global Data Store: Use a global store to share data.
1. Tab Refresh: Refresh data in a tab.

### Forms and Screen Transitions

1. Form Input Validation: Validate form input before transitioning to the next screen.
1. Form Data Submission: Submit form data to the next screen.
1. Form to Confirmation Screen: Display a confirmation screen after form submission.
1. Partial Form Save: Partially save form input and transition to the next screen.
1. Form Reset: Reset form input and return to the initial screen.

### Multi-step Forms

1. Multi-step Form Implementation: Create a form divided across multiple screens.
1. Step Data Saving: Save data at each step.
1. Step Validation: Validate input at each step.
1. Skip Steps: Skip specific steps based on conditions.
1. Progress Display: Show current step progress with a progress bar.

### Swipe and Gesture Transitions

1. Swipe to Navigate: Swipe left or right to switch screens.
1. Pinch to Zoom: Use pinch gesture to zoom in/out of a screen.
1. Double Tap: Navigate to a specific screen on double tap.
1. Drag & Drop: Drag an element and drop to navigate to a new screen.
1. Long Press Gesture: Long press to show a menu and navigate.

### Async Operations and Screen Transitions

1. Async Data Loading: Load data asynchronously before transitioning.
1. Async Error Handling: Handle errors during async operations with error messages.
1. Async Data Submission: Submit data asynchronously and navigate to the result screen.
1. Real-time Data Updates: Update data in real-time while switching screens.
1. Cancel Async Operation: Cancel async operations and stop transitions.

### User Interface and Screen Transitions

1. Custom Navigation Bar: Customize the navigation bar for screen transitions.
1. Custom Button Design: Customize button design for transitions.
1. Animated Button: Add animations to buttons on click.
1. Interactive UI Elements: Use interactive UI elements for transitions.
1. User Guide: Show a user guide screen on the first launch.

### App-wide Navigation

1. Main Menu Navigation: Navigate to different sections from the main menu.
1. Foot Tab Bar Navigation: Use a foot tab bar for screen transitions.
1. Behavior-based Navigation: Navigate based on user behavior.
1. Role-based Navigation: Navigate to different screens based on user roles.
1. Startup Navigation: Navigate to a specific screen based on conditions at startup.

### Features of AutoRoute

1. Basic Routing: Implement simple screen transitions using AutoRoute.
1. Nested Routes: Define nested routes and implement nested screen transitions.
1. AuthGuard Implementation: Implement AuthGuard to prevent unauthenticated users from accessing certain screens.
1. Creating Custom Guards: Create custom guards to allow screen transitions only when specific conditions are met.
1. Dynamic Route Definition: Define routes dynamically using parameters and pass different data.
1. Using Path Parameters: Use path parameters to extract data from the URL and display it on the screen.
1. Active Guard Observer: Display a loading process on the underlying screen while the guard is being checked.
1. Navigation Observer: Output screen information during transitions.

</details>

----

## ja

これはauto_routeを用いた100本ノックです。

`lib/exercise/` ディレクトリ配下にexercise~.dartファイルを配置して問題番号とあったソースコードを載せています。

Flutterのバージョン管理ツールはfvmを使っています。

### auto_route を用いた画面遷移 100本ノック

<details>

<summary>問題一覧</summary>

### 基本的な画面遷移

1. シンプルな画面遷移: ボタンをクリックして次の画面に移動。
1. テキスト表示: 次の画面にテキストを表示。
1. 戻るボタン: 戻るボタンを使って前の画面に戻る。
1. データの受け渡し: 入力データを次の画面に渡す。
1. ナビゲーションバー: 上部のナビゲーションバーを使って画面を切り替える。
1. アニメーション付き画面遷移
1. フェードイン・フェードアウト: 画面遷移時にフェードイン・フェードアウトのアニメーションを追加。
1. スライドイン・スライドアウト: 画面がスライドするアニメーション。
1. 回転アニメーション: 画面遷移時に画面が回転する。
1. スケールアニメーション: 画面遷移時に画面が拡大・縮小する。
1. カスタムアニメーション: 自分でカスタムアニメーションを実装する。

### モーダル画面

1. モーダル表示: ボタンをクリックするとモーダルが表示。
1. モーダルでのデータ入力: モーダルでデータを入力し、親画面に戻す。
1. モーダルのアニメーション: モーダル表示時にアニメーションを追加。
1. モーダルからの画面遷移: モーダルから別の画面に遷移。
1. モーダルのカスタムデザイン: モーダルの外観をカスタマイズ。

### ユーザー認証と画面遷移

1. ログイン画面: ログイン後にメイン画面へ遷移。
1. ログアウト機能: ログアウトしてログイン画面に戻る。
1. ログイン状態の保持: ログイン状態を保持して次回起動時にメイン画面を表示。
1. ユーザー登録画面: 新規ユーザー登録画面から登録完了画面へ遷移。
1. パスワードリセット: パスワードリセット画面から確認画面へ遷移。

### ネストされた画面遷移

1. 三重の画面遷移: 画面AからB、BからCへの遷移。
1. 戻りループ: 画面CからB、BからAへ戻る。
1. 条件付き遷移: 条件に基づいて異なる画面に遷移。
1. サブメニュー: メイン画面からサブメニュー画面へ遷移。
1. タブ内遷移: タブ内での画面遷移。

### サイドメニュー

1. サイドメニューの表示: スワイプでサイドメニューを表示。
1. サイドメニューから画面遷移: サイドメニューの項目を選択して画面遷移。
1. サイドメニューのカスタムデザイン: サイドメニューの外観をカスタマイズ。
1. ドロワーメニュー: サイドドロワーメニューから画面遷移。
1. サイドメニューのアイコン: アイコン付きのサイドメニュー項目を実装。

### タブナビゲーション

1. タブバーの追加: 下部にタブバーを追加して画面を切り替え。
1. アクティブタブの表示: 現在選択されているタブを強調表示。
1. カスタムタブデザイン: タブの外観をカスタマイズ。
1. タブ内の画面遷移: タブ内での画面遷移を実装。
1. 非同期データ読み込み: タブ切り替え時にデータを非同期で読み込む。

### ディープリンクと画面遷移

1. ディープリンク対応: 特定のURLからアプリ内の特定の画面に遷移。
1. ディープリンクのパラメータ: URLパラメータを使ってデータを渡す。
1. ディープリンクからの戻り: ディープリンクから遷移した画面から前の画面に戻る。
1. ディープリンクのカスタムスキーム: カスタムURLスキームを設定。
1. ディープリンクのデバッグ: ディープリンクの動作をデバッグする方法。

### 状態管理と画面遷移

1. Reduxの導入: Reduxを使った画面遷移の状態管理。
1. Context APIの利用: Context APIを使って状態を共有。
1. Providerパターン: Providerパターンを使った状態管理。
1. グローバル状態の管理: グローバル状態を使って画面遷移を管理。
1. 非同期状態管理: 非同期操作と画面遷移の組み合わせ。

### ネットワークと画面遷移

1. データフェッチ: データをフェッチして次の画面に表示。
1. ローディング画面: データを読み込む際にローディング画面を表示。
1. エラーハンドリング: データフェッチ中のエラーを処理。
1. リフレッシュ機能: 画面遷移後にデータをリフレッシュ。
1. リトライ機能: データフェッチの失敗後に再試行。

### ダイアログと画面遷移

1. 確認ダイアログ: 画面遷移前に確認ダイアログを表示。
1. 警告ダイアログ: 警告メッセージを表示して画面遷移を制御。
1. カスタムダイアログ: カスタムダイアログを作成。
1. ダイアログからの画面遷移: ダイアログから次の画面に遷移。
1. フルスクリーンダイアログ: フルスクリーンダイアログの実装。

### ナビゲーションスタックの操作

1. ナビゲーションスタックのリセット: スタックをリセットして特定の画面に戻る。
1. ナビゲーションスタックの確認: 現在のナビゲーションスタックを確認。
1. スタックの中間挿入: スタックの中間に新しい画面を挿入。
1. スタックの削除: スタック内の特定の画面を削除。
1. スタックの深さ制限: スタックの深さを制限する。

### タブ間のデータ共有

1. タブ間のデータ受け渡し: タブ間でデータを共有。
1. タブの状態管理: 各タブの状態を管理。
1. 非同期データ共有: 非同期操作でタブ間のデータを共有。
1. グローバルデータストア: グローバルストアを使ってデータを共有。
1. タブのリフレッシュ: タブのデータをリフレッシュ。

### フォームと画面遷移

1. フォーム入力の検証: フォーム入力を検証して次の画面に遷移。
1. フォームデータの送信: フォームデータを次の画面に送信。
1. フォームからの確認画面: フォーム入力後に確認画面を表示。
1. フォームの部分保存: フォーム入力を部分的に保存して次の画面に遷移。
1. フォームのリセット: フォーム入力をリセットして初期画面に戻る。

### マルチステップフォーム

1. マルチステップフォームの実装: 複数の画面に分割されたフォームを作成。
1. ステップ間のデータ保存: 各ステップのデータを保存。
1. ステップのバリデーション: 各ステップで入力を検証。
1. ステップのスキップ: 条件に応じて特定のステップをスキップ。
1. ステップの進捗表示: 進捗バーで現在のステップを表示。

### スワイプとジェスチャー

1. スワイプで画面遷移: 左右にスワイプして画面を切り替え。
1. ピンチでズームイン/アウト: ピンチジェスチャーで画面のズームイン/アウト。
1. ダブルタップ: ダブルタップで特定の画面に遷移。
1. ドラッグ&ドロップ: 要素をドラッグしてドロップすると新しい画面に遷移。
1. 長押しジェスチャー: 長押しでメニューを表示し、選択して画面遷移。

### 非同期操作と画面遷移

1. 非同期データ読み込み: データを読み込んでから次の画面に遷移。
1. 非同期エラーハンドリング: 非同期操作のエラーを処理してエラーメッセージを表示。
1. 非同期データ送信: データ送信後に結果を表示する画面に遷移。
1. リアルタイムデータ更新: リアルタイムでデータを更新しながら画面を切り替え。
1. 非同期操作のキャンセル: 非同期操作をキャンセルして画面遷移を中断。

### ユーザーインターフェースと画面遷移

1. カスタムナビゲーションバー: ナビゲーションバーをカスタマイズして画面遷移。
1. カスタムボタンデザイン: ボタンのデザインをカスタマイズして画面遷移。
1. アニメーション付きボタン: ボタンのクリック時にアニメーションを追加。
1. インタラクティブUI要素: インタラクティブなUI要素を使って画面遷移。
1. ユーザーガイド: 初回起動時にユーザーガイド画面を表示。

### アプリ全体のナビゲーション

1. メインメニューからのナビゲーション: メインメニューから異なるセクションに遷移。
1. フットタブバーのナビゲーション: フットタブバーを使った画面遷移。
1. ユーザーの行動に基づくナビゲーション: ユーザーの行動に基づいて適切な画面に誘導。
1. ロールベースのナビゲーション: ユーザーのロールに応じて異なる画面に遷移。
1. アプリ起動時のナビゲーション: アプリ起動時に特定の条件に基づいて画面遷移。

### AutoRouteの機能

1. 基本的なルーティング: AutoRouteを使ってシンプルな画面遷移を実装する。
1. ネストされたルート: ネストされたルートを定義し、ネストされた画面遷移を実装する。
1. AuthGuardの実装: ログインしていないユーザーが特定の画面にアクセスできないようにAuthGuardを実装する。
1. カスタムガードの作成: 独自のガードを作成し、特定の条件を満たす場合にのみ画面遷移を許可する。
1. 動的なルート定義: パラメータを使用して動的にルートを定義し、異なるデータを渡す。
1. パスパラメータの使用: パスパラメータを使ってURLからデータを抽出し、画面に表示する。
1. アクティブガードオブザーバー: ガードがチェックされているとき、下の画面でローディング処理を表示する。
1. ナビゲーションオブザーバー: 遷移時画面情報を画面に出力する。

</details>

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
