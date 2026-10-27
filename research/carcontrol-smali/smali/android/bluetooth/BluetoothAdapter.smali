.class public final Landroid/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;,
        Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;,
        Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;,
        Landroid/bluetooth/BluetoothAdapter$LeScanCallback;,
        Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;,
        Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;,
        Landroid/bluetooth/BluetoothAdapter$OobDataCallback;,
        Landroid/bluetooth/BluetoothAdapter$OobError;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;,
        Landroid/bluetooth/BluetoothAdapter$ActiveDeviceUse;,
        Landroid/bluetooth/BluetoothAdapter$IoCapability;,
        Landroid/bluetooth/BluetoothAdapter$ScanMode;,
        Landroid/bluetooth/BluetoothAdapter$AdapterState;
    }
.end annotation


# static fields
.field public static final ACTION_BLE_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_ACL_CONNECTED"

.field public static final ACTION_BLE_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED"

.field public static final ACTION_BLE_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_BLUETOOTH_ADDRESS_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final ACTION_LOCAL_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

.field public static final ACTION_REQUEST_BLE_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_BLE_SCAN_ALWAYS_AVAILABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_REQUEST_DISABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISABLE"

.field public static final ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

.field public static final ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_ENABLE"

.field public static final ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field public static final ACTIVE_DEVICE_ALL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTIVE_DEVICE_AUDIO:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTIVE_DEVICE_PHONE_CALL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final ADAPTER_1:I = 0x1

.field private static final ADAPTER_DEFAULT:I = 0x0

.field private static final ADAPTER_NUMBER:I = 0x2

.field private static final ADDRESS_LENGTH:I = 0x11

.field private static final BLUETOOTH_FILTERING_CACHE_PROPERTY:Ljava/lang/String; = "cache_key.bluetooth.is_offloaded_filtering_supported"

.field private static final BLUETOOTH_GET_ADAPTER_CONNECTION_STATE_CACHE_PROPERTY:Ljava/lang/String; = "cache_key.bluetooth.get_adapter_connection_state"

.field private static final BLUETOOTH_GET_STATE_CACHE_PROPERTY:Ljava/lang/String; = "cache_key.bluetooth.get_state"

.field public static final BLUETOOTH_MANAGER_SERVICE:Ljava/lang/String; = "bluetooth_manager"

.field private static final BLUETOOTH_PROFILE_CACHE_PROPERTY:Ljava/lang/String; = "cache_key.bluetooth.get_profile_connection_state"

.field private static final DBG:Z = true

.field public static final DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"

.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.BluetoothAdapter"

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_BLUETOOTH_ADDRESS:Ljava/lang/String; = "android.bluetooth.adapter.extra.BLUETOOTH_ADDRESS"

.field public static final EXTRA_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONNECTION_STATE"

.field public static final EXTRA_DISCOVERABLE_DURATION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

.field public static final EXTRA_LOCAL_NAME:Ljava/lang/String; = "android.bluetooth.adapter.extra.LOCAL_NAME"

.field public static final EXTRA_PREVIOUS_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

.field public static final EXTRA_PREVIOUS_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_STATE"

.field public static final EXTRA_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.SCAN_MODE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field public static final IO_CAPABILITY_IN:I = 0x2

.field public static final IO_CAPABILITY_IO:I = 0x1

.field public static final IO_CAPABILITY_KBDISP:I = 0x4

.field public static final IO_CAPABILITY_MAX:I = 0x5

.field public static final IO_CAPABILITY_NONE:I = 0x3

.field public static final IO_CAPABILITY_OUT:I = 0x0

.field public static final IO_CAPABILITY_UNKNOWN:I = 0xff

.field public static final LE_PSM_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final SCAN_MODE_NONE:I = 0x14

.field public static final SOCKET_CHANNEL_AUTO_STATIC_NO_SDP:I = -0x2

.field public static final STATE_BLE_ON:I = 0xf

.field public static final STATE_BLE_TURNING_OFF:I = 0x10

.field public static final STATE_BLE_TURNING_ON:I = 0xe

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field public static final STATE_TURNING_OFF:I = 0xd

.field public static final STATE_TURNING_ON:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapter"

.field public static final TYPE_DEVICE_MAX:I = 0x1

.field public static final TYPE_SECOND_DEVICE:I = 0x1

.field private static final VDBG:Z = false

.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static sManagerCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sProxyServiceStateCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/WeakHashMap<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sService:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/IBluetooth;",
            ">;"
        }
    .end annotation
.end field

.field private static sServiceLock:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sServiceRegistered:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapterIndex:I

.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothFilteringCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothGetAdapterConnectionStateCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothGetStateCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private final mBluetoothMetadataListener:Landroid/bluetooth/IBluetoothMetadataListener;

.field private final mConnectionCallback:Landroid/bluetooth/IBluetoothConnectionCallback;

.field private final mGetProfileConnectionStateCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/le/ScanCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private final mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private final mMetadataListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;",
            "Ljava/util/concurrent/Executor;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

.field private mService:Landroid/bluetooth/IBluetooth;

.field private final mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "2d410339-82b6-42aa-b34e-e2e01df8cc1a"

    .line 245
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->LE_PSM_CHARACTERISTIC_UUID:Ljava/util/UUID;

    .line 796
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->classInit()V

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/IBluetoothManager;Landroid/content/AttributionSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 863
    invoke-direct {p0, p1, p2, v0}, Landroid/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothManager;Landroid/content/AttributionSource;I)V

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/IBluetoothManager;Landroid/content/AttributionSource;I)V
    .locals 4

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 756
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    .line 758
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    .line 760
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    .line 772
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$1;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothMetadataListener:Landroid/bluetooth/IBluetoothMetadataListener;

    .line 1122
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$2;

    const-string v2, "cache_key.bluetooth.get_state"

    const/16 v3, 0x8

    invoke-direct {v1, p0, v3, v2}, Landroid/bluetooth/BluetoothAdapter$2;-><init>(Landroid/bluetooth/BluetoothAdapter;ILjava/lang/String;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothGetStateCache:Landroid/app/PropertyInvalidatedCache;

    .line 2303
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$3;

    const-string v2, "cache_key.bluetooth.is_offloaded_filtering_supported"

    invoke-direct {v1, p0, v3, v2}, Landroid/bluetooth/BluetoothAdapter$3;-><init>(Landroid/bluetooth/BluetoothAdapter;ILjava/lang/String;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothFilteringCache:Landroid/app/PropertyInvalidatedCache;

    .line 2726
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$4;

    const-string v2, "cache_key.bluetooth.get_adapter_connection_state"

    invoke-direct {v1, p0, v3, v2}, Landroid/bluetooth/BluetoothAdapter$4;-><init>(Landroid/bluetooth/BluetoothAdapter;ILjava/lang/String;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothGetAdapterConnectionStateCache:Landroid/app/PropertyInvalidatedCache;

    .line 2794
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$5;

    const-string v2, "cache_key.bluetooth.get_profile_connection_state"

    invoke-direct {v1, p0, v3, v2}, Landroid/bluetooth/BluetoothAdapter$5;-><init>(Landroid/bluetooth/BluetoothAdapter;ILjava/lang/String;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mGetProfileConnectionStateCache:Landroid/app/PropertyInvalidatedCache;

    .line 3423
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$6;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$6;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 4315
    new-instance v2, Landroid/bluetooth/BluetoothAdapter$8;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothAdapter$8;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mConnectionCallback:Landroid/bluetooth/IBluetoothConnectionCallback;

    .line 872
    invoke-static {p3}, Landroid/bluetooth/BluetoothAdapterCommon;->validAdapter(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 875
    iput p3, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    .line 876
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/IBluetoothManager;

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    .line 877
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/AttributionSource;

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 878
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    monitor-enter p1

    .line 879
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object p2

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    .line 880
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    .line 882
    new-instance p1, Landroid/os/Binder;

    const-string p2, "android.bluetooth.BluetoothAdapter"

    invoke-direct {p1, p2}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    return-void

    :catchall_0
    move-exception p2

    .line 880
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 873
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid adapter index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;
    .locals 0

    .line 130
    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;
    .locals 0

    .line 130
    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 0

    .line 130
    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 0

    .line 130
    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object p0
.end method

.method static synthetic access$1200(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothMetadataListener;
    .locals 0

    .line 130
    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothMetadataListener:Landroid/bluetooth/IBluetoothMetadataListener;

    return-object p0
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;
    .locals 0

    .line 130
    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object p0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0

    .line 130
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 0

    .line 130
    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    .line 130
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/HashMap;
    .locals 1

    .line 130
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sService:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .locals 1

    .line 130
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;
    .locals 0

    .line 130
    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothConnectionCallback;
    .locals 0

    .line 130
    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mConnectionCallback:Landroid/bluetooth/IBluetoothConnectionCallback;

    return-object p0
.end method

.method static synthetic access$900(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;
    .locals 0

    .line 130
    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    return-object p0
.end method

.method public static checkBluetoothAddress(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 3716
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    move v1, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v2, :cond_7

    .line 3720
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3721
    rem-int/lit8 v5, v1, 0x3

    if-eqz v5, :cond_3

    if-eq v5, v3, :cond_3

    const/4 v3, 0x2

    if-eq v5, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x3a

    if-ne v4, v3, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    const/16 v3, 0x30

    if-lt v4, v3, :cond_4

    const/16 v3, 0x39

    if-le v4, v3, :cond_5

    :cond_4
    const/16 v3, 0x41

    if-lt v4, v3, :cond_6

    const/16 v3, 0x46

    if-gt v4, v3, :cond_6

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    return v3

    :cond_8
    :goto_2
    return v0
.end method

.method private static classInit()V
    .locals 7

    .line 800
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceRegistered:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 801
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceRegistered:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sService:Ljava/util/HashMap;

    .line 806
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sManagerCallback:Ljava/util/HashMap;

    .line 807
    new-instance v3, Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;

    invoke-direct {v3, v2}, Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;-><init>(I)V

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sManagerCallback:Ljava/util/HashMap;

    new-instance v2, Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;

    invoke-direct {v2, v5}, Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;-><init>(I)V

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/HashMap;

    .line 814
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/HashMap;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/HashMap;

    .line 820
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static connectionPolicyToPriority(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static createAdapter(Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothAdapter;
    .locals 2

    const-string v0, "bluetooth_manager"

    .line 849
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 851
    new-instance v1, Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothManager;Landroid/content/AttributionSource;)V

    return-object v1

    :cond_0
    const-string p0, "BluetoothAdapter"

    const-string v0, "Bluetooth binder is null"

    .line 854
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3027
    new-instance v6, Landroid/bluetooth/BluetoothServerSocket;

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget v5, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    const/4 v1, 0x1

    move-object v0, v6

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZLandroid/os/ParcelUuid;I)V

    .line 3029
    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothServerSocket;->setServiceName(Ljava/lang/String;)V

    .line 3030
    iget-object p1, v6, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result p1

    if-nez p1, :cond_0

    return-object v6

    .line 3035
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static declared-synchronized getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/bluetooth/BluetoothAdapter;

    monitor-enter v0

    .line 841
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 842
    invoke-static {v1}, Landroid/bluetooth/BluetoothManager;->resolveAttributionSource(Landroid/content/Context;)Landroid/content/AttributionSource;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->createAdapter(Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    sput-object v1, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 844
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getStateInternal()I
    .locals 4

    const/16 v0, 0xa

    .line 1162
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1163
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    .line 1164
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothGetStateCache:Landroid/app/PropertyInvalidatedCache;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1167
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/os/RemoteException;

    if-eqz v2, :cond_1

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    .line 1168
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    return v0

    .line 1170
    :cond_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1173
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1174
    throw v0
.end method

.method public static invalidateBluetoothGetStateCache()V
    .locals 1

    const-string v0, "cache_key.bluetooth.get_state"

    .line 1151
    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method public static invalidateGetAdapterConnectionStateCache()V
    .locals 1

    const-string v0, "cache_key.bluetooth.get_adapter_connection_state"

    .line 2752
    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method public static invalidateGetProfileConnectionStateCache()V
    .locals 1

    const-string v0, "cache_key.bluetooth.get_profile_connection_state"

    .line 2828
    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method public static invalidateIsOffloadedFilteringSupportedCache()V
    .locals 1

    const-string v0, "cache_key.bluetooth.is_offloaded_filtering_supported"

    .line 2332
    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method public static isAddressRandomStatic(Ljava/lang/String;)Z
    .locals 2

    .line 3753
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3754
    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, ":"

    .line 3755
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0xc0

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isHearingAidProfileSupported()Z
    .locals 3

    .line 2502
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isHearingAidProfileSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string/jumbo v2, "remote expection when calling isHearingAidProfileSupported"

    .line 2504
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$addOnMetadataChangedListener$0(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/util/Pair;)Z
    .locals 0

    .line 4210
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$removeOnMetadataChangedListener$1(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/util/Pair;)Z
    .locals 0

    .line 4275
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static nameForState(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?!?!? ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "BLE_TURNING_OFF"

    return-object p0

    :pswitch_1
    const-string p0, "BLE_ON"

    return-object p0

    :pswitch_2
    const-string p0, "BLE_TURNING_ON"

    return-object p0

    :pswitch_3
    const-string p0, "TURNING_OFF"

    return-object p0

    :pswitch_4
    const-string p0, "ON"

    return-object p0

    :pswitch_5
    const-string p0, "TURNING_ON"

    return-object p0

    :pswitch_6
    const-string p0, "OFF"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static priorityToConnectionPolicy(I)I
    .locals 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/16 v1, 0x64

    if-eq p0, v1, :cond_0

    const/16 v2, 0x3e8

    if-eq p0, v2, :cond_0

    .line 4527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPriority: Invalid priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BluetoothAdapter"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method private registerOrUnregisterAdapterLocked()V
    .locals 5

    .line 3806
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceRegistered:Ljava/util/HashMap;

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3807
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/HashMap;

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 3808
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sManagerCallback:Ljava/util/HashMap;

    iget v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothManagerCallback;

    if-eq v0, v1, :cond_1

    if-eqz v1, :cond_0

    .line 3813
    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sService:Ljava/util/HashMap;

    iget v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    .line 3814
    invoke-interface {v4, v2}, Landroid/bluetooth/IBluetoothManager;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    .line 3813
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3816
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3820
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V

    .line 3821
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sService:Ljava/util/HashMap;

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3826
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceRegistered:Ljava/util/HashMap;

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception v0

    .line 3823
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method private toDeviceSet(Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 3696
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3697
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "BluetoothAdapter"

    const-string v1, "addOnMetadataChangedListener()"

    .line 4184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4186
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "BluetoothAdapter"

    const-string p2, "Bluetooth is not enabled. Cannot register metadata listener"

    .line 4188
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v2, "listener is null"

    .line 4192
    invoke-static {p3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "device is null"

    .line 4195
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "executor is null"

    .line 4198
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4201
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    monitor-enter v2

    .line 4202
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    .line 4203
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    .line 4206
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4207
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4210
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$Nl33ViydHYkxwJ8Ygug-ylsfmi8;

    invoke-direct {v5, p3}, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$Nl33ViydHYkxwJ8Ygug-ylsfmi8;-><init>(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4216
    :goto_0
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4217
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4221
    :try_start_1
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothMetadataListener:Landroid/bluetooth/IBluetoothMetadataListener;

    iget-object p3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p2, p1, p3}, Landroid/bluetooth/IBluetooth;->registerMetadataListener(Landroid/bluetooth/IBluetoothMetadataListener;Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 4228
    :try_start_2
    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4229
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4231
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    :goto_1
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_3
    const-string p3, "BluetoothAdapter"

    const-string/jumbo v0, "registerMetadataListener fail"

    .line 4224
    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4228
    :try_start_4
    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4229
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4231
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    goto :goto_1

    .line 4235
    :cond_2
    :goto_2
    monitor-exit v2

    return v1

    .line 4228
    :goto_3
    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4229
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 4231
    iget-object p3, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4234
    :cond_3
    throw p2

    .line 4211
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener was already regestered for the device"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 4236
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public cancelDiscovery()Z
    .locals 4

    .line 2039
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 2043
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2044
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 2045
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->cancelDiscovery(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2050
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    .line 2048
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2050
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2051
    throw v0
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3342
    :pswitch_1
    check-cast p2, Landroid/bluetooth/BluetoothLeAudio;

    .line 3343
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothLeAudio;->close()V

    goto/16 :goto_0

    .line 3338
    :pswitch_2
    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    .line 3339
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHearingAid;->close()V

    goto :goto_0

    .line 3334
    :pswitch_3
    check-cast p2, Landroid/bluetooth/BluetoothHidDevice;

    .line 3335
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHidDevice;->close()V

    goto :goto_0

    .line 3330
    :pswitch_4
    check-cast p2, Landroid/bluetooth/BluetoothMapClient;

    .line 3331
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothMapClient;->close()V

    goto :goto_0

    .line 3326
    :pswitch_5
    check-cast p2, Landroid/bluetooth/BluetoothPbapClient;

    .line 3327
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothPbapClient;->close()V

    goto :goto_0

    .line 3318
    :pswitch_6
    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClient;

    .line 3319
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadsetClient;->close()V

    goto :goto_0

    .line 3290
    :pswitch_7
    check-cast p2, Landroid/bluetooth/BluetoothAvrcpController;

    .line 3291
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAvrcpController;->close()V

    goto :goto_0

    .line 3286
    :pswitch_8
    check-cast p2, Landroid/bluetooth/BluetoothA2dpSink;

    .line 3287
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothA2dpSink;->close()V

    goto :goto_0

    .line 3322
    :pswitch_9
    check-cast p2, Landroid/bluetooth/BluetoothSap;

    .line 3323
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSap;->close()V

    goto :goto_0

    .line 3314
    :pswitch_a
    check-cast p2, Landroid/bluetooth/BluetoothMap;

    .line 3315
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothMap;->close()V

    goto :goto_0

    .line 3310
    :pswitch_b
    check-cast p2, Landroid/bluetooth/BluetoothGattServer;

    .line 3311
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattServer;->close()V

    goto :goto_0

    .line 3306
    :pswitch_c
    check-cast p2, Landroid/bluetooth/BluetoothGatt;

    .line 3307
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    .line 3302
    :pswitch_d
    check-cast p2, Landroid/bluetooth/BluetoothPbap;

    .line 3303
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothPbap;->close()V

    goto :goto_0

    .line 3298
    :pswitch_e
    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .line 3299
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothPan;->close()V

    goto :goto_0

    .line 3294
    :pswitch_f
    check-cast p2, Landroid/bluetooth/BluetoothHidHost;

    .line 3295
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHidHost;->close()V

    goto :goto_0

    .line 3282
    :pswitch_10
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .line 3283
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothA2dp;->close()V

    goto :goto_0

    .line 3278
    :pswitch_11
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .line 3279
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadset;->close()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public connectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 2208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectAllEnabledProfiles, device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2211
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_0

    .line 2212
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetooth;->connectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2217
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, ""

    .line 2215
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2217
    :cond_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p1, 0x0

    return p1

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2218
    throw p1
.end method

.method public disable()Z
    .locals 3

    .line 1317
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothManager;->disable(Landroid/content/AttributionSource;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    .line 1319
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public disable(Z)Z
    .locals 2

    .line 1337
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothManager;->disable(Landroid/content/AttributionSource;Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "BluetoothAdapter"

    const-string v1, ""

    .line 1339
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method public disableBLE()Z
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1060
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1063
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    .line 1065
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v3}, Landroid/bluetooth/IBluetoothManager;->disableBle(Landroid/content/AttributionSource;Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    .line 1067
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public disableBluetoothGetStateCache()V
    .locals 1

    .line 1146
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothGetStateCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    return-void
.end method

.method public disableDevice(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public disableGetAdapterConnectionStateCache()V
    .locals 1

    .line 2747
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothGetAdapterConnectionStateCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    return-void
.end method

.method public disableGetProfileConnectionStateCache()V
    .locals 1

    .line 2823
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mGetProfileConnectionStateCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    return-void
.end method

.method public disableIsOffloadedFilteringSupportedCache()V
    .locals 1

    .line 2327
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothFilteringCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    return-void
.end method

.method public disconnectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 2241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectAllEnabledProfiles, device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2244
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_0

    .line 2245
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetooth;->disconnectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2250
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, ""

    .line 2248
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2250
    :cond_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p1, 0x0

    return p1

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2251
    throw p1
.end method

.method public enable()Z
    .locals 3

    .line 1277
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const-string v1, "BluetoothAdapter"

    if-eqz v0, :cond_0

    const-string v0, "enable(): BT already enabled!"

    .line 1279
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 1284
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothManager;->enable(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, ""

    .line 1286
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public enableBLE()Z
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1107
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1110
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    .line 1112
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v3}, Landroid/bluetooth/IBluetoothManager;->enableBle(Landroid/content/AttributionSource;Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    .line 1114
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public enableDevice(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enableNoAutoConnect()Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3482
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const-string v1, "BluetoothAdapter"

    if-eqz v0, :cond_0

    const-string v0, "enableNoAutoConnect(): BT already enabled!"

    .line 3484
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 3489
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothManager;->enableNoAutoConnect(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, ""

    .line 3491
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public factoryReset()Z
    .locals 3

    const-string v0, "BluetoothAdapter"

    .line 1512
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1513
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->factoryReset(Landroid/content/AttributionSource;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 1515
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->onFactoryReset(Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1523
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :cond_0
    :try_start_1
    const-string v1, "factoryReset(): Setting persist.bluetooth.factoryreset to retry later"

    .line 1518
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "persist.bluetooth.factoryreset"

    const-string/jumbo v2, "true"

    .line 1519
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, ""

    .line 1521
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1523
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    return v0

    :goto_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1524
    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3702
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3704
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3705
    throw v0
.end method

.method public generateLocalOobData(ILjava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OobDataCallback;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3617
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid transport \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\'!"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3619
    :cond_1
    :goto_0
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3620
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const-string v2, "BluetoothAdapter"

    if-nez v1, :cond_2

    const-string p1, "generateLocalOobData(): Adapter isn\'t enabled!"

    .line 3621
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    invoke-interface {p3, v0}, Landroid/bluetooth/BluetoothAdapter$OobDataCallback;->onError(I)V

    goto :goto_1

    .line 3625
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;

    invoke-direct {v1, p0, p3, p2}, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$OobDataCallback;Ljava/util/concurrent/Executor;)V

    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1, p2}, Landroid/bluetooth/IBluetooth;->generateLocalOobData(ILandroid/bluetooth/IBluetoothOobDataCallback;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 3628
    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public getAdapterIndex()I
    .locals 1

    .line 887
    iget v0, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .line 1461
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->getAddress(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    .line 1463
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributionSource()Landroid/content/AttributionSource;
    .locals 1

    .line 3768
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    return-object v0
.end method

.method public getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .locals 4

    .line 1601
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return-object v1

    .line 1605
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1606
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 1607
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->getBluetoothClass(Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothClass;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1612
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    .line 1610
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1612
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1613
    throw v0
.end method

.method public getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 2

    .line 942
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 945
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 946
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v1, :cond_1

    .line 947
    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 949
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 950
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 2

    .line 986
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 989
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_1

    .line 991
    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/BluetoothLeScanner;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 993
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 994
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    .locals 1

    .line 3762
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method getBluetoothService()Landroid/bluetooth/IBluetooth;
    .locals 3

    .line 3772
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/HashMap;

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3773
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/HashMap;

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3777
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sService:Ljava/util/HashMap;

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/IBluetooth;

    monitor-exit v0

    return-object v1

    .line 3774
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Anonymous service access requires at least one lifecycle in process"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 3778
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .locals 3

    .line 3783
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3784
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/HashMap;

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3785
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/HashMap;

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3786
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->registerOrUnregisterAdapterLocked()V

    .line 3787
    sget-object p1, Landroid/bluetooth/BluetoothAdapter;->sService:Ljava/util/HashMap;

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/IBluetooth;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3788
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 2668
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    new-array v0, v1, [Landroid/bluetooth/BluetoothDevice;

    .line 2669
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 2672
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2673
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 2674
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2675
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getBondedDevices(Landroid/content/AttributionSource;)[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2674
    invoke-static {v0, v1}, Landroid/content/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2682
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :cond_1
    :try_start_1
    new-array v0, v1, [Landroid/bluetooth/BluetoothDevice;

    .line 2678
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2682
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    .line 2680
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2682
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2683
    throw v0
.end method

.method public getConnectedDevice(I)Ljava/lang/String;
    .locals 2

    .line 1352
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothManager;->getConnectedDevice(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "BluetoothAdapter"

    const-string v1, ""

    .line 1354
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getConnectionState()I
    .locals 4

    .line 2772
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 2776
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2777
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 2778
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothGetAdapterConnectionStateCache:Landroid/app/PropertyInvalidatedCache;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2787
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2781
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/os/RemoteException;

    if-eqz v2, :cond_2

    const-string v2, "BluetoothAdapter"

    const-string v3, "getConnectionState:"

    .line 2782
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    return v1

    .line 2784
    :cond_2
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2787
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2788
    throw v0
.end method

.method public getControllerActivityEnergyInfo(I)Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2576
    new-instance p1, Landroid/os/SynchronousResultReceiver;

    invoke-direct {p1}, Landroid/os/SynchronousResultReceiver;-><init>()V

    .line 2577
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    const-wide/16 v0, 0x3e8

    .line 2579
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object p1

    .line 2580
    iget-object v0, p1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2581
    iget-object p1, p1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v0, "controller_activity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "BluetoothAdapter"

    const-string v0, "getControllerActivityEnergyInfo timed out"

    .line 2584
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    .line 1904
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 1908
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1909
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 1910
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->getDiscoverableTimeout(Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1915
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    .line 1913
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1915
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1916
    throw v0
.end method

.method public getDiscoveryEndMillis()J
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1956
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1957
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_0

    .line 1958
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getDiscoveryEndMillis(Landroid/content/AttributionSource;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1963
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    .line 1961
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1963
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const-wide/16 v0, -0x1

    return-wide v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1964
    throw v0
.end method

.method public getDownloadProgress()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIoCapability()I
    .locals 4

    .line 1664
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xff

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 1666
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1667
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->getIoCapability(Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1671
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    .line 1669
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1671
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1672
    throw v0
.end method

.method getLeAccess()Z
    .locals 3

    .line 1240
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    return v1

    .line 1242
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getLeIoCapability()I
    .locals 4

    .line 1721
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xff

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 1723
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1724
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->getLeIoCapability(Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1728
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    .line 1726
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1728
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1729
    throw v0
.end method

.method public getLeMaximumAdvertisingDataLength()I
    .locals 4

    .line 2478
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2482
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2483
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 2484
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getLeMaximumAdvertisingDataLength()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2489
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get getLeMaximumAdvertisingDataLength, error: "

    .line 2487
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2489
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2490
    throw v0
.end method

.method public getLeState()I
    .locals 1

    .line 1231
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->getStateInternal()I

    move-result v0

    return v0
.end method

.method public getMaxConnectedAudioDevices()I
    .locals 3

    .line 2520
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2521
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_0

    .line 2522
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getMaxConnectedAudioDevices(Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2527
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, "failed to get getMaxConnectedAudioDevices, error: "

    .line 2525
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2527
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x1

    return v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2528
    throw v0
.end method

.method public getModuleVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMostRecentlyConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 2636
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 2637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2640
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2641
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 2642
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2643
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getMostRecentlyConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    .line 2642
    invoke-static {v0, v1}, Landroid/content/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2649
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    .line 2647
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2649
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2651
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2649
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2650
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1479
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->getName(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    .line 1481
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNameLengthForAdvertise()I
    .locals 3

    .line 1491
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->getNameLengthForAdvertise(Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    .line 1493
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getPartNumber()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPeriodicAdvertisingManager()Landroid/bluetooth/le/PeriodicAdvertisingManager;
    .locals 2

    .line 965
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 969
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 973
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 974
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    if-nez v1, :cond_2

    .line 975
    new-instance v1, Landroid/bluetooth/le/PeriodicAdvertisingManager;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/PeriodicAdvertisingManager;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    .line 977
    :cond_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 978
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileConnectionState(I)I
    .locals 2

    .line 2848
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2851
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mGetProfileConnectionStateCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 3201
    new-instance p3, Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_1
    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    .line 3204
    new-instance p3, Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_2
    const/16 v2, 0xb

    if-ne p3, v2, :cond_3

    .line 3207
    new-instance p3, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothA2dpSink;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_3
    const/16 v2, 0xc

    if-ne p3, v2, :cond_4

    .line 3210
    new-instance p3, Landroid/bluetooth/BluetoothAvrcpController;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothAvrcpController;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_4
    const/4 v2, 0x4

    if-ne p3, v2, :cond_5

    .line 3213
    new-instance p3, Landroid/bluetooth/BluetoothHidHost;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothHidHost;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_5
    const/4 v2, 0x5

    if-ne p3, v2, :cond_6

    .line 3216
    new-instance p3, Landroid/bluetooth/BluetoothPan;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothPan;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_6
    const/4 v2, 0x6

    if-ne p3, v2, :cond_7

    .line 3219
    new-instance p3, Landroid/bluetooth/BluetoothPbap;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothPbap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_7
    const/4 v2, 0x3

    if-ne p3, v2, :cond_8

    const-string p1, "BluetoothAdapter"

    const-string p2, "getProfileProxy(): BluetoothHealth is deprecated"

    .line 3222
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_8
    const/16 v2, 0x9

    if-ne p3, v2, :cond_9

    .line 3225
    new-instance p3, Landroid/bluetooth/BluetoothMap;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothMap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_9
    const/16 v2, 0x10

    if-ne p3, v2, :cond_a

    .line 3228
    new-instance p3, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothHeadsetClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_a
    const/16 v2, 0xa

    if-ne p3, v2, :cond_b

    .line 3232
    new-instance p3, Landroid/bluetooth/BluetoothSap;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothSap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_b
    const/16 v2, 0x11

    if-ne p3, v2, :cond_c

    .line 3235
    new-instance p3, Landroid/bluetooth/BluetoothPbapClient;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothPbapClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_c
    const/16 v2, 0x12

    if-ne p3, v2, :cond_d

    .line 3238
    new-instance p3, Landroid/bluetooth/BluetoothMapClient;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothMapClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_d
    const/16 v2, 0x13

    if-ne p3, v2, :cond_e

    .line 3241
    new-instance p3, Landroid/bluetooth/BluetoothHidDevice;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothHidDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_e
    const/16 v2, 0x15

    if-ne p3, v2, :cond_10

    .line 3244
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->isHearingAidProfileSupported()Z

    move-result p3

    if-eqz p3, :cond_f

    .line 3245
    new-instance p3, Landroid/bluetooth/BluetoothHearingAid;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothHearingAid;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_f
    return v0

    :cond_10
    const/16 v2, 0x16

    if-ne p3, v2, :cond_11

    .line 3250
    new-instance p3, Landroid/bluetooth/BluetoothLeAudio;

    invoke-direct {p3, p1, p2, p0}, Landroid/bluetooth/BluetoothLeAudio;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;Landroid/bluetooth/BluetoothAdapter;)V

    return v1

    :cond_11
    :goto_0
    return v0
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 904
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;I)V

    .line 905
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAttributionSource(Landroid/content/AttributionSource;)V

    return-object v0
.end method

.method public getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 5

    if-eqz p1, :cond_0

    .line 922
    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 925
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-byte v4, p1, v3

    .line 926
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aget-byte v4, p1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aget-byte v4, p1, v3

    .line 927
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aget-byte v4, p1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    aget-byte v4, p1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x5

    aget-byte p1, p1, v3

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "%02X:%02X:%02X:%02X:%02X:%02X"

    .line 926
    invoke-static {v2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;I)V

    .line 928
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAttributionSource(Landroid/content/AttributionSource;)V

    return-object v0

    .line 923
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bluetooth address must have 6 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getScanMode()I
    .locals 4

    .line 1784
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0x14

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 1788
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1789
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 1790
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->getScanMode(Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1795
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    .line 1793
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1795
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1796
    throw v0
.end method

.method public getState()I
    .locals 2

    .line 1192
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->getStateInternal()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0xa

    :cond_1
    return v0
.end method

.method public getSupportedProfiles()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2702
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2703
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    .line 2704
    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getSupportedProfiles()J

    move-result-wide v2

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x16

    if-gt v4, v5, :cond_2

    const/4 v5, 0x1

    shl-int/2addr v5, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 2708
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2713
    :cond_1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->isHearingAidProfileSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x15

    .line 2714
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2717
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "BluetoothAdapter"

    const-string v3, "getSupportedProfiles:"

    .line 2719
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    .line 1539
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return-object v1

    .line 1543
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1544
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 1545
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->getUuids(Landroid/content/AttributionSource;)[Landroid/os/ParcelUuid;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1550
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    .line 1548
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1550
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1551
    throw v0
.end method

.method public isBleScanAlwaysAvailable()Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2294
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isBleScanAlwaysAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string/jumbo v2, "remote expection when calling isBleScanAlwaysAvailable"

    .line 2296
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceConnected(I)Z
    .locals 0

    .line 1346
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getConnectedDevice(I)Ljava/lang/String;

    move-result-object p1

    .line 1347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isDiscovering()Z
    .locals 4

    .line 2077
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 2081
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2082
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 2083
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->isDiscovering(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2088
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    .line 2086
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2088
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2089
    throw v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 1007
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHardwareTrackingFiltersAvailable()Z
    .locals 4

    .line 2541
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2545
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 2550
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetoothGatt;->numHwTrackFiltersAvailable(Landroid/content/AttributionSource;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    .line 2552
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isLe2MPhySupported()Z
    .locals 4

    .line 2381
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2385
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2386
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 2387
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLe2MPhySupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2392
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isExtendedAdvertisingSupported, error: "

    .line 2390
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2392
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2393
    throw v0
.end method

.method public isLeCodedPhySupported()Z
    .locals 4

    .line 2405
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2409
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2410
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 2411
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLeCodedPhySupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2416
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isLeCodedPhySupported, error: "

    .line 2414
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2416
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2417
    throw v0
.end method

.method public isLeEnabled()Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1021
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLeEnabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isLeExtendedAdvertisingSupported()Z
    .locals 4

    .line 2429
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2433
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2434
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 2435
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLeExtendedAdvertisingSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2440
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isLeExtendedAdvertisingSupported, error: "

    .line 2438
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2440
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2441
    throw v0
.end method

.method public isLePeriodicAdvertisingSupported()Z
    .locals 4

    .line 2453
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2457
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2458
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 2459
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLePeriodicAdvertisingSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2464
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isLePeriodicAdvertisingSupported, error: "

    .line 2462
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2464
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2465
    throw v0
.end method

.method public isMultipleAdvertisementSupported()Z
    .locals 4

    .line 2264
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 2268
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2269
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 2270
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isMultiAdvertisementSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2275
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isMultipleAdvertisementSupported, error: "

    .line 2273
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2275
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2276
    throw v0
.end method

.method public isOffloadedFilteringSupported()Z
    .locals 2

    .line 2343
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2346
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothFilteringCache:Landroid/app/PropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isOffloadedScanBatchingSupported()Z
    .locals 4

    .line 2357
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2361
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2362
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 2363
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isOffloadedScanBatchingSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2368
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isOffloadedScanBatchingSupported, error: "

    .line 2366
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2368
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2369
    throw v0
.end method

.method public listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3019
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public listenUsingInsecureL2capChannel()Landroid/bluetooth/BluetoothServerSocket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4135
    new-instance v8, Landroid/bluetooth/BluetoothServerSocket;

    iget v7, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZI)V

    .line 4138
    iget-object v0, v8, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    if-nez v0, :cond_1

    .line 4143
    iget-object v0, v8, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenUsingInsecureL2capChannel: set assigned PSM to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4151
    invoke-virtual {v8, v0}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    return-object v8

    .line 4145
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error: Unable to assign PSM value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4140
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public listenUsingInsecureL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listenUsingInsecureL2capOn: port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    iget v9, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move v6, p1

    invoke-direct/range {v2 .. v9}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZI)V

    .line 3141
    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v2

    const/4 v3, -0x2

    if-ne p1, v3, :cond_0

    .line 3143
    iget-object p1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result p1

    .line 3145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listenUsingInsecureL2capOn: set assigned channel to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    :cond_0
    if-nez v2, :cond_1

    return-object v0

    .line 3154
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3052
    new-instance v6, Landroid/bluetooth/BluetoothServerSocket;

    iget v5, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZII)V

    .line 3054
    iget-object v0, v6, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    .line 3056
    iget-object p1, v6, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    :cond_0
    if-nez v0, :cond_1

    return-object v6

    .line 3062
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2977
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public listenUsingL2capChannel()Landroid/bluetooth/BluetoothServerSocket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4087
    new-instance v8, Landroid/bluetooth/BluetoothServerSocket;

    iget v7, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZI)V

    .line 4090
    iget-object v0, v8, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    if-nez v0, :cond_1

    .line 4095
    iget-object v0, v8, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenUsingL2capChannel: set assigned PSM to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    invoke-virtual {v8, v0}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    return-object v8

    .line 4097
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error: Unable to assign PSM value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4092
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public listenUsingL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3119
    invoke-virtual {p0, p1, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingL2capOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public listenUsingL2capOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3086
    new-instance v8, Landroid/bluetooth/BluetoothServerSocket;

    iget v7, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v8

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZI)V

    .line 3089
    iget-object p2, v8, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result p2

    const/4 p3, -0x2

    if-ne p1, p3, :cond_0

    .line 3091
    iget-object p1, v8, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result p1

    .line 3092
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "listenUsingL2capOn: set assigned channel to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BluetoothAdapter"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    invoke-virtual {v8, p1}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    :cond_0
    if-nez p2, :cond_1

    return-object v8

    .line 3099
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2872
    invoke-virtual {p0, p1, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2900
    new-instance v8, Landroid/bluetooth/BluetoothServerSocket;

    iget v7, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v8

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZI)V

    .line 2903
    iget-object p2, v8, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result p2

    const/4 p3, -0x2

    if-ne p1, p3, :cond_0

    .line 2905
    iget-object p1, v8, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result p1

    invoke-virtual {v8, p1}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    :cond_0
    if-nez p2, :cond_1

    return-object v8

    .line 2911
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2943
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public readOutOfBandData()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[B[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerBluetoothConnectionCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z
    .locals 5

    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "registerBluetoothConnectionCallback()"

    .line 4358
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 4363
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v1

    .line 4365
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    .line 4367
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4368
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    .line 4369
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mConnectionCallback:Landroid/bluetooth/IBluetoothConnectionCallback;

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetooth;->registerBluetoothConnectionCallback(Landroid/bluetooth/IBluetoothConnectionCallback;Landroid/content/AttributionSource;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 4378
    :try_start_2
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    monitor-exit v1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    .line 4375
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4376
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4378
    :try_start_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4379
    throw p1

    .line 4383
    :cond_2
    :goto_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4386
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4387
    monitor-exit v1

    const/4 p1, 0x1

    return p1

    .line 4384
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This callback has already been registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 4387
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public registerServiceLifecycleCallback(Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;)Z
    .locals 0

    .line 3863
    iget-object p1, p1, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;->mRemote:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeActiveDevice(I)Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "BluetoothAdapter"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Invalid profiles param value in removeActiveDevice"

    .line 2116
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Profiles must be one of BluetoothAdapter.ACTIVE_DEVICE_AUDIO, BluetoothAdapter.ACTIVE_DEVICE_PHONE_CALL, or BluetoothAdapter.ACTIVE_DEVICE_ALL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2123
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2124
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2

    .line 2125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeActiveDevice, profiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, v2}, Landroid/bluetooth/IBluetooth;->removeActiveDevice(ILandroid/content/AttributionSource;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2131
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, ""

    .line 2129
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2131
    :cond_2
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p1, 0x0

    return p1

    :goto_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2132
    throw p1
.end method

.method public removeOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "removeOnMetadataChangedListener()"

    .line 4262
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "device is null"

    .line 4264
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener is null"

    .line 4267
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4270
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    monitor-enter v0

    .line 4271
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4275
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$rTbB434FV3d70oclBXw-ODvFMv0;

    invoke-direct {v2, p2}, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$rTbB434FV3d70oclBXw-ODvFMv0;-><init>(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 4277
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 4280
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter;->mMetadataListeners:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4281
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-nez p2, :cond_0

    .line 4284
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 4287
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p2, p1, v1}, Landroid/bluetooth/IBluetooth;->unregisterMetadataListener(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "BluetoothAdapter"

    const-string/jumbo v1, "unregisterMetadataListener fail"

    .line 4289
    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 4290
    monitor-exit v0

    return p1

    .line 4293
    :cond_1
    monitor-exit v0

    return v1

    .line 4272
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "device was not registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 4293
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 3

    .line 3792
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3793
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sServiceLock:Ljava/util/HashMap;

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3794
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sProxyServiceStateCallbacks:Ljava/util/HashMap;

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAdapterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3795
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter;->registerOrUnregisterAdapterLocked()V

    .line 3796
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2607
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2608
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_0

    .line 2609
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p1, v3}, Landroid/bluetooth/IBluetooth;->requestActivityInfo(Landroid/os/ResultReceiver;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v1

    .line 2615
    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz p1, :cond_1

    .line 2618
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "BluetoothAdapter"

    .line 2613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getControllerActivityEnergyInfoCallback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2615
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz p1, :cond_2

    .line 2618
    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 2620
    :cond_2
    throw v2
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "BluetoothAdapter"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Invalid profiles param value in setActiveDevice"

    .line 2166
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Profiles must be one of BluetoothAdapter.ACTIVE_DEVICE_AUDIO, BluetoothAdapter.ACTIVE_DEVICE_PHONE_CALL, or BluetoothAdapter.ACTIVE_DEVICE_ALL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2173
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2174
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2

    .line 2176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveDevice, device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, p1, p2, v2}, Landroid/bluetooth/IBluetooth;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2183
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, ""

    .line 2181
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2183
    :cond_2
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p1, 0x0

    return p1

    :goto_1
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2184
    throw p1

    :cond_3
    const-string/jumbo p1, "setActiveDevice: Null device passed as parameter"

    .line 2161
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "device cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBluetoothClass(Landroid/bluetooth/BluetoothClass;)Z
    .locals 3

    .line 1634
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 1638
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1639
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 1640
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetooth;->setBluetoothClass(Landroid/bluetooth/BluetoothClass;Landroid/content/AttributionSource;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1645
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "BluetoothAdapter"

    const-string v2, ""

    .line 1643
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1645
    :cond_1
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1646
    throw p1
.end method

.method public setConnectedDevice(ILjava/lang/String;)V
    .locals 1

    .line 1362
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothManager;->setConnectedDevice(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "BluetoothAdapter"

    const-string v0, ""

    .line 1364
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setDiscoverableTimeout(I)V
    .locals 2

    .line 1925
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    return-void

    .line 1929
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1930
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 1931
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetooth;->setDiscoverableTimeout(ILandroid/content/AttributionSource;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "BluetoothAdapter"

    const-string v1, ""

    .line 1934
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1936
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1937
    throw p1
.end method

.method public setIoCapability(I)Z
    .locals 3

    .line 1695
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 1697
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1698
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetooth;->setIoCapability(ILandroid/content/AttributionSource;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1702
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "BluetoothAdapter"

    .line 1700
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1702
    :cond_1
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1703
    throw p1
.end method

.method public setLeIoCapability(I)Z
    .locals 3

    .line 1752
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 1754
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1755
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetooth;->setLeIoCapability(ILandroid/content/AttributionSource;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1759
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "BluetoothAdapter"

    .line 1757
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1759
    :cond_1
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1760
    throw p1
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 3

    .line 1573
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 1577
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1578
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 1579
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1584
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "BluetoothAdapter"

    const-string v2, ""

    .line 1582
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1584
    :cond_1
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1585
    throw p1
.end method

.method public setScanMode(I)Z
    .locals 4

    .line 1883
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 1887
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1888
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 1889
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getDiscoverableTimeout()I

    move-result v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v2, v3}, Landroid/bluetooth/IBluetooth;->setScanMode(IILandroid/content/AttributionSource;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1894
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "BluetoothAdapter"

    const-string v2, ""

    .line 1892
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1894
    :cond_1
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1895
    throw p1
.end method

.method public setScanMode(IJ)Z
    .locals 5

    const-string v0, "BluetoothAdapter"

    .line 1832
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    return v2

    .line 1836
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1837
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    const-wide/16 v3, 0x3e8

    .line 1838
    div-long/2addr p2, v3

    invoke-static {p2, p3}, Ljava/lang/Math;->toIntExact(J)I

    move-result p2

    .line 1839
    iget-object p3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p3, p1, p2, v1}, Landroid/bluetooth/IBluetooth;->setScanMode(IILandroid/content/AttributionSource;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1848
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_1
    const-string/jumbo p1, "setScanMode: Duration in seconds outside of the bounds of an int"

    .line 1844
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Duration not in bounds. In seconds, the durationMillis must be in the range of an int"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    const-string p2, ""

    .line 1842
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1848
    :cond_1
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v2

    :goto_0
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1849
    throw p1
.end method

.method public startDiscovery()Z
    .locals 4

    .line 2003
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 2007
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2008
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    .line 2009
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->startDiscovery(Landroid/content/AttributionSource;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2014
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    .line 2012
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2014
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2015
    throw v0
.end method

.method public startDownload(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3921
    invoke-virtual {p0, v0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result p1

    return p1
.end method

.method public startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3943
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdapter"

    .line 3944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startLeScan(): packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " UUID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "BluetoothAdapter"

    const-string/jumbo p2, "startLeScan: null callback"

    .line 3948
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3952
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "BluetoothAdapter"

    const-string/jumbo p2, "startLeScan: cannot get BluetoothLeScanner"

    .line 3955
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3960
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v2

    .line 3961
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "BluetoothAdapter"

    const-string p2, "LE Scan has already started"

    .line 3963
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 3969
    :cond_2
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_3

    .line 3972
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 3976
    :cond_3
    :try_start_3
    new-instance v3, Landroid/bluetooth/BluetoothAdapter$7;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$7;-><init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 4005
    new-instance v4, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v4

    const/4 v6, 0x2

    .line 4007
    invoke-virtual {v4, v6}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v4

    .line 4008
    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v4

    .line 4010
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 4011
    array-length v7, p1

    if-lez v7, :cond_4

    .line 4014
    new-instance v7, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v7}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    new-instance v8, Landroid/os/ParcelUuid;

    aget-object p1, p1, v0

    invoke-direct {v8, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 4015
    invoke-virtual {v7, v8}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object p1

    .line 4016
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object p1

    .line 4017
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4019
    :cond_4
    invoke-virtual {v1, v6, v4, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 4021
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4022
    :try_start_4
    monitor-exit v2

    return v5

    :catch_0
    move-exception p1

    const-string p2, "BluetoothAdapter"

    const-string v1, ""

    .line 4025
    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4027
    monitor-exit v2

    return v0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4043
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdapter"

    .line 4044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopLeScan() packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4050
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v1

    .line 4051
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/le/ScanCallback;

    if-nez p1, :cond_1

    const-string p1, "BluetoothAdapter"

    const-string/jumbo v0, "scan not started yet"

    .line 4054
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    monitor-exit v1

    return-void

    .line 4058
    :cond_1
    invoke-virtual {v0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 4059
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterBluetoothConnectionCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z
    .locals 3

    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "unregisterBluetoothConnectionCallback()"

    .line 4406
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4411
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v1

    .line 4412
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4413
    monitor-exit v1

    return v0

    .line 4415
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4417
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mBluetoothConnectionCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 4423
    :cond_2
    :try_start_1
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4424
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz p1, :cond_3

    .line 4425
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mConnectionCallback:Landroid/bluetooth/IBluetoothConnectionCallback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {p1, v1, v2}, Landroid/bluetooth/IBluetooth;->unregisterBluetoothConnectionCallback(Landroid/bluetooth/IBluetoothConnectionCallback;Landroid/content/AttributionSource;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4431
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    .line 4429
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4431
    :cond_3
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4432
    throw p1

    :catchall_1
    move-exception p1

    .line 4415
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public unregisterServiceLifecycleCallback(Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;)V
    .locals 0

    .line 3872
    iget-object p1, p1, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;->mRemote:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V

    return-void
.end method
