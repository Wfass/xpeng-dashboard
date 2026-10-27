.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$IAppOpsCallbackWrapper;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_DISABLED:I = 0x3

.field public static final CAMERA_ERROR_EVICTED:I = 0x2

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field public static final CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field public static final CAMERA_HAL_API_VERSION_3_0:I = 0x300

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Camera"


# instance fields
.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mHasAppOpsPlayAudio:Z

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mNativeContext:J

.field private mOneShot:Z

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mShutterSoundEnabledFromApp:Z

.field private final mShutterSoundLock:Ljava/lang/Object;

.field private mUsingPreviewAllocation:Z

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 202
    iput-boolean v0, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 202
    iput-boolean v0, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    .line 494
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInit(I)I

    move-result p1

    .line 495
    invoke-static {p1}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    sget v0, Landroid/system/OsConstants;->EACCES:I

    neg-int v0, v0

    if-eq p1, v0, :cond_1

    .line 498
    sget v0, Landroid/system/OsConstants;->ENODEV:I

    neg-int v0, v0

    if-ne p1, v0, :cond_0

    .line 499
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Camera initialization failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 502
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown camera error"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 497
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Fail to connect to camera service"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 504
    :cond_2
    invoke-direct {p0}, Landroid/hardware/Camera;->initAppOps()V

    return-void
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 0

    .line 159
    iget-object p0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object p0
.end method

.method static synthetic access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 0

    .line 159
    iget-object p0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 0

    .line 159
    iget-object p0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 0

    .line 159
    iget-object p0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object p0
.end method

.method static synthetic access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 0

    .line 159
    iget-object p0, p0, Landroid/hardware/Camera;->mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object p0
.end method

.method static synthetic access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 0

    .line 159
    iget-object p0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object p0
.end method

.method static synthetic access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 0

    .line 159
    iget-object p0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object p0
.end method

.method static synthetic access$1500(Landroid/hardware/Camera;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Landroid/hardware/Camera;->updateAppOpsPlayAudio()V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 0

    .line 159
    iget-object p0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object p0
.end method

.method static synthetic access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0

    .line 159
    iget-object p0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p0
.end method

.method static synthetic access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0

    .line 159
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$400(Landroid/hardware/Camera;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return p0
.end method

.method static synthetic access$500(Landroid/hardware/Camera;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return p0
.end method

.method static synthetic access$600(Landroid/hardware/Camera;ZZ)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 0

    .line 159
    iget-object p0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object p0
.end method

.method static synthetic access$800(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 0

    .line 159
    iget-object p0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 0

    .line 159
    iget-object p0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object p0
.end method

.method private final addCallbackBuffer([BI)V
    .locals 2

    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    const/16 v0, 0x80

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 983
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported message type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 987
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    return-void
.end method

.method private cameraInit(I)I
    .locals 2

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 472
    iput-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 473
    iput-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 474
    iput-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 475
    iput-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    const/4 v1, 0x0

    .line 476
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 477
    iput-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 480
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 481
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    .line 482
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 483
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    .line 485
    :cond_1
    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 488
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 489
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-direct {p0, v0, p1, v1}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public static checkInitErrors(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 0

    .line 294
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const-string p0, "audio"

    .line 295
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 296
    invoke-static {p0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object p0

    .line 298
    :try_start_0
    invoke-interface {p0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 301
    iput-boolean p0, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Camera"

    const-string p1, "Audio service is unavailable for queries"

    .line 304
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .line 2091
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 2092
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    return-object v1
.end method

.method public static native getNumberOfCameras()I
.end method

.method public static getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 3

    const-string v0, "parameters must not be null"

    .line 2106
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2109
    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->access$1700(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    move-result-object v0

    .line 2110
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2111
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    return-object v1
.end method

.method private initAppOps()V
    .locals 4

    const-string v0, "appops"

    .line 528
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 529
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 531
    invoke-direct {p0}, Landroid/hardware/Camera;->updateAppOpsPlayAudio()V

    .line 533
    new-instance v0, Landroid/hardware/Camera$IAppOpsCallbackWrapper;

    invoke-direct {v0, p0}, Landroid/hardware/Camera$IAppOpsCallbackWrapper;-><init>(Landroid/hardware/Camera;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 535
    :try_start_0
    iget-object v0, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x1c

    .line 536
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 535
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Camera"

    const-string v2, "Error registering appOps callback"

    .line 538
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 539
    iput-boolean v0, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    :goto_0
    return-void
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private native native_setup(Ljava/lang/Object;ILjava/lang/String;)I
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .locals 4

    .line 412
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 413
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 415
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 416
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 417
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, v2}, Landroid/hardware/Camera;-><init>(I)V

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 1

    .line 399
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    return-object v0
.end method

.method public static openLegacy(II)Landroid/hardware/Camera;
    .locals 2

    const/16 v0, 0x300

    if-lt p1, v0, :cond_0

    .line 467
    new-instance p1, Landroid/hardware/Camera;

    invoke-direct {p1, p0}, Landroid/hardware/Camera;-><init>(I)V

    return-object p1

    .line 464
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported HAL version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openUninitialized()Landroid/hardware/Camera;
    .locals 1

    .line 519
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 1

    .line 1229
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/Camera;

    if-nez p0, :cond_0

    return-void

    .line 1233
    :cond_0
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v0, :cond_1

    .line 1234
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1235
    iget-object p0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private releaseAppOps()V
    .locals 2

    .line 545
    :try_start_0
    iget-object v0, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v0, :cond_0

    .line 546
    iget-object v1, p0, Landroid/hardware/Camera;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private final native setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method

.method private updateAppOpsPlayAudio()V
    .locals 9

    .line 1703
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1704
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 1707
    :try_start_1
    iget-object v3, p0, Landroid/hardware/Camera;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/16 v5, 0x1c

    const/16 v6, 0xd

    .line 1710
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1708
    invoke-interface {v3, v5, v6, v7, v8}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 1712
    :goto_1
    iput-boolean v4, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v3, "Camera"

    const-string v4, "AppOpsService check audio operation failed"

    .line 1714
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iput-boolean v2, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    .line 1717
    :goto_2
    iget-boolean v3, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-eq v1, v3, :cond_4

    if-nez v3, :cond_3

    const-string v1, "audio"

    .line 1719
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1720
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1722
    :try_start_3
    invoke-interface {v1}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 1723
    :try_start_4
    monitor-exit v0

    return-void

    :catch_1
    const-string v1, "Camera"

    const-string v3, "Audio service is unavailable for queries"

    .line 1726
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_2
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    goto :goto_3

    .line 1730
    :cond_3
    iget-boolean v1, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    invoke-virtual {p0, v1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 1733
    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1

    const/16 v0, 0x10

    .line 930
    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1

    const/16 v0, 0x80

    .line 974
    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 1

    .line 1321
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1322
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1323
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    return-void

    :catchall_0
    move-exception p1

    .line 1323
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .line 1341
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1342
    :try_start_0
    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1343
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1360
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    return-void

    :catchall_0
    move-exception v1

    .line 1343
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final createPreviewAllocation(Landroid/renderscript/RenderScript;I)Landroid/renderscript/Allocation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSIllegalArgumentException;
        }
    .end annotation

    .line 1020
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1021
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1022
    new-instance v1, Landroid/renderscript/Type$Builder;

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v3, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    .line 1023
    invoke-static {p1, v2, v3}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    const v2, 0x32315659

    .line 1028
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 1029
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1030
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v0}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1032
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v0

    or-int/lit8 p2, p2, 0x20

    invoke-static {p1, v0, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object p1

    return-object p1
.end method

.method public final disableShutterSound()Z
    .locals 1

    const/4 v0, 0x0

    .line 1679
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final enableShutterSound(Z)Z
    .locals 5

    const-string v0, "audio"

    .line 1635
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1636
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    const/4 v1, 0x1

    .line 1638
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v1, v0

    goto :goto_0

    :catch_0
    const-string v0, "Camera"

    const-string v2, "Audio service is unavailable for queries"

    .line 1642
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez v1, :cond_0

    return v0

    .line 1647
    :cond_0
    iget-object v2, p0, Landroid/hardware/Camera;->mShutterSoundLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1648
    :try_start_1
    iput-boolean p1, p0, Landroid/hardware/Camera;->mShutterSoundEnabledFromApp:Z

    .line 1651
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v3

    if-eqz p1, :cond_1

    .line 1652
    iget-boolean p1, p0, Landroid/hardware/Camera;->mHasAppOpsPlayAudio:Z

    if-nez p1, :cond_1

    const-string p1, "Camera"

    const-string v4, "Shutter sound is not allowed by AppOpsManager"

    .line 1653
    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 1655
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    .line 1658
    :cond_1
    monitor-exit v2

    return v3

    :catchall_0
    move-exception p1

    .line 1659
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected finalize()V
    .locals 0

    .line 555
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    return-void
.end method

.method public final native getAudioRestriction()I
.end method

.method public getCmdControlParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .line 2133
    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .line 2076
    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2077
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2078
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    return-object v0
.end method

.method public final native lock()V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 1

    .line 570
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    const/4 v0, 0x0

    .line 571
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 572
    invoke-direct {p0}, Landroid/hardware/Camera;->releaseAppOps()V

    return-void
.end method

.method public final native setAudioRestriction(I)V
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 0

    .line 1396
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1397
    :goto_0
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    return-void
.end method

.method public setCmdControlParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    const-string v0, "params must not be null"

    .line 2122
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public final setDetailedErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0

    .line 2035
    iput-object p1, p0, Landroid/hardware/Camera;->mDetailedErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-void
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0

    .line 2017
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0

    .line 1799
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-void
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    .line 846
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    const/4 v0, 0x1

    .line 847
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    const/4 v1, 0x0

    .line 848
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    if-eqz p1, :cond_0

    .line 850
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 852
    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    .line 2052
    iget-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    if-eqz v0, :cond_1

    .line 2053
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2054
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2055
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_0

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2057
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change preview size while a preview allocation is configured."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2062
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1

    .line 818
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    const/4 v0, 0x0

    .line 819
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 820
    iput-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    if-eqz p1, :cond_0

    .line 822
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 826
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method public final setPreviewCallbackAllocation(Landroid/renderscript/Allocation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1088
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1090
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1091
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1101
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    .line 1106
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    move-result-object v0

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-ne v0, v1, :cond_0

    .line 1111
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v0, 0x1

    .line 1112
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    goto :goto_0

    .line 1108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Allocation is not of a YUV type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1103
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Allocation usage does not include USAGE_IO_INPUT"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1092
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation dimensions don\'t match preview dimensions: Allocation is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1095
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1097
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object p1

    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ". Preview is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 p1, 0x0

    .line 1114
    iput-boolean p1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    const/4 p1, 0x0

    .line 1116
    :goto_0
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    .line 886
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    const/4 v0, 0x0

    .line 887
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    const/4 v1, 0x1

    .line 888
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    if-eqz p1, :cond_0

    .line 890
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    .line 892
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 661
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 663
    check-cast p1, Landroid/view/Surface;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public final native setPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0

    .line 1769
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-void
.end method

.method public final startFaceDetection()V
    .locals 2

    .line 1835
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1838
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    const/4 v0, 0x1

    .line 1839
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    return-void

    .line 1836
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final native startPreview()V
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public final stopFaceDetection()V
    .locals 1

    .line 1848
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    const/4 v0, 0x0

    .line 1849
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    return-void
.end method

.method public final stopPreview()V
    .locals 2

    .line 776
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    const/4 v0, 0x0

    .line 777
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    const/4 v0, 0x0

    .line 779
    iput-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 780
    iput-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 781
    iput-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 782
    iput-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 783
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 784
    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 785
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-void

    :catchall_0
    move-exception v0

    .line 785
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1451
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1

    .line 1489
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1490
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1491
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1492
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_1

    or-int/lit16 p1, p1, 0x80

    :cond_1
    if-eqz p3, :cond_2

    or-int/lit8 p1, p1, 0x40

    :cond_2
    if-eqz p4, :cond_3

    or-int/lit16 p1, p1, 0x100

    .line 1509
    :cond_3
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1510
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    return-void
.end method

.method public final native unlock()V
.end method
