.class public abstract Landroid/accessibilityservice/AccessibilityService;
.super Landroid/app/Service;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;,
        Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;,
        Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;,
        Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;,
        Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;,
        Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;,
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;,
        Landroid/accessibilityservice/AccessibilityService$MagnificationController;,
        Landroid/accessibilityservice/AccessibilityService$ScreenshotErrorCode;,
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardShowMode;,
        Landroid/accessibilityservice/AccessibilityService$Callbacks;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_TAKE_SCREENSHOT_REQUEST_INTERVAL_TIMES_MS:I = 0x14d

.field public static final ERROR_TAKE_SCREENSHOT_INTERNAL_ERROR:I = 0x1

.field public static final ERROR_TAKE_SCREENSHOT_INTERVAL_TIME_SHORT:I = 0x3

.field public static final ERROR_TAKE_SCREENSHOT_INVALID_DISPLAY:I = 0x4

.field public static final ERROR_TAKE_SCREENSHOT_NO_ACCESSIBILITY_ACCESS:I = 0x2

.field public static final GESTURE_2_FINGER_DOUBLE_TAP:I = 0x14

.field public static final GESTURE_2_FINGER_DOUBLE_TAP_AND_HOLD:I = 0x28

.field public static final GESTURE_2_FINGER_SINGLE_TAP:I = 0x13

.field public static final GESTURE_2_FINGER_SWIPE_DOWN:I = 0x1a

.field public static final GESTURE_2_FINGER_SWIPE_LEFT:I = 0x1b

.field public static final GESTURE_2_FINGER_SWIPE_RIGHT:I = 0x1c

.field public static final GESTURE_2_FINGER_SWIPE_UP:I = 0x19

.field public static final GESTURE_2_FINGER_TRIPLE_TAP:I = 0x15

.field public static final GESTURE_2_FINGER_TRIPLE_TAP_AND_HOLD:I = 0x2b

.field public static final GESTURE_3_FINGER_DOUBLE_TAP:I = 0x17

.field public static final GESTURE_3_FINGER_DOUBLE_TAP_AND_HOLD:I = 0x29

.field public static final GESTURE_3_FINGER_SINGLE_TAP:I = 0x16

.field public static final GESTURE_3_FINGER_SINGLE_TAP_AND_HOLD:I = 0x2c

.field public static final GESTURE_3_FINGER_SWIPE_DOWN:I = 0x1e

.field public static final GESTURE_3_FINGER_SWIPE_LEFT:I = 0x1f

.field public static final GESTURE_3_FINGER_SWIPE_RIGHT:I = 0x20

.field public static final GESTURE_3_FINGER_SWIPE_UP:I = 0x1d

.field public static final GESTURE_3_FINGER_TRIPLE_TAP:I = 0x18

.field public static final GESTURE_3_FINGER_TRIPLE_TAP_AND_HOLD:I = 0x2d

.field public static final GESTURE_4_FINGER_DOUBLE_TAP:I = 0x26

.field public static final GESTURE_4_FINGER_DOUBLE_TAP_AND_HOLD:I = 0x2a

.field public static final GESTURE_4_FINGER_SINGLE_TAP:I = 0x25

.field public static final GESTURE_4_FINGER_SWIPE_DOWN:I = 0x22

.field public static final GESTURE_4_FINGER_SWIPE_LEFT:I = 0x23

.field public static final GESTURE_4_FINGER_SWIPE_RIGHT:I = 0x24

.field public static final GESTURE_4_FINGER_SWIPE_UP:I = 0x21

.field public static final GESTURE_4_FINGER_TRIPLE_TAP:I = 0x27

.field public static final GESTURE_DOUBLE_TAP:I = 0x11

.field public static final GESTURE_DOUBLE_TAP_AND_HOLD:I = 0x12

.field public static final GESTURE_PASSTHROUGH:I = -0x1

.field public static final GESTURE_SWIPE_DOWN:I = 0x2

.field public static final GESTURE_SWIPE_DOWN_AND_LEFT:I = 0xf

.field public static final GESTURE_SWIPE_DOWN_AND_RIGHT:I = 0x10

.field public static final GESTURE_SWIPE_DOWN_AND_UP:I = 0x8

.field public static final GESTURE_SWIPE_LEFT:I = 0x3

.field public static final GESTURE_SWIPE_LEFT_AND_DOWN:I = 0xa

.field public static final GESTURE_SWIPE_LEFT_AND_RIGHT:I = 0x5

.field public static final GESTURE_SWIPE_LEFT_AND_UP:I = 0x9

.field public static final GESTURE_SWIPE_RIGHT:I = 0x4

.field public static final GESTURE_SWIPE_RIGHT_AND_DOWN:I = 0xc

.field public static final GESTURE_SWIPE_RIGHT_AND_LEFT:I = 0x6

.field public static final GESTURE_SWIPE_RIGHT_AND_UP:I = 0xb

.field public static final GESTURE_SWIPE_UP:I = 0x1

.field public static final GESTURE_SWIPE_UP_AND_DOWN:I = 0x7

.field public static final GESTURE_SWIPE_UP_AND_LEFT:I = 0xd

.field public static final GESTURE_SWIPE_UP_AND_RIGHT:I = 0xe

.field public static final GESTURE_TOUCH_EXPLORATION:I = -0x2

.field public static final GESTURE_UNKNOWN:I = 0x0

.field public static final GLOBAL_ACTION_ACCESSIBILITY_ALL_APPS:I = 0xe

.field public static final GLOBAL_ACTION_ACCESSIBILITY_BUTTON:I = 0xb

.field public static final GLOBAL_ACTION_ACCESSIBILITY_BUTTON_CHOOSER:I = 0xc

.field public static final GLOBAL_ACTION_ACCESSIBILITY_SHORTCUT:I = 0xd

.field public static final GLOBAL_ACTION_BACK:I = 0x1

.field public static final GLOBAL_ACTION_DISMISS_NOTIFICATION_SHADE:I = 0xf

.field public static final GLOBAL_ACTION_HOME:I = 0x2

.field public static final GLOBAL_ACTION_KEYCODE_HEADSETHOOK:I = 0xa

.field public static final GLOBAL_ACTION_LOCK_SCREEN:I = 0x8

.field public static final GLOBAL_ACTION_NOTIFICATIONS:I = 0x4

.field public static final GLOBAL_ACTION_POWER_DIALOG:I = 0x6

.field public static final GLOBAL_ACTION_QUICK_SETTINGS:I = 0x5

.field public static final GLOBAL_ACTION_RECENTS:I = 0x3

.field public static final GLOBAL_ACTION_TAKE_SCREENSHOT:I = 0x9

.field public static final GLOBAL_ACTION_TOGGLE_SPLIT_SCREEN:I = 0x7

.field public static final KEY_ACCESSIBILITY_SCREENSHOT_COLORSPACE:Ljava/lang/String; = "screenshot_colorSpace"

.field public static final KEY_ACCESSIBILITY_SCREENSHOT_HARDWAREBUFFER:Ljava/lang/String; = "screenshot_hardwareBuffer"

.field public static final KEY_ACCESSIBILITY_SCREENSHOT_STATUS:Ljava/lang/String; = "screenshot_status"

.field public static final KEY_ACCESSIBILITY_SCREENSHOT_TIMESTAMP:Ljava/lang/String; = "screenshot_timestamp"

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.accessibilityservice.AccessibilityService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.accessibilityservice"

.field public static final SHOW_MODE_AUTO:I = 0x0

.field public static final SHOW_MODE_HARD_KEYBOARD_ORIGINAL_VALUE:I = 0x20000000

.field public static final SHOW_MODE_HARD_KEYBOARD_OVERRIDDEN:I = 0x40000000

.field public static final SHOW_MODE_HIDDEN:I = 0x1

.field public static final SHOW_MODE_IGNORE_HARD_KEYBOARD:I = 0x2

.field public static final SHOW_MODE_MASK:I = 0x3

.field public static final TAKE_SCREENSHOT_SUCCESS:I


# instance fields
.field private final mAccessibilityButtonControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityButtonController;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionId:I

.field private mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

.field private mGestureStatusCallbackInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureStatusCallbackSequence:I

.field private mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private final mLock:Ljava/lang/Object;

.field private final mMagnificationControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityService$MagnificationController;",
            ">;"
        }
    .end annotation
.end field

.field private mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 241
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    .line 713
    iput v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 724
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    .line 727
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mAccessibilityButtonControllers:Landroid/util/SparseArray;

    .line 734
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Landroid/accessibilityservice/AccessibilityService;)I
    .locals 0

    .line 241
    iget p0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    return p0
.end method

.method static synthetic access$1000(Landroid/accessibilityservice/AccessibilityService;Z)V
    .locals 0

    .line 241
    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityButtonAvailabilityChanged(Z)V

    return-void
.end method

.method static synthetic access$102(Landroid/accessibilityservice/AccessibilityService;I)I
    .locals 0

    .line 241
    iput p1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    return p1
.end method

.method static synthetic access$200(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 0

    .line 241
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;->dispatchServiceConnected()V

    return-void
.end method

.method static synthetic access$300(Landroid/accessibilityservice/AccessibilityService;)Landroid/os/IBinder;
    .locals 0

    .line 241
    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$302(Landroid/accessibilityservice/AccessibilityService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 241
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$400(Landroid/accessibilityservice/AccessibilityService;)Landroid/view/WindowManager;
    .locals 0

    .line 241
    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$500(Landroid/accessibilityservice/AccessibilityService;ILandroid/graphics/Region;FFF)V
    .locals 0

    .line 241
    invoke-direct/range {p0 .. p5}, Landroid/accessibilityservice/AccessibilityService;->onMagnificationChanged(ILandroid/graphics/Region;FFF)V

    return-void
.end method

.method static synthetic access$600(Landroid/accessibilityservice/AccessibilityService;I)V
    .locals 0

    .line 241
    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onSoftKeyboardShowModeChanged(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/accessibilityservice/AccessibilityService;Z)V
    .locals 0

    .line 241
    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onFingerprintCapturingGesturesChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/accessibilityservice/AccessibilityService;I)V
    .locals 0

    .line 241
    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onFingerprintGesture(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/accessibilityservice/AccessibilityService;I)V
    .locals 0

    .line 241
    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityButtonClicked(I)V

    return-void
.end method

.method private calculateGestureSampleTimeMs(I)I
    .locals 3

    .line 1138
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x64

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_0

    return v1

    .line 1141
    :cond_0
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x3e8

    int-to-float v0, v0

    .line 1147
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    return v1

    :cond_2
    return p1
.end method

.method private dispatchServiceConnected()V
    .locals 3

    .line 758
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 759
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 760
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->onServiceConnectedLocked()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 762
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    if-eqz v0, :cond_1

    .line 764
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->onServiceConnected()V

    .line 769
    :cond_1
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    return-void

    :catchall_0
    move-exception v1

    .line 762
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic lambda$sendScreenshotFailure$2(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;I)V
    .locals 0

    .line 2588
    invoke-interface {p0, p1}, Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;->onFailure(I)V

    return-void
.end method

.method static synthetic lambda$sendScreenshotSuccess$1(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V
    .locals 0

    .line 2583
    invoke-interface {p0, p1}, Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;->onSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V

    return-void
.end method

.method private onAccessibilityButtonAvailabilityChanged(Z)V
    .locals 1

    .line 1929
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getAccessibilityButtonController()Landroid/accessibilityservice/AccessibilityButtonController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityButtonController;->dispatchAccessibilityButtonAvailabilityChanged(Z)V

    return-void
.end method

.method private onAccessibilityButtonClicked(I)V
    .locals 0

    .line 1925
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->getAccessibilityButtonController(I)Landroid/accessibilityservice/AccessibilityButtonController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityButtonController;->dispatchAccessibilityButtonClicked()V

    return-void
.end method

.method private onFingerprintCapturingGesturesChanged(Z)V
    .locals 1

    .line 1206
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getFingerprintGestureController()Landroid/accessibilityservice/FingerprintGestureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/FingerprintGestureController;->onGestureDetectionActiveChanged(Z)V

    return-void
.end method

.method private onFingerprintGesture(I)V
    .locals 1

    .line 1214
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getFingerprintGestureController()Landroid/accessibilityservice/FingerprintGestureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/FingerprintGestureController;->onGesture(I)V

    return-void
.end method

.method private onMagnificationChanged(ILandroid/graphics/Region;FFF)V
    .locals 2

    .line 1193
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1194
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    .line 1195
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1197
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->dispatchMagnificationChanged(Landroid/graphics/Region;FFF)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1195
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onSoftKeyboardShowModeChanged(I)V
    .locals 1

    .line 1609
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    if-eqz v0, :cond_0

    .line 1610
    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->dispatchSoftKeyboardShowModeChanged(I)V

    :cond_0
    return-void
.end method

.method private sendScreenshotFailure(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .locals 1

    .line 2588
    new-instance v0, Landroid/accessibilityservice/-$$Lambda$AccessibilityService$ICHqUJFwFBdNjHNqc2w-5A_xnFg;

    invoke-direct {v0, p3, p1}, Landroid/accessibilityservice/-$$Lambda$AccessibilityService$ICHqUJFwFBdNjHNqc2w-5A_xnFg;-><init>(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendScreenshotSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .locals 1

    .line 2583
    new-instance v0, Landroid/accessibilityservice/-$$Lambda$AccessibilityService$gY_SjyE9t6c678n_gI2z2nzIWMg;

    invoke-direct {v0, p3, p1}, Landroid/accessibilityservice/-$$Lambda$AccessibilityService$gY_SjyE9t6c678n_gI2z2nzIWMg;-><init>(Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendServiceInfo()V
    .locals 3

    .line 2073
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 2074
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 2075
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isWithinParcelableSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2080
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    const/4 v0, 0x0

    .line 2081
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2082
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityService"

    const-string v2, "Error while setting AccessibilityServiceInfo"

    .line 2084
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2085
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0

    .line 2076
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot update service info: size is larger than safe parcelable limits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 3

    .line 991
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    invoke-super {p0, p1}, Landroid/app/Service;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityService$1;)V

    return-object v0
.end method

.method public createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .locals 2

    .line 997
    invoke-super {p0, p1, p2}, Landroid/app/Service;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x7f0

    if-eq p1, v0, :cond_0

    return-object p2

    .line 1001
    :cond_0
    new-instance p1, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityService$1;)V

    return-object p1
.end method

.method public createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;
    .locals 1

    .line 1008
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    const/16 p3, 0x7f0

    if-eq p2, p3, :cond_0

    return-object p1

    .line 1012
    :cond_0
    new-instance p2, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;

    iget p3, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, v0}, Landroid/accessibilityservice/AccessibilityService$AccessibilityContext;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityService$1;)V

    return-object p2
.end method

.method public final disableSelf()V
    .locals 2

    .line 978
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->disableSelf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 983
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public final dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z
    .locals 5

    .line 1104
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1108
    :cond_0
    invoke-virtual {p1}, Landroid/accessibilityservice/GestureDescription;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService;->calculateGestureSampleTimeMs(I)I

    move-result v1

    .line 1110
    invoke-static {p1, v1}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getGestureStepsFromGestureDescription(Landroid/accessibilityservice/GestureDescription;I)Ljava/util/List;

    move-result-object v1

    .line 1112
    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    :try_start_1
    iget v3, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    if-eqz p2, :cond_2

    .line 1115
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    .line 1116
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    .line 1118
    :cond_1
    new-instance v3, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    invoke-direct {v3, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;-><init>(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)V

    .line 1120
    iget-object p2, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    iget p3, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    invoke-virtual {p2, p3, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1122
    :cond_2
    iget p2, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    new-instance p3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p3, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 1123
    invoke-virtual {p1}, Landroid/accessibilityservice/GestureDescription;->getDisplayId()I

    move-result p1

    .line 1122
    invoke-interface {v0, p2, p3, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V

    .line 1124
    monitor-exit v2

    return v4

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1126
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    .line 2025
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v2, -0x2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getAccessibilityButtonController()Landroid/accessibilityservice/AccessibilityButtonController;
    .locals 1

    const/4 v0, 0x0

    .line 1892
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getAccessibilityButtonController(I)Landroid/accessibilityservice/AccessibilityButtonController;

    move-result-object v0

    return-object v0
.end method

.method public final getAccessibilityButtonController(I)Landroid/accessibilityservice/AccessibilityButtonController;
    .locals 3

    .line 1912
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1913
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mAccessibilityButtonControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityButtonController;

    if-nez v1, :cond_0

    .line 1916
    new-instance v1, Landroid/accessibilityservice/AccessibilityButtonController;

    .line 1917
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/accessibilityservice/AccessibilityButtonController;-><init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    .line 1918
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mAccessibilityButtonControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1920
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 1921
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getFingerprintGestureController()Landroid/accessibilityservice/FingerprintGestureController;
    .locals 2

    .line 1070
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

    if-nez v0, :cond_0

    .line 1071
    new-instance v0, Landroid/accessibilityservice/FingerprintGestureController;

    .line 1072
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/accessibilityservice/FingerprintGestureController;-><init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

    .line 1074
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mFingerprintGestureController:Landroid/accessibilityservice/FingerprintGestureController;

    return-object v0
.end method

.method public final getMagnificationController()Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .locals 1

    const/4 v0, 0x0

    .line 1029
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getMagnificationController(I)Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    move-result-object v0

    return-object v0
.end method

.method public final getMagnificationController(I)Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .locals 3

    .line 1050
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1051
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    if-nez v1, :cond_0

    .line 1053
    new-instance v1, Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, p0, v2, p1}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;I)V

    .line 1054
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1056
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 1057
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 951
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 964
    :try_start_0
    invoke-static {}, Landroid/provider/CompatScreenProvider;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setAccessibilityFocusedDisplay(I)V

    .line 965
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object p1

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 3

    .line 2041
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2044
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityService"

    const-string v2, "Error while getting AccessibilityServiceInfo"

    .line 2046
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2047
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSoftKeyboardController()Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;
    .locals 3

    .line 1600
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1601
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    if-nez v1, :cond_0

    .line 1602
    new-instance v1, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    .line 1604
    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1605
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getSystemActions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .line 1951
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1954
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getSystemActions()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityService"

    const-string v2, "Error while calling getSystemActions"

    .line 1956
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1957
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1960
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 2092
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "window"

    .line 2098
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2099
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 2100
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    .line 2101
    check-cast p1, Landroid/view/WindowManagerImpl;

    .line 2104
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/view/WindowManagerImpl;->setDefaultToken(Landroid/os/IBinder;)V

    .line 2106
    :cond_0
    iget-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    return-object p1

    .line 2108
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2093
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "System services not available to Activities before onCreate()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWindows()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 896
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindows(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getWindowsOnAllDisplays()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation

    .line 924
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindowsOnAllDisplays(I)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$takeScreenshot$0$AccessibilityService(Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;Landroid/os/Bundle;)V
    .locals 8

    const-string/jumbo v0, "screenshot_status"

    .line 2140
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2142
    invoke-direct {p0, v0, p1, p2}, Landroid/accessibilityservice/AccessibilityService;->sendScreenshotFailure(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    return-void

    :cond_0
    const-string/jumbo v0, "screenshot_hardwareBuffer"

    .line 2146
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/HardwareBuffer;

    const-string/jumbo v0, "screenshot_colorSpace"

    .line 2148
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/ParcelableColorSpace;

    .line 2149
    new-instance v7, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;

    .line 2150
    invoke-virtual {v0}, Landroid/graphics/ParcelableColorSpace;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    const-string/jumbo v0, "screenshot_timestamp"

    .line 2151
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;JLandroid/accessibilityservice/AccessibilityService$1;)V

    .line 2152
    invoke-direct {p0, v7, p1, p2}, Landroid/accessibilityservice/AccessibilityService;->sendScreenshotSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    return-void
.end method

.method public abstract onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 2190
    new-instance p1, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/accessibilityservice/AccessibilityService$2;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/AccessibilityService$2;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    invoke-direct {p1, p0, v0, v1}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    return-object p1
.end method

.method protected onGesture(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .locals 1

    .line 838
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 839
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->getGestureId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onGesture(I)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract onInterrupt()V
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method onPerformGestureResult(IZ)V
    .locals 3

    .line 1156
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    .line 1160
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1161
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    .line 1162
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1163
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 1165
    iget-object p1, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    if-eqz p1, :cond_3

    iget-object p1, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    if-eqz p1, :cond_3

    .line 1167
    iget-object p1, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 1168
    iget-object p1, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->handler:Landroid/os/Handler;

    new-instance v0, Landroid/accessibilityservice/AccessibilityService$1;

    invoke-direct {v0, p0, p2, v1}, Landroid/accessibilityservice/AccessibilityService$1;-><init>(Landroid/accessibilityservice/AccessibilityService;ZLandroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 1183
    iget-object p1, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iget-object p2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    invoke-virtual {p1, p2}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCompleted(Landroid/accessibilityservice/GestureDescription;)V

    goto :goto_0

    .line 1185
    :cond_2
    iget-object p1, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iget-object p2, v1, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    invoke-virtual {p1, p2}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCancelled(Landroid/accessibilityservice/GestureDescription;)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 1163
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected onServiceConnected()V
    .locals 0

    return-void
.end method

.method public onSystemActionsChanged()V
    .locals 0

    return-void
.end method

.method public final performGlobalAction(I)Z
    .locals 2

    .line 1984
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1987
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "AccessibilityService"

    const-string v1, "Error while calling performGlobalAction"

    .line 1989
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1990
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setAccessibilityFocusAppearance(II)V
    .locals 1

    .line 2172
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2175
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setFocusAppearance(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "AccessibilityService"

    const-string v0, "Error while setting the strokeWidth and color of the accessibility focus rectangle"

    .line 2177
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2179
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_0
    :goto_0
    return-void
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 1

    const-string/jumbo v0, "region cannot be null"

    .line 2676
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2678
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2681
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2683
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public final setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 0

    .line 2062
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2063
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;->sendServiceInfo()V

    return-void
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 1

    const-string/jumbo v0, "region cannot be null"

    .line 2702
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2704
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2707
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2709
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public takeScreenshot(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    .locals 3

    const-string v0, "executor cannot be null"

    .line 2130
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback cannot be null"

    .line 2131
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2133
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 2135
    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService;->sendScreenshotFailure(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    return-void

    .line 2139
    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Landroid/accessibilityservice/-$$Lambda$AccessibilityService$mIJ9r6h9wCpBX0K__8ZoZyY2J0c;

    invoke-direct {v2, p0, p2, p3}, Landroid/accessibilityservice/-$$Lambda$AccessibilityService$mIJ9r6h9wCpBX0K__8ZoZyY2J0c;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v0, p1, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->takeScreenshot(ILandroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2155
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
