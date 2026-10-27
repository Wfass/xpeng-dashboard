.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addShellRoot:I = 0x14

.field static final TRANSACTION_addWindowToken:I = 0x11

.field static final TRANSACTION_attachToDisplayContent:I = 0x78

.field static final TRANSACTION_attachWindowContextToDisplayArea:I = 0x76

.field static final TRANSACTION_attachWindowContextToWindowToken:I = 0x77

.field static final TRANSACTION_clearForcedDisplayDensityForUser:I = 0xd

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_clearTaskTransitionSpec:I = 0x7f

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x49

.field static final TRANSACTION_closeSystemDialogs:I = 0x22

.field static final TRANSACTION_createInputConsumer:I = 0x52

.field static final TRANSACTION_destroyInputConsumer:I = 0x53

.field static final TRANSACTION_detachWindowContextFromWindowContainer:I = 0x79

.field static final TRANSACTION_disableKeyguard:I = 0x1b

.field static final TRANSACTION_dismissKeyguard:I = 0x20

.field static final TRANSACTION_dontOverrideDisplayInfo:I = 0x5c

.field static final TRANSACTION_enableScreenIfNeeded:I = 0x48

.field static final TRANSACTION_endProlongedAnimations:I = 0x18

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x1d

.field static final TRANSACTION_freezeDisplayRotation:I = 0x34

.field static final TRANSACTION_freezeRotation:I = 0x31

.field static final TRANSACTION_getAnimationScale:I = 0x23

.field static final TRANSACTION_getAnimationScales:I = 0x24

.field static final TRANSACTION_getAppTaskId:I = 0x81

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getCurrentAnimatorScale:I = 0x27

.field static final TRANSACTION_getCurrentImeTouchRegion:I = 0x54

.field static final TRANSACTION_getDefaultDisplayRotation:I = 0x2d

.field static final TRANSACTION_getDisplayImePolicy:I = 0x65

.field static final TRANSACTION_getDockedStackSide:I = 0x4b

.field static final TRANSACTION_getImeDisplayId:I = 0x7d

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getNavBarPosition:I = 0x45

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x30

.field static final TRANSACTION_getRemoveContentMode:I = 0x5f

.field static final TRANSACTION_getStableInsets:I = 0x4f

.field static final TRANSACTION_getSupportedDisplayHashAlgorithms:I = 0x73

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x4a

.field static final TRANSACTION_getWindowInsets:I = 0x6e

.field static final TRANSACTION_getWindowingMode:I = 0x5d

.field static final TRANSACTION_hasNavigationBar:I = 0x44

.field static final TRANSACTION_hideTransientBars:I = 0x40

.field static final TRANSACTION_holdLock:I = 0x72

.field static final TRANSACTION_injectInputAfterTransactionsApplied:I = 0x67

.field static final TRANSACTION_isDisplayRotationFrozen:I = 0x36

.field static final TRANSACTION_isKeyguardLocked:I = 0x1e

.field static final TRANSACTION_isKeyguardSecure:I = 0x1f

.field static final TRANSACTION_isLayerTracing:I = 0x69

.field static final TRANSACTION_isRotationFrozen:I = 0x33

.field static final TRANSACTION_isSafeModeEnabled:I = 0x47

.field static final TRANSACTION_isTaskSnapshotSupported:I = 0x7c

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_isWindowToken:I = 0x10

.field static final TRANSACTION_isWindowTraceEnabled:I = 0x5b

.field static final TRANSACTION_lockNow:I = 0x46

.field static final TRANSACTION_mirrorDisplay:I = 0x6b

.field static final TRANSACTION_mirrorWallpaperSurface:I = 0x3a

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x16

.field static final TRANSACTION_overridePendingAppTransitionRemote:I = 0x17

.field static final TRANSACTION_reenableKeyguard:I = 0x1c

.field static final TRANSACTION_refreshScreenCaptureDisabled:I = 0x2b

.field static final TRANSACTION_registerCrossWindowBlurEnabledListener:I = 0x7a

.field static final TRANSACTION_registerDisplayFoldListener:I = 0x55

.field static final TRANSACTION_registerDisplayWindowListener:I = 0x57

.field static final TRANSACTION_registerPinnedTaskListener:I = 0x4d

.field static final TRANSACTION_registerShortcutKey:I = 0x51

.field static final TRANSACTION_registerSystemGestureExclusionListener:I = 0x3d

.field static final TRANSACTION_registerWallpaperVisibilityListener:I = 0x3b

.field static final TRANSACTION_removeRotationWatcher:I = 0x2f

.field static final TRANSACTION_removeWindowToken:I = 0x12

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0x4e

.field static final TRANSACTION_requestAssistScreenshot:I = 0x3f

.field static final TRANSACTION_requestScrollCapture:I = 0x71

.field static final TRANSACTION_screenshot:I = 0x82

.field static final TRANSACTION_screenshotWallpaper:I = 0x39

.field static final TRANSACTION_setAccessibilityFocusedDisplay:I = 0x83

.field static final TRANSACTION_setAnimationScale:I = 0x25

.field static final TRANSACTION_setAnimationScales:I = 0x26

.field static final TRANSACTION_setDisplayHashThrottlingEnabled:I = 0x75

.field static final TRANSACTION_setDisplayImePolicy:I = 0x66

.field static final TRANSACTION_setDisplayWindowInsetsController:I = 0x6c

.field static final TRANSACTION_setDisplayWindowRotationController:I = 0x13

.field static final TRANSACTION_setDockedTaskDividerTouchRegion:I = 0x4c

.field static final TRANSACTION_setEventDispatching:I = 0xf

.field static final TRANSACTION_setFixedToUserRotation:I = 0x37

.field static final TRANSACTION_setFocusedAppNoChecked:I = 0x80

.field static final TRANSACTION_setForcedDisplayDensityForUser:I = 0xc

.field static final TRANSACTION_setForcedDisplayScalingMode:I = 0xe

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setForwardedInsets:I = 0x50

.field static final TRANSACTION_setIgnoreOrientationRequest:I = 0x38

.field static final TRANSACTION_setInTouchMode:I = 0x28

.field static final TRANSACTION_setLayerTracing:I = 0x6a

.field static final TRANSACTION_setLayerTracingFlags:I = 0x70

.field static final TRANSACTION_setNavBarVirtualKeyHapticFeedbackEnabled:I = 0x43

.field static final TRANSACTION_setRecentsVisibility:I = 0x41

.field static final TRANSACTION_setRemoveContentMode:I = 0x60

.field static final TRANSACTION_setShellRootAccessibilityWindow:I = 0x15

.field static final TRANSACTION_setShouldShowSystemDecors:I = 0x64

.field static final TRANSACTION_setShouldShowWithInsecureKeyguard:I = 0x62

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x2a

.field static final TRANSACTION_setSwitchingUser:I = 0x21

.field static final TRANSACTION_setTaskTransitionSpec:I = 0x7e

.field static final TRANSACTION_setWindowingMode:I = 0x5e

.field static final TRANSACTION_shouldShowSystemDecors:I = 0x63

.field static final TRANSACTION_shouldShowWithInsecureKeyguard:I = 0x61

.field static final TRANSACTION_showGlobalActions:I = 0x6f

.field static final TRANSACTION_showStrictModeViolation:I = 0x29

.field static final TRANSACTION_startFreezingScreen:I = 0x19

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_startWindowTrace:I = 0x59

.field static final TRANSACTION_stopFreezingScreen:I = 0x1a

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_stopWindowTrace:I = 0x5a

.field static final TRANSACTION_syncInputTransactions:I = 0x68

.field static final TRANSACTION_thawDisplayRotation:I = 0x35

.field static final TRANSACTION_thawRotation:I = 0x32

.field static final TRANSACTION_unregisterCrossWindowBlurEnabledListener:I = 0x7b

.field static final TRANSACTION_unregisterDisplayFoldListener:I = 0x56

.field static final TRANSACTION_unregisterDisplayWindowListener:I = 0x58

.field static final TRANSACTION_unregisterSystemGestureExclusionListener:I = 0x3e

.field static final TRANSACTION_unregisterWallpaperVisibilityListener:I = 0x3c

.field static final TRANSACTION_updateDisplayWindowRequestedVisibilities:I = 0x6d

.field static final TRANSACTION_updateRotation:I = 0x2c

.field static final TRANSACTION_updateStaticPrivacyIndicatorBounds:I = 0x42

.field static final TRANSACTION_useBLAST:I = 0x5

.field static final TRANSACTION_verifyDisplayHash:I = 0x74

.field static final TRANSACTION_watchRotation:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1033
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IWindowManager"

    .line 1034
    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.view.IWindowManager"

    .line 1045
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1046
    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_1

    .line 1047
    check-cast v0, Landroid/view/IWindowManager;

    return-object v0

    .line 1049
    :cond_1
    new-instance v0, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/view/IWindowManager;
    .locals 1

    .line 6296
    sget-object v0, Landroid/view/IWindowManager$Stub$Proxy;->sDefaultImpl:Landroid/view/IWindowManager;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/view/IWindowManager;)Z
    .locals 1

    .line 6286
    sget-object v0, Landroid/view/IWindowManager$Stub$Proxy;->sDefaultImpl:Landroid/view/IWindowManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 6290
    sput-object p0, Landroid/view/IWindowManager$Stub$Proxy;->sDefaultImpl:Landroid/view/IWindowManager;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 6287
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "android.view.IWindowManager"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_28

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2544
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2535
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2537
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2538
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setAccessibilityFocusedDisplay(I)V

    .line 2539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2512
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 2517
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    .line 2522
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/view/IWindowManager$Stub;->screenshot(ILandroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 2525
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2526
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2529
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 2502
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2504
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2505
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getAppTaskId(Landroid/os/IBinder;)I

    move-result p1

    .line 2506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2507
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 2491
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v3, v0

    .line 2496
    :cond_2
    invoke-virtual {p0, p1, v3}, Landroid/view/IWindowManager$Stub;->setFocusedAppNoChecked(Landroid/os/IBinder;Z)V

    .line 2497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2484
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2485
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->clearTaskTransitionSpec()V

    .line 2486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2470
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2473
    sget-object p1, Landroid/view/TaskTransitionSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/TaskTransitionSpec;

    .line 2478
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setTaskTransitionSpec(Landroid/view/TaskTransitionSpec;)V

    .line 2479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2462
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2463
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getImeDisplayId()I

    move-result p1

    .line 2464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2465
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 2454
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2455
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isTaskSnapshotSupported()Z

    move-result p1

    .line 2456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2457
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 2445
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2447
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object p1

    .line 2448
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V

    .line 2449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2435
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2437
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object p1

    .line 2438
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z

    move-result p1

    .line 2439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2440
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 2426
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2428
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2429
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->detachWindowContextFromWindowContainer(Landroid/os/IBinder;)V

    .line 2430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2408
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2410
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 2413
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->attachToDisplayContent(Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object p1

    .line 2414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 2416
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2417
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2420
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    .line 2397
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2399
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2401
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 2402
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->attachWindowContextToWindowToken(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 2403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2370
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2372
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 2376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 2379
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    .line 2384
    :cond_5
    invoke-virtual {p0, p1, p4, v1, v2}, Landroid/view/IWindowManager$Stub;->attachWindowContextToDisplayArea(Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/content/res/Configuration;

    move-result-object p1

    .line 2385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 2387
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2388
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 2391
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v0

    .line 2361
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move v3, v0

    .line 2364
    :cond_7
    invoke-virtual {p0, v3}, Landroid/view/IWindowManager$Stub;->setDisplayHashThrottlingEnabled(Z)V

    .line 2365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2340
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 2343
    sget-object p1, Landroid/view/displayhash/DisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/displayhash/DisplayHash;

    .line 2348
    :cond_8
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;

    move-result-object p1

    .line 2349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 2351
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2352
    invoke-virtual {p1, p3, v0}, Landroid/view/displayhash/VerifiedDisplayHash;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 2355
    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v0

    .line 2332
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2333
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getSupportedDisplayHashAlgorithms()[Ljava/lang/String;

    move-result-object p1

    .line 2334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2335
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v0

    .line 2321
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2323
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 2326
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 2327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2306
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2310
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 2312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2314
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object p2

    .line 2315
    invoke-virtual {p0, p1, p4, v1, p2}, Landroid/view/IWindowManager$Stub;->requestScrollCapture(ILandroid/os/IBinder;ILandroid/view/IScrollCaptureResponseListener;)V

    .line 2316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2297
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2300
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setLayerTracingFlags(I)V

    .line 2301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2290
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2291
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->showGlobalActions()V

    .line 2292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2264
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 2267
    sget-object p1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 2273
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2275
    new-instance p2, Landroid/view/InsetsState;

    invoke-direct {p2}, Landroid/view/InsetsState;-><init>()V

    .line 2276
    invoke-virtual {p0, v2, p1, p2}, Landroid/view/IWindowManager$Stub;->getWindowInsets(Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;)Z

    move-result p1

    .line 2277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2278
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2280
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2281
    invoke-virtual {p2, p3, v0}, Landroid/view/InsetsState;->writeToParcel(Landroid/os/Parcel;I)V

    return v0

    .line 2248
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b

    .line 2253
    sget-object p4, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/view/InsetsVisibilities;

    .line 2258
    :cond_b
    invoke-virtual {p0, p1, v2}, Landroid/view/IWindowManager$Stub;->updateDisplayWindowRequestedVisibilities(ILandroid/view/InsetsVisibilities;)V

    .line 2259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2237
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2241
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/view/IDisplayWindowInsetsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowInsetsController;

    move-result-object p2

    .line 2242
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V

    .line 2243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2218
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2222
    new-instance p2, Landroid/view/SurfaceControl;

    invoke-direct {p2}, Landroid/view/SurfaceControl;-><init>()V

    .line 2223
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->mirrorDisplay(ILandroid/view/SurfaceControl;)Z

    move-result p1

    .line 2224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2225
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2227
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2228
    invoke-virtual {p2, p3, v0}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    return v0

    .line 2209
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    move v3, v0

    .line 2212
    :cond_c
    invoke-virtual {p0, v3}, Landroid/view/IWindowManager$Stub;->setLayerTracing(Z)V

    .line 2213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2201
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isLayerTracing()Z

    move-result p1

    .line 2203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2204
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 2192
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    move v3, v0

    .line 2195
    :cond_d
    invoke-virtual {p0, v3}, Landroid/view/IWindowManager$Stub;->syncInputTransactions(Z)V

    .line 2196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2173
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    .line 2176
    sget-object p1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/InputEvent;

    .line 2182
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_f

    move v3, v0

    .line 2185
    :cond_f
    invoke-virtual {p0, v2, p1, v3}, Landroid/view/IWindowManager$Stub;->injectInputAfterTransactionsApplied(Landroid/view/InputEvent;IZ)Z

    move-result p1

    .line 2186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2187
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 2162
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 2167
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->setDisplayImePolicy(II)V

    .line 2168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2152
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2155
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getDisplayImePolicy(I)I

    move-result p1

    .line 2156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2157
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 2141
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_10

    move v3, v0

    .line 2146
    :cond_10
    invoke-virtual {p0, p1, v3}, Landroid/view/IWindowManager$Stub;->setShouldShowSystemDecors(IZ)V

    .line 2147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2131
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2134
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->shouldShowSystemDecors(I)Z

    move-result p1

    .line 2135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2136
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 2120
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_11

    move v3, v0

    .line 2125
    :cond_11
    invoke-virtual {p0, p1, v3}, Landroid/view/IWindowManager$Stub;->setShouldShowWithInsecureKeyguard(IZ)V

    .line 2126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2110
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2113
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->shouldShowWithInsecureKeyguard(I)Z

    move-result p1

    .line 2114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2115
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 2099
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 2104
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->setRemoveContentMode(II)V

    .line 2105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2089
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2091
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2092
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getRemoveContentMode(I)I

    move-result p1

    .line 2093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2094
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 2078
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2080
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2082
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 2083
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->setWindowingMode(II)V

    .line 2084
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2068
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2070
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2071
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getWindowingMode(I)I

    move-result p1

    .line 2072
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2073
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 2059
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2062
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->dontOverrideDisplayInfo(I)V

    .line 2063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2051
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isWindowTraceEnabled()Z

    move-result p1

    .line 2053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2054
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 2044
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2045
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopWindowTrace()V

    .line 2046
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2037
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->startWindowTrace()V

    .line 2039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2028
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2030
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object p1

    .line 2031
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V

    .line 2032
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2018
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2020
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object p1

    .line 2021
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object p1

    .line 2022
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2023
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v0

    .line 2009
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2011
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object p1

    .line 2012
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 2000
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2002
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object p1

    .line 2003
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1986
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1987
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object p1

    .line 1988
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_12

    .line 1990
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1991
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 1994
    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v0

    .line 1974
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1978
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1979
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->destroyInputConsumer(Ljava/lang/String;I)Z

    move-result p1

    .line 1980
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1981
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1952
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1954
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1956
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1958
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1960
    new-instance v1, Landroid/view/InputChannel;

    invoke-direct {v1}, Landroid/view/InputChannel;-><init>()V

    .line 1961
    invoke-virtual {p0, p1, p4, p2, v1}, Landroid/view/IWindowManager$Stub;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V

    .line 1962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1964
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1965
    invoke-virtual {v1, p3, v0}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    return v0

    .line 1941
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1945
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    move-result-object p1

    .line 1946
    invoke-virtual {p0, v1, v2, p1}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 1947
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1925
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1927
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1929
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_13

    .line 1930
    sget-object p4, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/graphics/Insets;

    .line 1935
    :cond_13
    invoke-virtual {p0, p1, v2}, Landroid/view/IWindowManager$Stub;->setForwardedInsets(ILandroid/graphics/Insets;)V

    .line 1936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1907
    :pswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1911
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 1912
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 1913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1915
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1916
    invoke-virtual {p2, p3, v0}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    return v0

    .line 1896
    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1898
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object p1

    .line 1900
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1901
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 1902
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1885
    :pswitch_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1889
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/view/IPinnedTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedTaskListener;

    move-result-object p2

    .line 1890
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V

    .line 1891
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1871
    :pswitch_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1873
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_14

    .line 1874
    sget-object p1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/graphics/Rect;

    .line 1879
    :cond_14
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setDockedTaskDividerTouchRegion(Landroid/graphics/Rect;)V

    .line 1880
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1863
    :pswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    move-result p1

    .line 1865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1866
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1847
    :pswitch_39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1850
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object p1

    .line 1851
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_15

    .line 1853
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1854
    invoke-virtual {p1, p3, v0}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 1857
    :cond_15
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v0

    .line 1837
    :pswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1840
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result p1

    .line 1841
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1842
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1830
    :pswitch_3b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1831
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    .line 1832
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1822
    :pswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1823
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result p1

    .line 1824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1825
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1808
    :pswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1810
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_16

    .line 1811
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    .line 1816
    :cond_16
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 1817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1798
    :pswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1800
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1801
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getNavBarPosition(I)I

    move-result p1

    .line 1802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1803
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1788
    :pswitch_3f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1791
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->hasNavigationBar(I)Z

    move-result p1

    .line 1792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1793
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1779
    :pswitch_40
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1781
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_17

    move v3, v0

    .line 1782
    :cond_17
    invoke-virtual {p0, v3}, Landroid/view/IWindowManager$Stub;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 1783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1769
    :pswitch_41
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1773
    sget-object p3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/graphics/Rect;

    .line 1774
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V

    return v0

    .line 1761
    :pswitch_42
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_18

    move v3, v0

    .line 1764
    :cond_18
    invoke-virtual {p0, v3}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    return v0

    .line 1753
    :pswitch_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1756
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->hideTransientBars(I)V

    return v0

    .line 1743
    :pswitch_44
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object p1

    .line 1746
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z

    move-result p1

    .line 1747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1732
    :pswitch_45
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1734
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object p1

    .line 1736
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1737
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 1738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1721
    :pswitch_46
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object p1

    .line 1725
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1726
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 1727
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1710
    :pswitch_47
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1712
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object p1

    .line 1714
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1715
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 1716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1698
    :pswitch_48
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1700
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object p1

    .line 1702
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1703
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result p1

    .line 1704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1682
    :pswitch_49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1685
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object p1

    .line 1686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_19

    .line 1688
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1689
    invoke-virtual {p1, p3, v0}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 1692
    :cond_19
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v0

    .line 1668
    :pswitch_4a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1a

    .line 1672
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1673
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 1676
    :cond_1a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v0

    .line 1657
    :pswitch_4b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1659
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1661
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1b

    move v3, v0

    .line 1662
    :cond_1b
    invoke-virtual {p0, p1, v3}, Landroid/view/IWindowManager$Stub;->setIgnoreOrientationRequest(IZ)V

    .line 1663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1646
    :pswitch_4c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1651
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->setFixedToUserRotation(II)V

    .line 1652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1636
    :pswitch_4d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1639
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->isDisplayRotationFrozen(I)Z

    move-result p1

    .line 1640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1641
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1627
    :pswitch_4e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1630
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->thawDisplayRotation(I)V

    .line 1631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1616
    :pswitch_4f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1621
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->freezeDisplayRotation(II)V

    .line 1622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1608
    :pswitch_50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1609
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result p1

    .line 1610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1611
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1601
    :pswitch_51
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 1603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1592
    :pswitch_52
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1595
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 1596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1582
    :pswitch_53
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1585
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity(I)I

    move-result p1

    .line 1586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1573
    :pswitch_54
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object p1

    .line 1576
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 1577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1561
    :pswitch_55
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object p1

    .line 1565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1566
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result p1

    .line 1567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1553
    :pswitch_56
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1554
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getDefaultDisplayRotation()I

    move-result p1

    .line 1555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1556
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1542
    :pswitch_57
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1c

    move p1, v0

    goto :goto_8

    :cond_1c
    move p1, v3

    .line 1546
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1d

    move v3, v0

    .line 1547
    :cond_1d
    invoke-virtual {p0, p1, v3}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    .line 1548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1533
    :pswitch_58
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1536
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->refreshScreenCaptureDisabled(I)V

    .line 1537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1524
    :pswitch_59
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1527
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1515
    :pswitch_5a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1e

    move v3, v0

    .line 1518
    :cond_1e
    invoke-virtual {p0, v3}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 1519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1506
    :pswitch_5b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1f

    move v3, v0

    .line 1509
    :cond_1f
    invoke-virtual {p0, v3}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 1510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1498
    :pswitch_5c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result p1

    .line 1500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v0

    .line 1489
    :pswitch_5d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    .line 1492
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 1493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1478
    :pswitch_5e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1482
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 1483
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 1484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1470
    :pswitch_5f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object p1

    .line 1472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1473
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    return v0

    .line 1460
    :pswitch_60
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1463
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result p1

    .line 1464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1465
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v0

    .line 1451
    :pswitch_61
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1454
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1442
    :pswitch_62
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_20

    move v3, v0

    .line 1445
    :cond_20
    invoke-virtual {p0, v3}, Landroid/view/IWindowManager$Stub;->setSwitchingUser(Z)V

    .line 1446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1426
    :pswitch_63
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object p1

    .line 1430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_21

    .line 1431
    sget-object p4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1436
    :cond_21
    invoke-virtual {p0, p1, v2}, Landroid/view/IWindowManager$Stub;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 1437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1416
    :pswitch_64
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1419
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure(I)Z

    move-result p1

    .line 1420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1408
    :pswitch_65
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result p1

    .line 1410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1399
    :pswitch_66
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object p1

    .line 1402
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 1403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1388
    :pswitch_67
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1393
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;I)V

    .line 1394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1375
    :pswitch_68
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1379
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1382
    invoke-virtual {p0, p1, p4, p2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1368
    :pswitch_69
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    .line 1370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1357
    :pswitch_6a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1362
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    .line 1363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1350
    :pswitch_6b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    .line 1352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1334
    :pswitch_6c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_22

    .line 1337
    sget-object p1, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/RemoteAnimationAdapter;

    .line 1343
    :cond_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1344
    invoke-virtual {p0, v2, p1}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V

    .line 1345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1319
    :pswitch_6d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object p1

    .line 1323
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object p4

    .line 1325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    move v3, v0

    .line 1327
    :cond_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1328
    invoke-virtual {p0, p1, p4, v3, p2}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V

    .line 1329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1306
    :pswitch_6e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1312
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object p2

    .line 1313
    invoke-virtual {p0, p1, p4, p2}, Landroid/view/IWindowManager$Stub;->setShellRootAccessibilityWindow(IILandroid/view/IWindow;)V

    .line 1314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1286
    :pswitch_6f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1290
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object p4

    .line 1292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1293
    invoke-virtual {p0, p1, p4, p2}, Landroid/view/IWindowManager$Stub;->addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;

    move-result-object p1

    .line 1294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_24

    .line 1296
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    invoke-virtual {p1, p3, v0}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 1300
    :cond_24
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v0

    .line 1277
    :pswitch_70
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IDisplayWindowRotationController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowRotationController;

    move-result-object p1

    .line 1280
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->setDisplayWindowRotationController(Landroid/view/IDisplayWindowRotationController;)V

    .line 1281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1266
    :pswitch_71
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1271
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;I)V

    .line 1272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1246
    :pswitch_72
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 1255
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    .line 1260
    :cond_25
    invoke-virtual {p0, p1, p4, v1, v2}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 1261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1236
    :pswitch_73
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1239
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->isWindowToken(Landroid/os/IBinder;)Z

    move-result p1

    .line 1240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1227
    :pswitch_74
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_26

    move v3, v0

    .line 1230
    :cond_26
    invoke-virtual {p0, v3}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 1231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1216
    :pswitch_75
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1221
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 1222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1205
    :pswitch_76
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1210
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    .line 1211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1192
    :pswitch_77
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1199
    invoke-virtual {p0, p1, p4, p2}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    .line 1200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1182
    :pswitch_78
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1185
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result p1

    .line 1186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1172
    :pswitch_79
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1175
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result p1

    .line 1176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1163
    :pswitch_7a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1166
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 1167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1150
    :pswitch_7b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1157
    invoke-virtual {p0, p1, p4, p2}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 1158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1132
    :pswitch_7c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1136
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 1137
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 1138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    invoke-virtual {p2, p3, v0}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    return v0

    .line 1114
    :pswitch_7d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1118
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 1119
    invoke-virtual {p0, p1, p2}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 1120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    invoke-virtual {p2, p3, v0}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    return v0

    .line 1106
    :pswitch_7e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->useBLAST()Z

    move-result p1

    .line 1108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1096
    :pswitch_7f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object p1

    .line 1099
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;

    move-result-object p1

    .line 1100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_27

    .line 1101
    invoke-interface {p1}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_27
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 1088
    :pswitch_80
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result p1

    .line 1090
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1080
    :pswitch_81
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result p1

    .line 1082
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1070
    :pswitch_82
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1073
    invoke-virtual {p0, p1}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result p1

    .line 1074
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1062
    :cond_28
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
