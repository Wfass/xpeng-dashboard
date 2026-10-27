.class public Lcom/android/car/BluetoothDeviceConnectionPolicy;
.super Ljava/lang/Object;
.source "BluetoothDeviceConnectionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/BluetoothDeviceConnectionPolicy$CarUxRServiceListener;,
        Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;,
        Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;,
        Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;,
        Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MAX_CONNECT_RETRIES:I = 0x1

.field private static final NUM_SUPPORTED_MSG_CONNECTIONS:I = 0x4

.field private static final NUM_SUPPORTED_MUSIC_CONNECTIONS:I = 0x1

.field private static final NUM_SUPPORTED_NETWORK_CONNECTIONS:I = 0x1

.field private static final NUM_SUPPORTED_PHONE_CONNECTIONS:I = 0x4

.field private static final PROFILE_NOT_AVAILABLE:I = -0x1

.field private static final SETTINGS_DELIMITER:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "BTDevConnectionPolicy"


# instance fields
.field private mAllowReadWriteToSettings:Z

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothAutoConnectStateMachine:Lcom/android/car/BluetoothAutoConnectStateMachine;

.field private mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCarBluetoothService:Lcom/android/car/CarBluetoothService;

.field private mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

.field private final mCarPropertyService:Lcom/android/car/CarPropertyService;

.field private mCarUserService:Landroid/car/ICarUserService;

.field private mCarUserServiceAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

.field private final mContext:Landroid/content/Context;

.field private final mFastPairProvider:Lcom/android/car/FastPairProvider;

.field private mInitialized:Z

.field private mNumSupportedActiveConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPairedButUnconnectedDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrioritiesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileToConnectableDevicesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/BluetoothDevicesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfilesToConnect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyEventListener:Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;

.field private final mServiceCallback:Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;

.field private final mSetupLock:Ljava/lang/Object;

.field private mUserServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

.field private mUserSpecificInfoInitialized:Z

.field private final mUxRListener:Lcom/android/car/BluetoothDeviceConnectionPolicy$CarUxRServiceListener;

.field private final mUxRService:Lcom/android/car/CarUxRestrictionsManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    sget-object v0, Lcom/android/car/Utils;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;Lcom/android/car/PerUserCarServiceHelper;Lcom/android/car/CarUxRestrictionsManagerService;Lcom/android/car/CarBluetoothService;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carPropertyService"    # Lcom/android/car/CarPropertyService;
    .param p3, "userServiceHelper"    # Lcom/android/car/PerUserCarServiceHelper;
    .param p4, "uxrService"    # Lcom/android/car/CarUxRestrictionsManagerService;
    .param p5, "bluetoothService"    # Lcom/android/car/CarBluetoothService;

    move-object/from16 v0, p0

    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mInitialized:Z

    .line 96
    iput-boolean v1, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUserSpecificInfoInitialized:Z

    .line 97
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mSetupLock:Ljava/lang/Object;

    .line 144
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mAllowReadWriteToSettings:Z

    .line 146
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mPairedButUnconnectedDevices:Ljava/util/Set;

    .line 158
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    .line 159
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    .line 160
    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUserServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    .line 161
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUxRService:Lcom/android/car/CarUxRestrictionsManagerService;

    .line 162
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothService:Lcom/android/car/CarBluetoothService;

    .line 163
    new-instance v8, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v8}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v8, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarUserServiceAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 164
    const/4 v8, 0x5

    new-array v9, v8, [Ljava/lang/Integer;

    .line 165
    const/16 v10, 0x10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v1

    const/16 v11, 0xb

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v2

    .line 166
    const/16 v12, 0x11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v9, v14

    const/16 v13, 0x12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v9, v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v10, 0x4

    aput-object v15, v9, v10

    .line 164
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfilesToConnect:Ljava/util/List;

    .line 167
    new-array v9, v14, [Ljava/lang/Integer;

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v1

    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v2

    .line 167
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mPrioritiesSupported:Ljava/util/List;

    .line 173
    new-instance v1, Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfilesToConnect:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v1, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mNumSupportedActiveConnections:Ljava/util/Map;

    .line 174
    iget-object v1, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfilesToConnect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 175
    .local v9, "profile":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v14, v8, :cond_1

    if-eq v14, v11, :cond_0

    packed-switch v14, :pswitch_data_0

    .line 197
    .end local v9    # "profile":Ljava/lang/Integer;
    :goto_1
    const/16 v14, 0x10

    goto :goto_2

    .line 189
    .restart local v9    # "profile":Ljava/lang/Integer;
    :pswitch_0
    iget-object v14, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mNumSupportedActiveConnections:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 190
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 189
    invoke-interface {v14, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    goto :goto_1

    .line 181
    :pswitch_1
    iget-object v13, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mNumSupportedActiveConnections:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 182
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 181
    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    goto :goto_1

    .line 177
    :pswitch_2
    iget-object v13, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mNumSupportedActiveConnections:Ljava/util/Map;

    const/16 v14, 0x10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 178
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 177
    invoke-interface {v13, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    goto :goto_2

    .line 185
    :cond_0
    const/16 v14, 0x10

    iget-object v12, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mNumSupportedActiveConnections:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 185
    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    goto :goto_2

    .line 193
    :cond_1
    const/16 v14, 0x10

    iget-object v12, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mNumSupportedActiveConnections:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 193
    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v9    # "profile":Ljava/lang/Integer;
    :goto_2
    nop

    .line 174
    const/16 v12, 0x11

    const/16 v13, 0x12

    goto :goto_0

    .line 200
    :cond_2
    new-instance v1, Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;

    invoke-direct {v1, v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;-><init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    iput-object v1, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mPropertyEventListener:Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;

    .line 202
    new-instance v1, Lcom/android/car/BluetoothDeviceConnectionPolicy$CarUxRServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/car/BluetoothDeviceConnectionPolicy$CarUxRServiceListener;-><init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;Lcom/android/car/BluetoothDeviceConnectionPolicy$1;)V

    iput-object v1, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUxRListener:Lcom/android/car/BluetoothDeviceConnectionPolicy$CarUxRServiceListener;

    .line 204
    new-instance v1, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;

    invoke-direct {v1, v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;-><init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    iput-object v1, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mServiceCallback:Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;

    .line 205
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 206
    iget-object v1, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_3

    .line 207
    const-string v1, "BTDevConnectionPolicy"

    const-string v2, "No Bluetooth Adapter Available"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_3
    new-instance v1, Lcom/android/car/FastPairProvider;

    iget-object v2, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/car/FastPairProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mFastPairProvider:Lcom/android/car/FastPairProvider;

    .line 210
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 90
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Landroid/car/ICarBluetoothUserService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 90
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/car/BluetoothDeviceConnectionPolicy;Landroid/car/ICarBluetoothUserService;)Landroid/car/ICarBluetoothUserService;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;
    .param p1, "x1"    # Landroid/car/ICarBluetoothUserService;

    .line 90
    iput-object p1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Landroid/car/ICarBluetoothUserService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 90
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->setupBluetoothUserService()Landroid/car/ICarBluetoothUserService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 90
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->initializeUserSpecificInfo()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 90
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->cleanupUserSpecificInfo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/car/BluetoothDeviceConnectionPolicy;Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;
    .param p1, "x1"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 90
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->handleUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/BluetoothDeviceConnectionPolicy;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->updateBondState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/BluetoothDeviceConnectionPolicy;Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;
    .param p1, "x1"    # Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    .param p2, "x2"    # I

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->notifyConnectionStatus(Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 90
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->initiateConnection()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 90
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->writeDeviceInfoToSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 90
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->resetBluetoothDevicesConnectionInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/car/BluetoothDeviceConnectionPolicy;Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # [Landroid/os/ParcelUuid;
    .param p3, "x3"    # I

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->setProfilePriorities(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 90
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarUserServiceAccessLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/car/BluetoothDeviceConnectionPolicy;Landroid/car/ICarUserService;)Landroid/car/ICarUserService;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;
    .param p1, "x1"    # Landroid/car/ICarUserService;

    .line 90
    iput-object p1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarUserService:Landroid/car/ICarUserService;

    return-object p1
.end method

.method private declared-synchronized addDeviceToProfile(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/BluetoothDevicesInfo;

    .line 857
    .local v0, "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    if-nez v0, :cond_1

    .line 858
    sget-boolean v1, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v1, :cond_0

    .line 859
    const-string v1, "BTDevConnectionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating devInfo for profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_0
    new-instance v1, Lcom/android/car/BluetoothDevicesInfo;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/car/BluetoothDevicesInfo;-><init>(I)V

    move-object v0, v1

    .line 862
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/car/BluetoothDevicesInfo;->addDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    monitor-exit p0

    return-void

    .line 855
    .end local v0    # "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "profile":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw p1
.end method

.method private declared-synchronized canRetryConnection(Ljava/lang/Integer;)Z
    .locals 5
    .param p1, "profile"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 1320
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/BluetoothDevicesInfo;

    .line 1321
    .local v0, "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1322
    const-string v2, "BTDevConnectionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected: No device Queue for this profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    monitor-exit p0

    return v1

    .line 1325
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/car/BluetoothDevicesInfo;->getRetryCountLocked()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 1326
    monitor-exit p0

    return v3

    .line 1328
    :cond_1
    monitor-exit p0

    return v1

    .line 1319
    .end local v0    # "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    .end local p1    # "profile":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw p1
.end method

.method private cleanupUserSpecificInfo()V
    .locals 4

    .line 697
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mSetupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    :try_start_0
    sget-boolean v1, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v1, :cond_0

    .line 699
    const-string v1, "BTDevConnectionPolicy"

    const-string v2, "cleanupUserSpecificInfo()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    iget-boolean v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUserSpecificInfoInitialized:Z

    if-nez v1, :cond_2

    .line 702
    sget-boolean v1, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v1, :cond_1

    .line 703
    const-string v1, "BTDevConnectionPolicy"

    const-string v2, "User specific Info Not initialized..Not cleaning up"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_1
    monitor-exit v0

    return-void

    .line 707
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUserSpecificInfoInitialized:Z

    .line 709
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAutoConnectStateMachine:Lcom/android/car/BluetoothAutoConnectStateMachine;

    invoke-virtual {v1}, Lcom/android/car/BluetoothAutoConnectStateMachine;->doQuit()V

    .line 710
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    .line 711
    iput-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    .line 712
    iget-object v2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_4

    .line 713
    iget-object v2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 714
    iget-object v2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 716
    :cond_3
    iput-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 718
    :cond_4
    monitor-exit v0

    .line 719
    return-void

    .line 718
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private closeEventListeners()V
    .locals 3

    .line 726
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 727
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "closeEventListeners()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x16200b02

    iget-object v2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mPropertyEventListener:Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 730
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x11400409

    iget-object v2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mPropertyEventListener:Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 732
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUserServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mServiceCallback:Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/android/car/PerUserCarServiceHelper;->unregisterServiceCallback(Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;)V

    .line 733
    return-void
.end method

.method private connectToNextDeviceInQueueLocked(Ljava/lang/Integer;)Z
    .locals 6
    .param p1, "profile"    # Ljava/lang/Integer;

    .line 1154
    const/4 v0, 0x0

    .line 1155
    .local v0, "devToConnect":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BluetoothDevicesInfo;

    .line 1156
    .local v1, "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1157
    const-string v3, "BTDevConnectionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected: No device Queue for this profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    return v2

    .line 1161
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->isProxyAvailable(Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1163
    invoke-virtual {v1}, Lcom/android/car/BluetoothDevicesInfo;->getNextDeviceInQueueLocked()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1164
    if-eqz v0, :cond_1

    .line 1166
    invoke-virtual {p0, p1, v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->connectToDeviceOnProfile(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    return v2

    .line 1169
    :cond_1
    sget-boolean v3, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v3, :cond_2

    .line 1170
    const-string v3, "BTDevConnectionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No paired nearby device to connect to for profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->setProfileOnDeviceToUnavailable(Lcom/android/car/BluetoothDevicesInfo;)V

    .line 1177
    return v2
.end method

.method public static create(Landroid/content/Context;Lcom/android/car/CarPropertyService;Lcom/android/car/PerUserCarServiceHelper;Lcom/android/car/CarUxRestrictionsManagerService;Lcom/android/car/CarBluetoothService;)Lcom/android/car/BluetoothDeviceConnectionPolicy;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "carPropertyService"    # Lcom/android/car/CarPropertyService;
    .param p2, "userServiceHelper"    # Lcom/android/car/PerUserCarServiceHelper;
    .param p3, "uxrService"    # Lcom/android/car/CarUxRestrictionsManagerService;
    .param p4, "bluetoothService"    # Lcom/android/car/CarBluetoothService;

    .line 151
    new-instance v6, Lcom/android/car/BluetoothDeviceConnectionPolicy;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/car/BluetoothDeviceConnectionPolicy;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;Lcom/android/car/PerUserCarServiceHelper;Lcom/android/car/CarUxRestrictionsManagerService;Lcom/android/car/CarBluetoothService;)V

    return-object v6
.end method

.method private getBondedDeviceWithGivenName(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1651
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1652
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 1653
    const-string v0, "BTDevConnectionPolicy"

    const-string v2, "Bluetooth Adapter Null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_0
    return-object v1

    .line 1657
    :cond_1
    if-nez p1, :cond_2

    .line 1658
    const-string v0, "BTDevConnectionPolicy"

    const-string v2, "getBondedDeviceWithGivenName() Passing in a null name"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    return-object v1

    .line 1661
    :cond_2
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_3

    .line 1662
    const-string v0, "BTDevConnectionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for bonded device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_3
    const/4 v0, 0x0

    .line 1665
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 1666
    .local v1, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1667
    .local v3, "bd":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1668
    move-object v0, v3

    .line 1669
    goto :goto_1

    .line 1671
    .end local v3    # "bd":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    goto :goto_0

    .line 1672
    :cond_5
    :goto_1
    return-object v0
.end method

.method private getNextProfileToConnectLocked()Ljava/lang/Integer;
    .locals 6

    .line 980
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfilesToConnect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 981
    .local v1, "profile":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothDevicesInfo;

    .line 982
    .local v2, "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    if-eqz v2, :cond_0

    .line 983
    invoke-virtual {v2}, Lcom/android/car/BluetoothDevicesInfo;->isProfileConnectableLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 984
    return-object v1

    .line 987
    :cond_0
    const-string v3, "BTDevConnectionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected: devInfo null for profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    .end local v1    # "profile":Ljava/lang/Integer;
    .end local v2    # "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    :cond_1
    goto :goto_0

    .line 991
    :cond_2
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_3

    .line 992
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "No disconnected profiles"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_3
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private handleUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 668
    if-nez p1, :cond_0

    .line 669
    return-void

    .line 671
    :cond_0
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v0

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 673
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mFastPairProvider:Lcom/android/car/FastPairProvider;

    invoke-virtual {v0}, Lcom/android/car/FastPairProvider;->stopAdvertising()Z

    goto :goto_0

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mFastPairProvider:Lcom/android/car/FastPairProvider;

    invoke-virtual {v0}, Lcom/android/car/FastPairProvider;->startAdvertising()Z

    .line 677
    :goto_0
    return-void
.end method

.method private declared-synchronized initDeviceMap()V
    .locals 5

    monitor-enter p0

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 582
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    .line 583
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfilesToConnect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 585
    .local v1, "profile":Ljava/lang/Integer;
    new-instance v2, Lcom/android/car/BluetoothDevicesInfo;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mNumSupportedActiveConnections:Ljava/util/Map;

    .line 586
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/car/BluetoothDevicesInfo;-><init>(II)V

    .line 587
    .local v2, "devicesInfo":Lcom/android/car/BluetoothDevicesInfo;
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .end local v1    # "profile":Ljava/lang/Integer;
    .end local v2    # "devicesInfo":Lcom/android/car/BluetoothDevicesInfo;
    goto :goto_0

    .line 589
    :cond_0
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_1

    .line 590
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "Created a new empty Device Map"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :cond_1
    monitor-exit p0

    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw v0
.end method

.method private initializeUserSpecificInfo()V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mSetupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_0
    sget-boolean v1, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v1, :cond_0

    .line 534
    const-string v1, "BTDevConnectionPolicy"

    const-string v2, "initializeUserSpecificInfo()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    iget-boolean v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUserSpecificInfoInitialized:Z

    if-eqz v1, :cond_2

    .line 537
    sget-boolean v1, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v1, :cond_1

    .line 538
    const-string v1, "BTDevConnectionPolicy"

    const-string v2, "Already Initialized"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_1
    monitor-exit v0

    return-void

    .line 542
    :cond_2
    invoke-static {p0}, Lcom/android/car/BluetoothAutoConnectStateMachine;->make(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Lcom/android/car/BluetoothAutoConnectStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAutoConnectStateMachine:Lcom/android/car/BluetoothAutoConnectStateMachine;

    .line 543
    invoke-virtual {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->readAndRebuildDeviceMapFromSettings()Z

    .line 544
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->setupBluetoothEventsIntentFilterLocked()V

    .line 546
    new-instance v1, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    invoke-direct {v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;-><init>()V

    iput-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    .line 547
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUserSpecificInfoInitialized:Z

    .line 548
    monitor-exit v0

    .line 549
    return-void

    .line 548
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initiateConnection()V
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 886
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "Bluetooth Adapter null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 890
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->isDeviceMapEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_1

    .line 892
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "Device Map is empty. Nothing to connect to"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_1
    return-void

    .line 896
    :cond_2
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->resetDeviceAvailableToConnect()V

    .line 897
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_3

    .line 898
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "initiateConnection() Reset Device Availability"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_3
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAutoConnectStateMachine:Lcom/android/car/BluetoothAutoConnectStateMachine;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/car/BluetoothAutoConnectStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 903
    :cond_4
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_5

    .line 904
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "Bluetooth Adapter not enabled."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_5
    :goto_0
    return-void
.end method

.method private declared-synchronized isDeviceMapEmpty()Z
    .locals 6

    monitor-enter p0

    .line 1341
    const/4 v0, 0x1

    .line 1342
    .local v0, "empty":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfilesToConnect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1343
    .local v2, "profile":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/BluetoothDevicesInfo;

    .line 1344
    .local v3, "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    if-eqz v3, :cond_1

    .line 1345
    invoke-virtual {v3}, Lcom/android/car/BluetoothDevicesInfo;->getNumberOfPairedDevicesLocked()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1346
    sget-boolean v1, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v1, :cond_0

    .line 1347
    const-string v1, "BTDevConnectionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device map not empty. Profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    invoke-virtual {v3}, Lcom/android/car/BluetoothDevicesInfo;->getNumberOfPairedDevicesLocked()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " paired devices"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1347
    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    :cond_0
    const/4 v0, 0x0

    .line 1351
    goto :goto_1

    .line 1354
    .end local v2    # "profile":Ljava/lang/Integer;
    .end local v3    # "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    :cond_1
    goto :goto_0

    .line 1355
    :cond_2
    :goto_1
    monitor-exit p0

    return v0

    .line 1340
    .end local v0    # "empty":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw v0
.end method

.method private isProxyAvailable(Ljava/lang/Integer;)Z
    .locals 4
    .param p1, "profile"    # Ljava/lang/Integer;

    .line 1005
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1006
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->setupBluetoothUserService()Landroid/car/ICarBluetoothUserService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    .line 1007
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    if-nez v0, :cond_0

    .line 1008
    const-string v0, "BTDevConnectionPolicy"

    const-string v2, "CarBluetoothUserSvc null.  Car service not bound to PerUserCarSvc."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return v1

    .line 1013
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/car/ICarBluetoothUserService;->isBluetoothConnectionProxyAvailable(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1015
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_1

    .line 1016
    const-string v0, "BTDevConnectionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy for Bluetooth Profile Service Unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    :cond_1
    return v1

    .line 1023
    :cond_2
    nop

    .line 1024
    const/4 v0, 0x1

    return v0

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BTDevConnectionPolicy"

    const-string v3, "Car BT Service Remote Exception."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return v1
.end method

.method private notifyConnectionStatus(Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;I)V
    .locals 4
    .param p1, "params"    # Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    .param p2, "currentState"    # I

    .line 1191
    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 1203
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 1204
    const-string v0, "BTDevConnectionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConnectionStatus() Ignoring state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    return-void

    .line 1198
    :cond_1
    const/4 v0, 0x1

    .line 1199
    .local v0, "isConnected":Z
    goto :goto_0

    .line 1193
    .end local v0    # "isConnected":Z
    :cond_2
    const/4 v0, 0x0

    .line 1194
    .restart local v0    # "isConnected":Z
    nop

    .line 1206
    :goto_0
    nop

    .line 1211
    invoke-virtual {p0, p1, v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->updateDeviceConnectionStatus(Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;Z)Z

    move-result v1

    .line 1212
    .local v1, "updateSuccessful":Z
    if-eqz v1, :cond_4

    .line 1213
    if-eqz v0, :cond_3

    .line 1214
    iget-object v2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAutoConnectStateMachine:Lcom/android/car/BluetoothAutoConnectStateMachine;

    const/16 v3, 0x68

    invoke-virtual {v2, v3, p1}, Lcom/android/car/BluetoothAutoConnectStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    .line 1218
    :cond_3
    iget-object v2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAutoConnectStateMachine:Lcom/android/car/BluetoothAutoConnectStateMachine;

    const/16 v3, 0x69

    invoke-virtual {v2, v3, p1}, Lcom/android/car/BluetoothAutoConnectStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1223
    :cond_4
    :goto_1
    return-void
.end method

.method private declared-synchronized printDeviceMap(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 1382
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1383
    monitor-exit p0

    return-void

    .line 1385
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1386
    .local v1, "profile":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/BluetoothDevicesInfo;

    invoke-virtual {v3}, Lcom/android/car/BluetoothDevicesInfo;->toDebugString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1389
    .end local v1    # "profile":Ljava/lang/Integer;
    goto :goto_0

    .line 1390
    :cond_1
    monitor-exit p0

    return-void

    .line 1381
    .end local p1    # "writer":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw p1
.end method

.method private readAndTagDeviceWithPriorityFromSettings(II)V
    .locals 6
    .param p1, "profile"    # I
    .param p2, "priority"    # I

    .line 1591
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/BluetoothDevicesInfo;

    .line 1592
    .local v0, "devicesInfo":Lcom/android/car/BluetoothDevicesInfo;
    if-nez v0, :cond_0

    .line 1593
    return-void

    .line 1595
    :cond_0
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothService:Lcom/android/car/CarBluetoothService;

    invoke-virtual {v1, p1, p2}, Lcom/android/car/CarBluetoothService;->isPriorityDevicePresent(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1598
    invoke-virtual {v0, p2}, Lcom/android/car/BluetoothDevicesInfo;->getBluetoothDeviceForPriorityLocked(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1600
    .local v1, "deviceToClear":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_2

    .line 1601
    sget-boolean v2, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v2, :cond_1

    .line 1602
    const-string v2, "BTDevConnectionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing priority for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    invoke-static {v1}, Lcom/android/car/Utils;->getDeviceDebugInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1602
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/car/BluetoothDevicesInfo;->removeBluetoothDevicePriorityLocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 1607
    .end local v1    # "deviceToClear":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    goto :goto_0

    .line 1610
    :cond_3
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothService:Lcom/android/car/CarBluetoothService;

    invoke-virtual {v1, p1, p2}, Lcom/android/car/CarBluetoothService;->getDeviceNameWithPriority(II)Ljava/lang/String;

    move-result-object v1

    .line 1612
    .local v1, "deviceName":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 1613
    invoke-direct {p0, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->getBondedDeviceWithGivenName(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1614
    .local v2, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v2, :cond_5

    .line 1615
    sget-boolean v3, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v3, :cond_4

    .line 1616
    const-string v3, "BTDevConnectionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting priority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_4
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->tagDeviceWithPriority(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1622
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_5
    :goto_0
    return-void
.end method

.method private declared-synchronized removeDeviceFromProfile(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/BluetoothDevicesInfo;

    .line 875
    .local v0, "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0, p1}, Lcom/android/car/BluetoothDevicesInfo;->removeDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    :cond_0
    monitor-exit p0

    return-void

    .line 873
    .end local v0    # "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "profile":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw p1
.end method

.method private declared-synchronized resetBluetoothDevicesConnectionInfo()V
    .locals 2

    monitor-enter p0

    .line 744
    :try_start_0
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 745
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "Resetting ConnectionInfo for all profiles"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BluetoothDevicesInfo;

    .line 748
    .local v1, "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    invoke-virtual {v1}, Lcom/android/car/BluetoothDevicesInfo;->resetConnectionInfoLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    .end local v1    # "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    goto :goto_0

    .line 750
    :cond_1
    monitor-exit p0

    return-void

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw v0
.end method

.method private declared-synchronized resetDeviceAvailableToConnect()V
    .locals 3

    monitor-enter p0

    .line 1369
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BluetoothDevicesInfo;

    .line 1370
    .local v1, "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/car/BluetoothDevicesInfo;->setDeviceAvailableToConnectLocked(Z)V

    .line 1371
    invoke-virtual {v1}, Lcom/android/car/BluetoothDevicesInfo;->resetDeviceIndex()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    .end local v1    # "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    goto :goto_0

    .line 1373
    :cond_0
    monitor-exit p0

    return-void

    .line 1368
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw v0
.end method

.method private setBluetoothProfilePriorityIfUuidFound([Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "profile"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "priority"    # I

    .line 379
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    if-eqz v0, :cond_5

    if-nez p3, :cond_0

    goto :goto_3

    .line 383
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v0, "uuidsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    const/16 v1, 0xb

    if-eq p2, v1, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 396
    :pswitch_0
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    goto :goto_0

    .line 393
    :pswitch_1
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    goto :goto_0

    .line 389
    :pswitch_2
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    goto :goto_0

    .line 386
    :cond_1
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    goto :goto_0

    .line 399
    :cond_2
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 404
    .local v2, "uuid":Landroid/os/ParcelUuid;
    invoke-static {p1, v2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    invoke-interface {v1, p2, p3, p4}, Landroid/car/ICarBluetoothUserService;->setProfilePriority(ILandroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    goto :goto_2

    .line 407
    :catch_0
    move-exception v1

    .line 408
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BTDevConnectionPolicy"

    const-string v4, "RemoteException calling setProfilePriority"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 413
    .end local v2    # "uuid":Landroid/os/ParcelUuid;
    :cond_3
    goto :goto_1

    .line 414
    :cond_4
    :goto_2
    return-void

    .line 380
    .end local v0    # "uuidsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_5
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setProfileOnDeviceToUnavailable(Lcom/android/car/BluetoothDevicesInfo;)V
    .locals 3
    .param p1, "devInfo"    # Lcom/android/car/BluetoothDevicesInfo;

    .line 1115
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->setBluetoothProfile(Ljava/lang/Integer;)V

    .line 1117
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 1119
    :cond_0
    const-string v0, "BTDevConnectionPolicy"

    const-string v2, "mConnectionInFlight is null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :goto_0
    if-eqz p1, :cond_1

    .line 1123
    invoke-virtual {p1, v1}, Lcom/android/car/BluetoothDevicesInfo;->setDeviceAvailableToConnectLocked(Z)V

    goto :goto_1

    .line 1125
    :cond_1
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "devInfo is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :goto_1
    return-void
.end method

.method private setProfilePriorities(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;I)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuids"    # [Landroid/os/ParcelUuid;
    .param p3, "priority"    # I

    .line 367
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    if-nez v0, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->setupBluetoothUserService()Landroid/car/ICarBluetoothUserService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfilesToConnect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 372
    .local v1, "profile":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p2, v2, p1, p3}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->setBluetoothProfilePriorityIfUuidFound([Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;I)V

    .line 373
    .end local v1    # "profile":Ljava/lang/Integer;
    goto :goto_0

    .line 375
    :cond_1
    return-void
.end method

.method private setupBluetoothEventsIntentFilterLocked()V
    .locals 7

    .line 559
    new-instance v0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;-><init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    iput-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 560
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 561
    .local v0, "profileFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v1, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    const-string v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    const-string v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    const-string v1, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    const-string v1, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 567
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 568
    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 573
    :cond_0
    return-void
.end method

.method private setupBluetoothUserService()Landroid/car/ICarBluetoothUserService;
    .locals 5

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, "carBluetoothUserService":Landroid/car/ICarBluetoothUserService;
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarUserService:Landroid/car/ICarUserService;

    if-eqz v1, :cond_2

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarUserService:Landroid/car/ICarUserService;

    invoke-interface {v1}, Landroid/car/ICarUserService;->getBluetoothUserService()Landroid/car/ICarBluetoothUserService;

    move-result-object v1

    move-object v0, v1

    .line 490
    if-eqz v0, :cond_1

    .line 491
    sget-boolean v1, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v1, :cond_0

    .line 492
    const-string v1, "BTDevConnectionPolicy"

    const-string v2, "Got CarBTUsrSvc"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    invoke-interface {v0}, Landroid/car/ICarBluetoothUserService;->setupBluetoothConnectionProxy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v1

    .line 497
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BTDevConnectionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Service Exception on ServiceConnection Callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    goto :goto_1

    .line 501
    :cond_2
    sget-boolean v1, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v1, :cond_3

    .line 502
    const-string v1, "BTDevConnectionPolicy"

    const-string v2, "PerUserCarService not connected"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_3
    :goto_1
    return-object v0
.end method

.method private setupEventListenersLocked()V
    .locals 4

    .line 603
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mPropertyEventListener:Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;

    const/4 v2, 0x0

    const v3, 0x16200b02

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 604
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mPropertyEventListener:Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;

    const v3, 0x11400409

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 607
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUxRService:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-virtual {v0}, Lcom/android/car/CarUxRestrictionsManagerService;->getCurrentUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->handleUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V

    .line 609
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUxRService:Lcom/android/car/CarUxRestrictionsManagerService;

    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUxRListener:Lcom/android/car/BluetoothDeviceConnectionPolicy$CarUxRServiceListener;

    invoke-virtual {v0, v1}, Lcom/android/car/CarUxRestrictionsManagerService;->registerUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)V

    .line 610
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mUserServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mServiceCallback:Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/android/car/PerUserCarServiceHelper;->registerServiceCallback(Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;)V

    .line 611
    return-void
.end method

.method private updateBondState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "bondState"    # I

    .line 825
    if-nez p1, :cond_0

    .line 826
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "updateBondState: device Null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    return-void

    .line 829
    :cond_0
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_1

    .line 830
    const-string v0, "BTDevConnectionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BondState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_1
    const/16 v0, 0xa

    if-ne p2, v0, :cond_3

    .line 835
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfilesToConnect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 836
    .local v1, "profile":Ljava/lang/Integer;
    sget-boolean v2, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v2, :cond_2

    .line 837
    const-string v2, "BTDevConnectionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->removeDeviceFromProfile(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    .line 840
    .end local v1    # "profile":Ljava/lang/Integer;
    goto :goto_0

    .line 841
    :cond_3
    const/16 v0, 0xc

    if-ne p2, v0, :cond_4

    .line 845
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mPairedButUnconnectedDevices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 847
    :cond_4
    return-void
.end method

.method private declared-synchronized writeDeviceInfoToSettings()Z
    .locals 6

    monitor-enter p0

    .line 1400
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfilesToConnect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1401
    .local v1, "profile":Ljava/lang/Integer;
    new-instance v2, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    invoke-direct {v2, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;-><init>(Ljava/lang/Integer;)V

    .line 1402
    .local v2, "params":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    invoke-virtual {p0, v2}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->writeDeviceInfoToSettings(Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;)Z

    move-result v3

    .line 1403
    .local v3, "writeResult":Z
    if-nez v3, :cond_0

    .line 1404
    const-string v0, "BTDevConnectionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing Device Info for profile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    monitor-exit p0

    return v3

    .line 1407
    .end local v1    # "profile":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 1408
    .end local v2    # "params":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    .end local v3    # "writeResult":Z
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1399
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw v0
.end method


# virtual methods
.method public declared-synchronized addProfile(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "profile"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfilesToConnect:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    monitor-exit p0

    return-void

    .line 814
    .end local p1    # "profile":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw p1
.end method

.method connectToDeviceOnProfile(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "profile"    # Ljava/lang/Integer;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1035
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 1036
    const-string v0, "BTDevConnectionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in connectToDeviceOnProfile for Profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    invoke-static {p2}, Lcom/android/car/Utils;->getDeviceDebugInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1036
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->isProxyAvailable(Ljava/lang/Integer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1040
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_1

    .line 1041
    const-string v0, "BTDevConnectionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No proxy available for Profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_1
    return v1

    .line 1045
    :cond_2
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/BluetoothDevicesInfo;

    .line 1046
    .local v0, "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    if-nez v0, :cond_4

    .line 1047
    sget-boolean v2, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v2, :cond_3

    .line 1048
    const-string v2, "BTDevConnectionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "devInfo NULL on Profile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_3
    return v1

    .line 1052
    :cond_4
    invoke-virtual {v0, p2}, Lcom/android/car/BluetoothDevicesInfo;->getCurrentConnectionStateLocked(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 1053
    .local v2, "state":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_d

    if-ne v2, v4, :cond_5

    goto/16 :goto_4

    .line 1061
    :cond_5
    invoke-virtual {v0}, Lcom/android/car/BluetoothDevicesInfo;->isProfileConnectableLocked()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1062
    sget-boolean v3, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v3, :cond_6

    .line 1063
    const-string v3, "BTDevConnectionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isProfileConnectableLocked FALSE on Profile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "  this means number of connections on this profile max\'ed out or  no more devices available to connect on this profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_6
    return v1

    .line 1070
    :cond_7
    :try_start_0
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    if-eqz v3, :cond_c

    .line 1071
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v5, p2}, Landroid/car/ICarBluetoothUserService;->bluetoothConnectToProfile(ILandroid/bluetooth/BluetoothDevice;)V

    .line 1073
    if-eqz v0, :cond_8

    .line 1074
    invoke-virtual {v0, p2, v4}, Lcom/android/car/BluetoothDevicesInfo;->setConnectionStateLocked(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1076
    :cond_8
    const-string v3, "BTDevConnectionPolicy"

    const-string v5, "devInfo is null"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :goto_0
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    if-eqz v3, :cond_9

    .line 1082
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    invoke-virtual {v3, p2}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1083
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    invoke-virtual {v3, p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->setBluetoothProfile(Ljava/lang/Integer;)V

    goto :goto_1

    .line 1085
    :cond_9
    const-string v3, "BTDevConnectionPolicy"

    const-string v5, "mConnectionInFlight is null"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :goto_1
    if-eqz v0, :cond_a

    .line 1089
    invoke-virtual {v0}, Lcom/android/car/BluetoothDevicesInfo;->incrementRetryCountLocked()V

    goto :goto_2

    .line 1091
    :cond_a
    const-string v3, "BTDevConnectionPolicy"

    const-string v5, "devInfo is null"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :goto_2
    sget-boolean v3, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v3, :cond_b

    .line 1094
    const-string v3, "BTDevConnectionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Increment Retry to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/car/BluetoothDevicesInfo;->getRetryCountLocked()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", for Profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", on device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    invoke-static {p2}, Lcom/android/car/Utils;->getDeviceDebugInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1094
    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_b
    return v4

    .line 1100
    :cond_c
    const-string v3, "BTDevConnectionPolicy"

    const-string v4, "CarBluetoothUserSvc null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    goto :goto_3

    .line 1102
    :catch_0
    move-exception v3

    .line 1103
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "BTDevConnectionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote User Service stopped responding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    return v1

    .line 1055
    :cond_d
    :goto_4
    sget-boolean v1, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v1, :cond_e

    .line 1056
    const-string v1, "BTDevConnectionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/car/Utils;->getDeviceDebugInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is already connected/connecting on Profile:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_e
    return v4
.end method

.method doesDeviceExistForProfile(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "profile"    # Ljava/lang/Integer;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1130
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/BluetoothDevicesInfo;

    .line 1131
    .local v0, "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    if-nez v0, :cond_1

    .line 1132
    sget-boolean v1, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v1, :cond_0

    .line 1133
    const-string v1, "BTDevConnectionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "devInfo NULL on Profile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1137
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/car/BluetoothDevicesInfo;->checkDeviceInListLocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 1138
    .local v1, "b":Z
    sget-boolean v2, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v2, :cond_2

    .line 1139
    const-string v2, "BTDevConnectionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/car/Utils;->getDeviceDebugInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " listed for profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_2
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 1677
    const-string v0, "*BluetoothDeviceConnectionPolicy*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1678
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->printDeviceMap(Ljava/io/PrintWriter;)V

    .line 1679
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAutoConnectStateMachine:Lcom/android/car/BluetoothAutoConnectStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/car/BluetoothAutoConnectStateMachine;->dump(Ljava/io/PrintWriter;)V

    .line 1680
    return-void
.end method

.method public declared-synchronized findDeviceToConnect()Z
    .locals 7

    monitor-enter p0

    .line 918
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mInitialized:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 929
    :cond_0
    const/4 v0, 0x0

    .line 931
    .local v0, "connectingToADevice":Z
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->getNextProfileToConnectLocked()Ljava/lang/Integer;

    move-result-object v1

    .line 933
    .local v1, "nextProfile":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 934
    sget-boolean v2, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v2, :cond_1

    .line 935
    const-string v2, "BTDevConnectionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectToProfile(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->connectToNextDeviceInQueueLocked(Ljava/lang/Integer;)Z

    move-result v2

    move v0, v2

    .line 941
    if-eqz v0, :cond_4

    .line 942
    sget-boolean v2, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v2, :cond_2

    .line 943
    const-string v2, "BTDevConnectionPolicy"

    const-string v3, "Found device to connect to"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_2
    iget-object v2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    if-eqz v2, :cond_3

    .line 946
    new-instance v2, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    .line 948
    invoke-virtual {v3}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->getBluetoothProfile()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    .line 949
    invoke-virtual {v4}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;-><init>(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)V

    .line 951
    .local v2, "btParams":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAutoConnectStateMachine:Lcom/android/car/BluetoothAutoConnectStateMachine;

    const/16 v4, 0x67

    const-wide/16 v5, 0x1f40

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/car/BluetoothAutoConnectStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 954
    .end local v2    # "btParams":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    goto :goto_1

    .line 955
    :cond_3
    const-string v2, "BTDevConnectionPolicy"

    const-string v3, "mConnectionInFlight is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    goto :goto_1

    .line 962
    :cond_4
    sget-boolean v2, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v2, :cond_5

    .line 963
    const-string v2, "BTDevConnectionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No more device to connect on Profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_5
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->getNextProfileToConnectLocked()Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 968
    :cond_6
    :goto_1
    monitor-exit p0

    return v0

    .line 920
    .end local v0    # "connectingToADevice":Z
    .end local v1    # "nextProfile":Ljava/lang/Integer;
    :cond_7
    :goto_2
    :try_start_1
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_9

    .line 921
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    if-nez v0, :cond_8

    .line 922
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "findDeviceToConnect(): Device Map null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 924
    :cond_8
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "findDeviceToConnect(): BT Adapter not enabled"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 927
    :cond_9
    :goto_3
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 917
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw v0
.end method

.method getBluetoothBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 754
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method getBluetoothDevicesInfo(I)Lcom/android/car/BluetoothDevicesInfo;
    .locals 2
    .param p1, "profile"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 774
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/BluetoothDevicesInfo;

    return-object v0
.end method

.method getCarPropertyListener()Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 764
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mPropertyEventListener:Lcom/android/car/BluetoothDeviceConnectionPolicy$CarPropertyListener;

    return-object v0
.end method

.method public declared-synchronized getProfilesToConnect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfilesToConnect:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw v0
.end method

.method getServiceCallback()Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mServiceCallback:Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 2

    monitor-enter p0

    .line 513
    :try_start_0
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 514
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->initializeUserSpecificInfo()V

    .line 519
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->setupEventListenersLocked()V

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    monitor-exit p0

    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw v0
.end method

.method public declared-synchronized readAndRebuildDeviceMapFromSettings()Z
    .locals 14

    monitor-enter p0

    .line 1500
    const/4 v0, 0x0

    .line 1502
    .local v0, "devices":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->initDeviceMap()V

    .line 1503
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1504
    sget-boolean v1, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v1, :cond_0

    .line 1505
    const-string v1, "BTDevConnectionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of Bonded devices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1506
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1505
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_0
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1509
    sget-boolean v1, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v1, :cond_1

    .line 1510
    const-string v1, "BTDevConnectionPolicy"

    const-string v3, "No Bonded Devices available. Quit rebuilding"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1512
    :cond_1
    monitor-exit p0

    return v2

    .line 1515
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mAllowReadWriteToSettings:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    .line 1516
    monitor-exit p0

    return v2

    .line 1520
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    int-to-long v3, v1

    .line 1521
    .local v3, "userId":J
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfilesToConnect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1522
    .local v5, "profile":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_5

    const/16 v7, 0xb

    if-eq v6, v7, :cond_4

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 1534
    :pswitch_0
    iget-object v6, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android.car.BLUETOOTH_AUTOCONNECT_MESSAGING_DEVICES"

    long-to-int v8, v3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1536
    goto :goto_2

    .line 1530
    :pswitch_1
    iget-object v6, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android.car.BLUETOOTH_AUTOCONNECT_PHONE_DEVICES"

    long-to-int v8, v3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1532
    goto :goto_2

    .line 1524
    :cond_4
    iget-object v6, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android.car.BLUETOOTH_AUTOCONNECT_MUSIC_DEVICES"

    long-to-int v8, v3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1526
    goto :goto_2

    .line 1538
    :cond_5
    iget-object v6, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android.car.BLUETOOTH_AUTOCONNECT_NETWORK_DEVICES"

    long-to-int v8, v3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1541
    :goto_1
    const-string v6, "BTDevConnectionPolicy"

    const-string v7, "Unexpected profile"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :goto_2
    if-nez v0, :cond_7

    .line 1546
    sget-boolean v1, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v1, :cond_6

    .line 1547
    const-string v1, "BTDevConnectionPolicy"

    const-string v6, "No device information stored in Settings"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1549
    :cond_6
    monitor-exit p0

    return v2

    .line 1551
    :cond_7
    :try_start_3
    sget-boolean v6, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v6, :cond_8

    .line 1552
    const-string v6, "BTDevConnectionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Devices in Settings: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_8
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1556
    .local v6, "deviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_9

    .line 1557
    monitor-exit p0

    return v2

    .line 1559
    :cond_9
    :try_start_4
    iget-object v7, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/car/BluetoothDevicesInfo;

    .line 1562
    .local v7, "devicesInfo":Lcom/android/car/BluetoothDevicesInfo;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1563
    .local v9, "address":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->getBondedDeviceWithGivenName(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    .line 1564
    .local v10, "deviceToAdd":Landroid/bluetooth/BluetoothDevice;
    if-eqz v10, :cond_a

    .line 1565
    invoke-virtual {v7, v10}, Lcom/android/car/BluetoothDevicesInfo;->addDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_4

    .line 1567
    :cond_a
    sget-boolean v11, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v11, :cond_b

    .line 1568
    const-string v11, "BTDevConnectionPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No device with name "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " found in bonded devices"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    .end local v9    # "address":Ljava/lang/String;
    .end local v10    # "deviceToAdd":Landroid/bluetooth/BluetoothDevice;
    :cond_b
    :goto_4
    goto :goto_3

    .line 1572
    :cond_c
    iget-object v8, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    iget-object v8, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mPrioritiesSupported:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1576
    .local v9, "priority":I
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10, v9}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->readAndTagDeviceWithPriorityFromSettings(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1577
    .end local v9    # "priority":I
    goto :goto_5

    .line 1578
    .end local v5    # "profile":Ljava/lang/Integer;
    .end local v7    # "devicesInfo":Lcom/android/car/BluetoothDevicesInfo;
    :cond_d
    goto/16 :goto_0

    .line 1579
    .end local v6    # "deviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 1499
    .end local v0    # "devices":Ljava/lang/String;
    .end local v3    # "userId":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 684
    :try_start_0
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 685
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "release()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mInitialized:Z

    .line 688
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->writeDeviceInfoToSettings()Z

    .line 689
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->cleanupUserSpecificInfo()V

    .line 690
    invoke-direct {p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->closeEventListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    monitor-exit p0

    return-void

    .line 683
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw v0
.end method

.method public declared-synchronized resetProfileToConnectableDevicesMap()V
    .locals 2

    monitor-enter p0

    .line 792
    :try_start_0
    sget-boolean v0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 793
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "Resetting the mProfilesToConnectableDevicesMap"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BluetoothDevicesInfo;

    .line 796
    .local v1, "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    invoke-virtual {v1}, Lcom/android/car/BluetoothDevicesInfo;->resetDeviceListLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    .end local v1    # "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    goto :goto_0

    .line 798
    :cond_1
    monitor-exit p0

    return-void

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw v0
.end method

.method declared-synchronized setAllowReadWriteToSettings(Z)V
    .locals 0
    .param p1, "allowWrite"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 769
    :try_start_0
    iput-boolean p1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mAllowReadWriteToSettings:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    monitor-exit p0

    return-void

    .line 768
    .end local p1    # "allowWrite":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw p1
.end method

.method tagDeviceWithPriority(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "priority"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1634
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/BluetoothDevicesInfo;

    .line 1635
    .local v0, "devicesInfo":Lcom/android/car/BluetoothDevicesInfo;
    if-eqz p1, :cond_1

    .line 1636
    sget-boolean v1, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v1, :cond_0

    .line 1637
    const-string v1, "BTDevConnectionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_0
    invoke-virtual {v0, p1, p3}, Lcom/android/car/BluetoothDevicesInfo;->setBluetoothDevicePriorityLocked(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1641
    :cond_1
    return-void
.end method

.method toDebugString()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 781
    .local v2, "profile":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/BluetoothDevicesInfo;

    .line 782
    .local v3, "info":Lcom/android/car/BluetoothDevicesInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \n**** profile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/car/BluetoothDevicesInfo;->toDebugString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .end local v2    # "profile":Ljava/lang/Integer;
    .end local v3    # "info":Lcom/android/car/BluetoothDevicesInfo;
    goto :goto_0

    .line 785
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized updateDeviceConnectionStatus(Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;Z)Z
    .locals 8
    .param p1, "params"    # Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    .param p2, "didConnect"    # Z

    monitor-enter p0

    .line 1236
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    :try_start_0
    invoke-virtual {p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1241
    :cond_0
    invoke-virtual {p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->getBluetoothProfile()Ljava/lang/Integer;

    move-result-object v1

    .line 1242
    .local v1, "profileToUpdate":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1243
    .local v2, "deviceThatConnected":Landroid/bluetooth/BluetoothDevice;
    sget-boolean v3, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v3, :cond_1

    .line 1244
    const-string v3, "BTDevConnectionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_1
    const/4 v3, 0x1

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5

    .line 1257
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/16 v5, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v5, 0x12

    .line 1258
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 1257
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1259
    .local v5, "profile":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/car/BluetoothDevicesInfo;

    .line 1260
    .local v6, "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    if-nez v6, :cond_2

    .line 1261
    const-string v3, "BTDevConnectionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected: No device Queue for this profile: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    monitor-exit p0

    return v0

    .line 1264
    :cond_2
    :try_start_1
    invoke-virtual {v6, v3}, Lcom/android/car/BluetoothDevicesInfo;->setDeviceAvailableToConnectLocked(Z)V

    .line 1265
    .end local v5    # "profile":Ljava/lang/Integer;
    .end local v6    # "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    goto :goto_0

    .line 1266
    :cond_3
    sget-boolean v4, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v4, :cond_4

    .line 1267
    const-string v4, "BTDevConnectionPolicy"

    const-string v5, "connect to PBAP/MAP after disconnect: "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_4
    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mBluetoothAutoConnectStateMachine:Lcom/android/car/BluetoothAutoConnectStateMachine;

    const/16 v5, 0x3ee

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, p1, v6, v7}, Lcom/android/car/BluetoothAutoConnectStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 1276
    :cond_5
    sget-boolean v4, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v4, :cond_7

    .line 1277
    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    invoke-virtual {v4}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->getBluetoothProfile()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1278
    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    invoke-virtual {v4}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->getBluetoothProfile()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1279
    const-string v4, "BTDevConnectionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " different from connection in flight "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    .line 1281
    invoke-virtual {v6}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->getBluetoothProfile()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1279
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_6
    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    invoke-virtual {v4}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1286
    iget-object v4, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    invoke-virtual {v4}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1287
    const-string v4, "BTDevConnectionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " different from connection in flight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mConnectionInFlight:Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    .line 1289
    invoke-virtual {v6}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1287
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_7
    const/4 v4, 0x0

    .line 1295
    .local v4, "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    iget-object v5, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/car/BluetoothDevicesInfo;

    move-object v4, v5

    .line 1296
    if-nez v4, :cond_8

    .line 1297
    const-string v3, "BTDevConnectionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected: devInfo null for profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1298
    monitor-exit p0

    return v0

    .line 1301
    :cond_8
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->canRetryConnection(Ljava/lang/Integer;)Z

    move-result v0

    .line 1304
    .local v0, "retry":Z
    sget-boolean v5, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v5, :cond_9

    .line 1305
    const-string v5, "BTDevConnectionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry? : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_9
    invoke-virtual {v4, v2, p2, v0}, Lcom/android/car/BluetoothDevicesInfo;->updateConnectionStatusLocked(Landroid/bluetooth/BluetoothDevice;ZZ)V

    .line 1309
    invoke-virtual {p0, p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->writeDeviceInfoToSettings(Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1310
    monitor-exit p0

    return v3

    .line 1235
    .end local v0    # "retry":Z
    .end local v1    # "profileToUpdate":Ljava/lang/Integer;
    .end local v2    # "deviceThatConnected":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "devInfo":Lcom/android/car/BluetoothDevicesInfo;
    .end local p1    # "params":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    .end local p2    # "didConnect":Z
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1237
    .restart local p1    # "params":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    .restart local p2    # "didConnect":Z
    :cond_a
    :goto_1
    :try_start_3
    const-string v1, "BTDevConnectionPolicy"

    const-string v2, "updateDeviceConnectionStatus: null params"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1238
    monitor-exit p0

    return v0

    .line 1235
    .end local p1    # "params":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    .end local p2    # "didConnect":Z
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw p1
.end method

.method public declared-synchronized writeDeviceInfoToSettings(Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;)Z
    .locals 12
    .param p1, "params"    # Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;

    monitor-enter p0

    .line 1422
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mAllowReadWriteToSettings:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1423
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1425
    :cond_0
    const/4 v0, 0x1

    .line 1426
    .local v0, "writeSuccess":Z
    :try_start_1
    invoke-virtual {p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->getBluetoothProfile()Ljava/lang/Integer;

    move-result-object v1

    .line 1428
    .local v1, "profileToUpdate":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 1429
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1431
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1432
    .local v2, "deviceNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mProfileToConnectableDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/BluetoothDevicesInfo;

    .line 1433
    .local v3, "devicesInfo":Lcom/android/car/BluetoothDevicesInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1434
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, ""

    .line 1439
    .local v5, "delimiter":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/car/BluetoothDevicesInfo;->getDeviceList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1440
    invoke-virtual {v3}, Lcom/android/car/BluetoothDevicesInfo;->getDeviceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 1441
    .local v7, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    const-string v8, ","

    move-object v5, v8

    .line 1444
    .end local v7    # "device":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 1449
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1450
    .local v6, "joinedDeviceNames":Ljava/lang/String;
    sget-boolean v7, Lcom/android/car/BluetoothDeviceConnectionPolicy;->DBG:Z

    if-eqz v7, :cond_3

    .line 1451
    const-string v7, "BTDevConnectionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Profile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " Writing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    int-to-long v7, v7

    .line 1454
    .local v7, "userId":J
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_5

    const/16 v10, 0xb

    if-eq v9, v10, :cond_4

    packed-switch v9, :pswitch_data_0

    .end local v2    # "deviceNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "devicesInfo":Lcom/android/car/BluetoothDevicesInfo;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "delimiter":Ljava/lang/String;
    .end local v6    # "joinedDeviceNames":Ljava/lang/String;
    .end local v7    # "userId":J
    goto :goto_1

    .line 1472
    .restart local v2    # "deviceNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "devicesInfo":Lcom/android/car/BluetoothDevicesInfo;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "delimiter":Ljava/lang/String;
    .restart local v6    # "joinedDeviceNames":Ljava/lang/String;
    .restart local v7    # "userId":J
    :pswitch_0
    iget-object v9, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android.car.BLUETOOTH_AUTOCONNECT_MESSAGING_DEVICES"

    long-to-int v11, v7

    invoke-static {v9, v10, v6, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1475
    goto :goto_1

    .line 1469
    :pswitch_1
    goto :goto_1

    .line 1462
    :pswitch_2
    iget-object v9, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android.car.BLUETOOTH_AUTOCONNECT_PHONE_DEVICES"

    long-to-int v11, v7

    invoke-static {v9, v10, v6, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1465
    goto :goto_1

    .line 1456
    :cond_4
    iget-object v9, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android.car.BLUETOOTH_AUTOCONNECT_MUSIC_DEVICES"

    long-to-int v11, v7

    invoke-static {v9, v10, v6, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1459
    goto :goto_1

    .line 1477
    :cond_5
    iget-object v9, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android.car.BLUETOOTH_AUTOCONNECT_NETWORK_DEVICES"

    long-to-int v11, v7

    invoke-static {v9, v10, v6, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1483
    .end local v2    # "deviceNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "devicesInfo":Lcom/android/car/BluetoothDevicesInfo;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "delimiter":Ljava/lang/String;
    .end local v6    # "joinedDeviceNames":Ljava/lang/String;
    .end local v7    # "userId":J
    :goto_1
    monitor-exit p0

    return v0

    .line 1421
    .end local v0    # "writeSuccess":Z
    .end local v1    # "profileToUpdate":Ljava/lang/Integer;
    .end local p1    # "params":Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/BluetoothDeviceConnectionPolicy;
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
