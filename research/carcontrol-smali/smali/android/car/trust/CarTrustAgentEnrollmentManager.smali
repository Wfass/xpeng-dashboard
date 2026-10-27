.class public final Landroid/car/trust/CarTrustAgentEnrollmentManager;
.super Landroid/car/CarManagerBase;
.source "CarTrustAgentEnrollmentManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$TrustedDeviceEnrollmentError;
    }
.end annotation


# static fields
.field public static final ENROLLMENT_HANDSHAKE_FAILURE:I = 0x1

.field public static final ENROLLMENT_NOT_ALLOWED:I = 0x2

.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"

.field private static final KEY_HANDLE:Ljava/lang/String; = "handle"

.field private static final MSG_ENROLL_ADVERTISING_FAILED:I = 0x1

.field private static final MSG_ENROLL_ADVERTISING_STARTED:I = 0x0

.field private static final MSG_ENROLL_AUTH_STRING_AVAILABLE:I = 0x5

.field private static final MSG_ENROLL_DEVICE_CONNECTED:I = 0x2

.field private static final MSG_ENROLL_DEVICE_DISCONNECTED:I = 0x3

.field private static final MSG_ENROLL_HANDSHAKE_FAILURE:I = 0x4

.field private static final MSG_ENROLL_TOKEN_ADDED:I = 0x6

.field private static final MSG_ENROLL_TOKEN_REMOVED:I = 0x8

.field private static final MSG_ENROLL_TOKEN_STATE_CHANGED:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CarTrustEnrollMgr"


# instance fields
.field private mBleCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;

.field private mEnrollmentCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;

.field private final mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

.field private final mEventCallbackHandler:Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;

.field private mListenerLock:Ljava/lang/Object;

.field private final mListenerToBleService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;

.field private final mListenerToEnrollmentService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 86
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    .line 91
    new-instance p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;

    invoke-direct {p1, p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;-><init>(Landroid/car/trust/CarTrustAgentEnrollmentManager;)V

    iput-object p1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerToEnrollmentService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;

    .line 94
    new-instance p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;

    invoke-direct {p1, p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;-><init>(Landroid/car/trust/CarTrustAgentEnrollmentManager;)V

    iput-object p1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerToBleService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;

    .line 119
    invoke-static {p2}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/trust/ICarTrustAgentEnrollment;

    move-result-object p1

    iput-object p1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    .line 120
    new-instance p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;

    invoke-virtual {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->getEventHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;-><init>(Landroid/car/trust/CarTrustAgentEnrollmentManager;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEventCallbackHandler:Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;
    .locals 0

    .line 71
    invoke-direct {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->getEventCallbackHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/trust/CarTrustAgentEnrollmentManager;Landroid/os/Message;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->dispatchBleCallback(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/trust/CarTrustAgentEnrollmentManager;Landroid/os/Message;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->dispatchEnrollmentCallback(Landroid/os/Message;)V

    return-void
.end method

.method private dispatchBleCallback(Landroid/os/Message;)V
    .locals 3

    .line 641
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_0
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mBleCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;

    .line 643
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    .line 647
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 658
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;->onBleEnrollmentDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 655
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;->onBleEnrollmentDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 652
    :cond_3
    invoke-interface {v1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;->onEnrollmentAdvertisingFailed()V

    goto :goto_0

    .line 649
    :cond_4
    invoke-interface {v1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;->onEnrollmentAdvertisingStarted()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 643
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchEnrollmentCallback(Landroid/os/Message;)V
    .locals 4

    .line 672
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_0
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;

    .line 674
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    .line 680
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 707
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "handle"

    .line 711
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onEscrowTokenRemoved(J)V

    goto :goto_0

    .line 699
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "handle"

    .line 703
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "active"

    .line 704
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 703
    invoke-interface {v1, v2, v3, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onEscrowTokenActiveStateChanged(JZ)V

    goto :goto_0

    .line 692
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "handle"

    .line 696
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onEscrowTokenAdded(J)V

    goto :goto_0

    .line 686
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;

    .line 687
    iget-object v0, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mAuthString:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 688
    iget-object v0, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p1, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mAuthString:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onAuthStringAvailable(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;

    .line 683
    iget-object v0, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget p1, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mErrorCode:I

    invoke-interface {v1, v0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onEnrollmentHandshakeFailure(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 674
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEventCallbackHandler()Landroid/os/Handler;
    .locals 1

    .line 362
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEventCallbackHandler:Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;

    return-object v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "trust_enroll"

    return-object v0
.end method

.method private registerBleCallback(Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;)V
    .locals 3

    .line 318
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 319
    :try_start_0
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mBleCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 321
    :try_start_1
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    iget-object v2, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerToBleService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;

    invoke-interface {v1, v2}, Landroid/car/trust/ICarTrustAgentEnrollment;->registerBleCallback(Landroid/car/trust/ICarTrustAgentBleCallback;)V

    .line 322
    iput-object p1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mBleCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 324
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 327
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private registerEnrollmentCallback(Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;)V
    .locals 3

    .line 278
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 279
    :try_start_0
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 281
    :try_start_1
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    iget-object v2, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerToEnrollmentService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;

    invoke-interface {v1, v2}, Landroid/car/trust/ICarTrustAgentEnrollment;->registerEnrollmentCallback(Landroid/car/trust/ICarTrustAgentEnrollmentCallback;)V

    .line 282
    iput-object p1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 284
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 287
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private unregisterBleCallback()V
    .locals 3

    .line 331
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mBleCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 334
    :try_start_1
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    iget-object v2, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerToBleService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;

    invoke-interface {v1, v2}, Landroid/car/trust/ICarTrustAgentEnrollment;->unregisterBleCallback(Landroid/car/trust/ICarTrustAgentBleCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 336
    :try_start_2
    invoke-virtual {p0, v1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    const/4 v1, 0x0

    .line 338
    iput-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mBleCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;

    .line 340
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private unregisterEnrollmentCallback()V
    .locals 3

    .line 291
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 294
    :try_start_1
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    iget-object v2, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerToEnrollmentService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;

    invoke-interface {v1, v2}, Landroid/car/trust/ICarTrustAgentEnrollment;->unregisterEnrollmentCallback(Landroid/car/trust/ICarTrustAgentEnrollmentCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 296
    :try_start_2
    invoke-virtual {p0, v1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    const/4 v1, 0x0

    .line 298
    iput-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;

    .line 300
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public enrollmentHandshakeAccepted(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {v0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment;->enrollmentHandshakeAccepted(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public getEnrolledDeviceInfoForUser(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/car/trust/TrustedDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 355
    :try_start_0
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {v0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment;->getEnrolledDeviceInfosForUser(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 357
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public isEscrowTokenActive(JI)Z
    .locals 1

    .line 198
    :try_start_0
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {v0, p1, p2, p3}, Landroid/car/trust/ICarTrustAgentEnrollment;->isEscrowTokenActive(JI)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 200
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public declared-synchronized onCarDisconnected()V
    .locals 0

    monitor-enter p0

    .line 126
    monitor-exit p0

    return-void
.end method

.method public removeAllTrustedDevices(I)V
    .locals 1

    .line 227
    :try_start_0
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {v0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment;->removeAllTrustedDevices(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 229
    invoke-virtual {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public removeEscrowToken(JI)V
    .locals 1

    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {v0, p1, p2, p3}, Landroid/car/trust/ICarTrustAgentEnrollment;->removeEscrowToken(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 215
    invoke-virtual {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setBleCallback(Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;)V
    .locals 0

    if-nez p1, :cond_0

    .line 311
    invoke-direct {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->unregisterBleCallback()V

    goto :goto_0

    .line 313
    :cond_0
    invoke-direct {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->registerBleCallback(Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;)V

    :goto_0
    return-void
.end method

.method public setEnrollmentCallback(Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;)V
    .locals 0

    if-nez p1, :cond_0

    .line 271
    invoke-direct {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->unregisterEnrollmentCallback()V

    goto :goto_0

    .line 273
    :cond_0
    invoke-direct {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->registerEnrollmentCallback(Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;)V

    :goto_0
    return-void
.end method

.method public setTrustedDeviceEnrollmentEnabled(Z)V
    .locals 1

    .line 242
    :try_start_0
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {v0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment;->setTrustedDeviceEnrollmentEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public setTrustedDeviceUnlockEnabled(Z)V
    .locals 1

    .line 257
    :try_start_0
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {v0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment;->setTrustedDeviceUnlockEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    invoke-virtual {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public startEnrollmentAdvertising()V
    .locals 1

    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {v0}, Landroid/car/trust/ICarTrustAgentEnrollment;->startEnrollmentAdvertising()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {p0, v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public stopEnrollmentAdvertising()V
    .locals 1

    .line 150
    :try_start_0
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {v0}, Landroid/car/trust/ICarTrustAgentEnrollment;->stopEnrollmentAdvertising()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {p0, v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public terminateEnrollmentHandshake()V
    .locals 1

    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {v0}, Landroid/car/trust/ICarTrustAgentEnrollment;->terminateEnrollmentHandshake()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {p0, v0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method
