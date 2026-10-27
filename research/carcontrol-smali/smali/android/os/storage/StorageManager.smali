.class public Landroid/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManager$AppIoBlockedReason;,
        Landroid/os/storage/StorageManager$QuotaType;,
        Landroid/os/storage/StorageManager$AllocateFlags;,
        Landroid/os/storage/StorageManager$MountMode;,
        Landroid/os/storage/StorageManager$StorageVolumeCallback;,
        Landroid/os/storage/StorageManager$ObbListenerDelegate;,
        Landroid/os/storage/StorageManager$ObbActionListener;,
        Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAR_APP_CACHE:Ljava/lang/String; = "android.os.storage.action.CLEAR_APP_CACHE"

.field public static final ACTION_MANAGE_STORAGE:Ljava/lang/String; = "android.os.storage.action.MANAGE_STORAGE"

.field public static final APP_IO_BLOCKED_REASON_TRANSCODING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final APP_IO_BLOCKED_REASON_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final CRYPT_TYPE_DEFAULT:I = 0x1

.field public static final CRYPT_TYPE_PASSWORD:I = 0x0

.field public static final CRYPT_TYPE_PATTERN:I = 0x2

.field public static final CRYPT_TYPE_PIN:I = 0x3

.field public static final DEBUG_ADOPTABLE_FORCE_OFF:I = 0x2

.field public static final DEBUG_ADOPTABLE_FORCE_ON:I = 0x1

.field public static final DEBUG_EMULATE_FBE:I = 0x4

.field public static final DEBUG_SDCARDFS_FORCE_OFF:I = 0x10

.field public static final DEBUG_SDCARDFS_FORCE_ON:I = 0x8

.field public static final DEBUG_VIRTUAL_DISK:I = 0x20

.field private static final DEFAULT_CACHE_MAX_BYTES:J

.field private static final DEFAULT_CACHE_PERCENTAGE:I = 0xa

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:J

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:J

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0x5

.field public static final ENCRYPTION_STATE_ERROR_CORRUPT:I = -0x4

.field public static final ENCRYPTION_STATE_ERROR_INCOMPLETE:I = -0x2

.field public static final ENCRYPTION_STATE_ERROR_INCONSISTENT:I = -0x3

.field public static final ENCRYPTION_STATE_ERROR_UNKNOWN:I = -0x1

.field public static final ENCRYPTION_STATE_NONE:I = 0x1

.field public static final ENCRYPTION_STATE_OK:I = 0x0

.field public static final EXTRA_REQUESTED_BYTES:Ljava/lang/String; = "android.os.storage.extra.REQUESTED_BYTES"

.field public static final EXTRA_UUID:Ljava/lang/String; = "android.os.storage.extra.UUID"

.field private static final FAT_UUID_PREFIX:Ljava/lang/String; = "fafafafa-fafa-5afa-8afa-fafa"

.field public static final FLAG_ALLOCATE_AGGRESSIVE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_ALLOCATE_CACHE_ONLY:I = 0x10

.field public static final FLAG_ALLOCATE_DEFY_ALL_RESERVED:I = 0x2

.field public static final FLAG_ALLOCATE_DEFY_HALF_RESERVED:I = 0x4

.field public static final FLAG_ALLOCATE_NON_CACHE_ONLY:I = 0x8

.field public static final FLAG_FOR_WRITE:I = 0x100

.field public static final FLAG_INCLUDE_INVISIBLE:I = 0x400

.field public static final FLAG_INCLUDE_RECENT:I = 0x800

.field public static final FLAG_REAL_STATE:I = 0x200

.field public static final FLAG_STORAGE_CE:I = 0x2

.field public static final FLAG_STORAGE_DE:I = 0x1

.field public static final FLAG_STORAGE_EXTERNAL:I = 0x4

.field public static final FSTRIM_FLAG_DEEP:I = 0x1

.field private static final LOCAL_LOGV:Z

.field public static final MOUNT_MODE_EXTERNAL_ANDROID_WRITABLE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MOUNT_MODE_EXTERNAL_DEFAULT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MOUNT_MODE_EXTERNAL_INSTALLER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MOUNT_MODE_EXTERNAL_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MOUNT_MODE_EXTERNAL_PASS_THROUGH:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OWNER_INFO_KEY:Ljava/lang/String; = "OwnerInfo"

.field public static final PASSWORD_VISIBLE_KEY:Ljava/lang/String; = "PasswordVisible"

.field public static final PATTERN_VISIBLE_KEY:Ljava/lang/String; = "PatternVisible"

.field public static final PROJECT_ID_EXT_DEFAULT:I = 0x3e8

.field public static final PROJECT_ID_EXT_MEDIA_AUDIO:I = 0x3e9

.field public static final PROJECT_ID_EXT_MEDIA_IMAGE:I = 0x3eb

.field public static final PROJECT_ID_EXT_MEDIA_VIDEO:I = 0x3ea

.field public static final PROP_ADOPTABLE:Ljava/lang/String; = "persist.sys.adoptable"

.field public static final PROP_EMULATE_FBE:Ljava/lang/String; = "persist.sys.emulate_fbe"

.field public static final PROP_FORCED_SCOPED_STORAGE_WHITELIST:Ljava/lang/String; = "forced_scoped_storage_whitelist"

.field public static final PROP_HAS_ADOPTABLE:Ljava/lang/String; = "vold.has_adoptable"

.field public static final PROP_HAS_RESERVED:Ljava/lang/String; = "vold.has_reserved"

.field public static final PROP_PRIMARY_PHYSICAL:Ljava/lang/String; = "ro.vold.primary_physical"

.field public static final PROP_SDCARDFS:Ljava/lang/String; = "persist.sys.sdcardfs"

.field public static final PROP_VIRTUAL_DISK:Ljava/lang/String; = "persist.sys.virtual_disk"

.field public static final QUOTA_TYPE_MEDIA_AUDIO:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final QUOTA_TYPE_MEDIA_IMAGE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final QUOTA_TYPE_MEDIA_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final QUOTA_TYPE_MEDIA_VIDEO:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SYSTEM_LOCALE_KEY:Ljava/lang/String; = "SystemLocale"

.field private static final TAG:Ljava/lang/String; = "StorageManager"

.field public static final UUID_DEFAULT:Ljava/util/UUID;

.field public static final UUID_PRIMARY_PHYSICAL:Ljava/lang/String; = "primary_physical"

.field public static final UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

.field public static final UUID_PRIVATE_INTERNAL:Ljava/lang/String;

.field public static final UUID_SYSTEM:Ljava/lang/String; = "system"

.field public static final UUID_SYSTEM_:Ljava/util/UUID;

.field private static final XATTR_CACHE_GROUP:Ljava/lang/String; = "user.cache_group"

.field private static final XATTR_CACHE_TOMBSTONE:Ljava/lang/String; = "user.cache_tombstone"

.field private static volatile sStorageManager:Landroid/os/storage/IStorageManager;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/storage/StorageManager$StorageEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

.field private final mFuseAppLoopLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private final mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStorageManager:Landroid/os/storage/IStorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "StorageManager"

    const/4 v1, 0x2

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/os/storage/StorageManager;->LOCAL_LOGV:Z

    const/4 v0, 0x0

    .line 168
    sput-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const-string v1, "41217664-9172-527a-b3d5-edabb50a7d69"

    .line 193
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    const-string v1, "0f95a519-dae7-5abf-9519-fbd6209e05fd"

    .line 197
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    const-string v1, "5d258386-e60d-59e3-826d-0089cdd42cc0"

    .line 201
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    .line 315
    sput-object v0, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    .line 1468
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Landroid/os/storage/StorageManager;->DEFAULT_THRESHOLD_MAX_BYTES:J

    .line 1471
    sget-object v0, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Landroid/os/storage/StorageManager;->DEFAULT_CACHE_MAX_BYTES:J

    .line 1473
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Landroid/os/storage/StorageManager;->DEFAULT_FULL_THRESHOLD_BYTES:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    .line 410
    new-instance v0, Landroid/os/storage/StorageManager$ObbActionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    .line 2937
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    .line 2939
    iput-object v1, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    .line 504
    iput-object p1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 505
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    .line 506
    iput-object p2, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    const-string p2, "mount"

    .line 507
    invoke-static {p2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object p2

    iput-object p2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 508
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Landroid/os/storage/StorageManager;->mAppOps:Landroid/app/AppOpsManager;

    return-void
.end method

.method static synthetic access$200(Landroid/os/storage/StorageManager;)I
    .locals 0

    .line 145
    invoke-direct {p0}, Landroid/os/storage/StorageManager;->getNextNonce()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroid/os/storage/StorageManager;)Landroid/os/Looper;
    .locals 0

    .line 145
    iget-object p0, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method private checkExternalStoragePermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    .line 1971
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x5c

    const/4 v5, 0x0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1976
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1982
    :cond_1
    invoke-direct/range {p0 .. p7}, Landroid/os/storage/StorageManager;->checkPermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public static checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 1799
    invoke-static/range {v0 .. v8}, Landroid/os/storage/StorageManager;->checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method private static checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 7

    .line 1820
    invoke-virtual {p0, p6, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    return v0

    .line 1822
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " denied for package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1829
    :cond_1
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/app/AppOpsManager;

    if-eqz p8, :cond_2

    const/4 v6, 0x0

    move v2, p7

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1832
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 1835
    :cond_2
    :try_start_0
    invoke-virtual {v1, p3, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1843
    invoke-virtual {v1, p7, p3, p4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    :goto_0
    const/4 p2, 0x1

    if-eqz p0, :cond_6

    if-eq p0, p2, :cond_4

    const/4 p2, 0x2

    if-eq p0, p2, :cond_4

    const/4 p2, 0x3

    if-ne p0, p2, :cond_3

    goto :goto_1

    .line 1858
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1859
    invoke-static {p7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " has unknown mode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1860
    invoke-static {p0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    return v0

    .line 1852
    :cond_5
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Op "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1853
    invoke-static {p0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " for package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return p2

    :catch_0
    move-exception p0

    if-nez p1, :cond_7

    return v0

    .line 1838
    :cond_7
    throw p0
.end method

.method private checkPermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    .line 1866
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/os/storage/StorageManager;->checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public static checkPermissionAndCheckOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;I)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    .line 1809
    invoke-static/range {v0 .. v8}, Landroid/os/storage/StorageManager;->checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public static convert(Ljava/util/UUID;)Ljava/lang/String;
    .locals 3

    .line 2793
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2794
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object p0

    .line 2795
    :cond_0
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "primary_physical"

    return-object p0

    .line 2797
    :cond_1
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "system"

    return-object p0

    .line 2800
    :cond_2
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fafafafa-fafa-5afa-8afa-fafa"

    .line 2805
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p0, 0x1c

    .line 2806
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2807
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 2808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2811
    :cond_3
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/String;)Ljava/util/UUID;
    .locals 3

    .line 2766
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2767
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    return-object p0

    :cond_0
    const-string v0, "primary_physical"

    .line 2768
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2769
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    return-object p0

    :cond_1
    const-string/jumbo v0, "system"

    .line 2770
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2771
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    return-object p0

    .line 2772
    :cond_2
    invoke-static {p0}, Landroid/os/storage/StorageManager;->isFatVolumeIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fafafafa-fafa-5afa-8afa-fafa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    return-object p0

    .line 2786
    :cond_3
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public static from(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method private getNextNonce()I
    .locals 1

    .line 443
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method private getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    .locals 4

    .line 736
    :try_start_0
    invoke-static {p1}, Landroid/content/res/ObbScanner;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 739
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get OBB info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getPrimaryStoragePathAndSize()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1379
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 1380
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1379
    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    .line 1378
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .locals 4

    .line 1459
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 1460
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1464
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing primary storage"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getProjectIdForUser(II)J
    .locals 1

    const v0, 0x186a0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    int-to-long p0, p0

    return-wide p0
.end method

.method public static getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;
    .locals 1

    const/4 v0, 0x0

    .line 1284
    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object p0

    return-object p0
.end method

.method private static getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1293
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/mnt/content/"

    .line 1294
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1295
    invoke-static {v1}, Landroid/content/ContentResolver;->translateDeprecatedDataPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 1296
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    .line 1297
    invoke-virtual {p1, p0}, Landroid/os/storage/StorageManager;->getStorageVolume(Landroid/net/Uri;)Landroid/os/storage/StorageVolume;

    move-result-object p0

    return-object p0

    .line 1300
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1305
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 1306
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v4

    .line 1308
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1312
    invoke-static {v4, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :catch_0
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 1302
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get canonical path for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getVolumeList(II)[Landroid/os/storage/StorageVolume;
    .locals 6

    const-string v0, "mount"

    .line 1408
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1407
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    .line 1410
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "StorageManager"

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 1416
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1417
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 1416
    invoke-interface {v1, v4}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1418
    array-length v4, v1

    if-gtz v4, :cond_0

    goto :goto_0

    .line 1422
    :cond_0
    aget-object v1, v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "Missing package names; no storage volumes available"

    .line 1419
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v3, [Landroid/os/storage/StorageVolume;

    return-object p0

    .line 1424
    :cond_2
    :goto_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-interface {v4, v1, v5, p0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result p0

    if-gtz p0, :cond_3

    const-string p0, "Missing UID; no storage volumes available"

    .line 1427
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v3, [Landroid/os/storage/StorageVolume;

    return-object p0

    .line 1430
    :cond_3
    invoke-interface {v0, p0, v1, p1}, Landroid/os/storage/IStorageManager;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1432
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static hasAdoptable()Z
    .locals 2

    const-string v0, "persist.sys.adoptable"

    .line 1742
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "force_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "force_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "vold.has_adoptable"

    .line 1748
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static hasIsolatedStorage()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static inCryptKeeperBounce()Z
    .locals 2

    .line 1722
    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "trigger_restart_min_framework"

    .line 1723
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBlockEncrypted()Z
    .locals 1

    .line 1668
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1671
    :cond_0
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_BLOCK_ENCRYPTED:Z

    return v0
.end method

.method public static isBlockEncrypting()Z
    .locals 2

    .line 1706
    invoke-static {}, Landroid/sysprop/VoldProperties;->encrypt_progress()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1707
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2687
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 2690
    iget p1, p0, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->ENODATA:I

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2691
    :cond_0
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static isEncryptable()Z
    .locals 1

    .line 1637
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTABLE:Z

    return v0
.end method

.method public static isEncrypted()Z
    .locals 1

    .line 1646
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTED:Z

    return v0
.end method

.method private static isFatVolumeIdentifier(Ljava/lang/String;)Z
    .locals 2

    .line 2760
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFileEncryptedEmulatedOnly()Z
    .locals 2

    const-string v0, "persist.sys.emulate_fbe"

    const/4 v1, 0x0

    .line 1728
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFileEncryptedNativeOnly()Z
    .locals 1

    .line 1656
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1659
    :cond_0
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_FILE_ENCRYPTED:Z

    return v0
.end method

.method public static isFileEncryptedNativeOrEmulated()Z
    .locals 1

    .line 1736
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1737
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public static isNonDefaultBlockEncrypted()Z
    .locals 3

    .line 1681
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "mount"

    .line 1687
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1686
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    .line 1688
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    :catch_0
    const-string v0, "StorageManager"

    const-string v2, "Error getting encryption type"

    .line 1690
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isUserKeyUnlocked(I)Z
    .locals 3

    .line 1599
    sget-object v0, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    if-nez v0, :cond_0

    const-string v0, "mount"

    .line 1601
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    sput-object v0, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    .line 1603
    :cond_0
    sget-object v0, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    if-nez v0, :cond_1

    const-string p0, "StorageManager"

    const-string v0, "Early during boot, assuming locked"

    .line 1604
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1607
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1609
    :try_start_0
    sget-object v2, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, p0}, Landroid/os/storage/IStorageManager;->isUserKeyUnlocked(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1613
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1611
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1613
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1614
    throw p0
.end method

.method public static isValidString(Ljava/lang/String;)Z
    .locals 3

    .line 1011
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 1015
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1016
    aget-char v2, p0, v1

    .line 1017
    invoke-static {v2}, Landroid/os/storage/StorageManager;->isWord(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isWord(C)Z
    .locals 3

    const-string v0, "[\\w]"

    .line 1003
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1005
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method private noteAppOpAllowingLegacy(ZIILjava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    .line 1872
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    move v1, p6

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 p5, 0x1

    if-eqz p2, :cond_4

    if-eq p2, p5, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1891
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1892
    invoke-static {p6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " has unknown mode "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1893
    invoke-static {p2}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1881
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, p3, p4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p3

    if-nez p3, :cond_2

    return p5

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    return p1

    .line 1885
    :cond_3
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Op "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, " "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1886
    invoke-static {p2}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " for package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return p5
.end method

.method private static setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2663
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 2668
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string p2, "1"

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2669
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const/4 v0, 0x0

    .line 2668
    invoke-static {p0, p1, p2, v0}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2671
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 2675
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/system/Os;->removexattr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 2677
    iget p1, p0, Landroid/system/ErrnoException;->errno:I

    sget p2, Landroid/system/OsConstants;->ENODATA:I

    if-ne p1, p2, :cond_1

    :goto_0
    return-void

    .line 2678
    :cond_1
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 2664
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cache behavior can only be set on directories"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native setQuotaProjectId(Ljava/lang/String;J)Z
.end method


# virtual methods
.method public allocateBytes(Ljava/io/FileDescriptor;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2432
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    return-void
.end method

.method public allocateBytes(Ljava/io/FileDescriptor;JI)V
    .locals 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "StorageManager"

    .line 2441
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->getFile(Ljava/io/FileDescriptor;)Ljava/io/File;

    move-result-object v1

    .line 2442
    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    .line 2445
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v4

    iget-wide v4, v4, Landroid/system/StructStat;->st_blocks:J

    const-wide/16 v6, 0x200

    mul-long/2addr v4, v6

    sub-long v4, p2, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 2449
    invoke-virtual {p0, v2, v4, v5, p4}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/util/UUID;JI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2453
    :cond_0
    :try_start_1
    invoke-static {p1, v6, v7, p2, p3}, Landroid/system/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v4

    .line 2456
    :try_start_2
    iget v5, v4, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v5, v6, :cond_2

    iget v5, v4, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ENOTSUP:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 2461
    :cond_1
    throw v4

    :cond_2
    :goto_1
    const-string v4, "fallocate() not supported; falling back to ftruncate()"

    .line 2457
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    invoke-static {p1, p2, p3}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v4

    .line 2465
    iget v5, v4, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ENOSPC:I

    if-ne v5, v6, :cond_3

    const-string v4, "Odd, not enough space; let\'s try again?"

    .line 2466
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2469
    :cond_3
    invoke-virtual {v4}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 2472
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Well this is embarassing; we can\'t allocate "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public allocateBytes(Ljava/util/UUID;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2360
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/util/UUID;JI)V

    return-void
.end method

.method public allocateBytes(Ljava/util/UUID;JI)V
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2370
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 2371
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-wide v2, p2

    move v4, p4

    .line 2370
    invoke-interface/range {v0 .. v5}, Landroid/os/storage/IStorageManager;->allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2375
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2373
    const-class p2, Ljava/io/IOException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public benchmark(Ljava/lang/String;)J
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1096
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 1097
    new-instance v1, Landroid/os/storage/StorageManager$1;

    invoke-direct {v1, p0, v0}, Landroid/os/storage/StorageManager$1;-><init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, p1, v1}, Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    const-wide/16 v1, 0x3

    const-wide v3, 0x7fffffffffffffffL

    .line 1110
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    const-string/jumbo v0, "run"

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0

    :catch_0
    return-wide v3
.end method

.method public benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .locals 1

    .line 1119
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1121
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public checkPermissionReadAudio(ZIILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v7, 0x3b

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1904
    invoke-direct/range {v0 .. v7}, Landroid/os/storage/StorageManager;->checkExternalStoragePermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v6, 0x51

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1908
    invoke-direct/range {v0 .. v6}, Landroid/os/storage/StorageManager;->noteAppOpAllowingLegacy(ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public checkPermissionReadImages(ZIILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v7, 0x3b

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1948
    invoke-direct/range {v0 .. v7}, Landroid/os/storage/StorageManager;->checkExternalStoragePermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v6, 0x55

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1952
    invoke-direct/range {v0 .. v6}, Landroid/os/storage/StorageManager;->noteAppOpAllowingLegacy(ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public checkPermissionReadVideo(ZIILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v7, 0x3b

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1926
    invoke-direct/range {v0 .. v7}, Landroid/os/storage/StorageManager;->checkExternalStoragePermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v6, 0x53

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1930
    invoke-direct/range {v0 .. v6}, Landroid/os/storage/StorageManager;->noteAppOpAllowingLegacy(ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public checkPermissionWriteAudio(ZIILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v7, 0x3c

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1915
    invoke-direct/range {v0 .. v7}, Landroid/os/storage/StorageManager;->checkExternalStoragePermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v6, 0x52

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1919
    invoke-direct/range {v0 .. v6}, Landroid/os/storage/StorageManager;->noteAppOpAllowingLegacy(ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public checkPermissionWriteImages(ZIILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v7, 0x3c

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1959
    invoke-direct/range {v0 .. v7}, Landroid/os/storage/StorageManager;->checkExternalStoragePermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v6, 0x56

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1963
    invoke-direct/range {v0 .. v6}, Landroid/os/storage/StorageManager;->noteAppOpAllowingLegacy(ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public checkPermissionWriteVideo(ZIILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v7, 0x3c

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1937
    invoke-direct/range {v0 .. v7}, Landroid/os/storage/StorageManager;->checkExternalStoragePermissionAndAppOp(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v6, 0x54

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1941
    invoke-direct/range {v0 .. v6}, Landroid/os/storage/StorageManager;->noteAppOpAllowingLegacy(ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public createUserKey(IIZ)V
    .locals 1

    .line 1545
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/storage/IStorageManager;->createUserKey(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1547
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public destroyUserKey(I)V
    .locals 1

    .line 1554
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->destroyUserKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1556
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .locals 1

    .line 1590
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/storage/IStorageManager;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1592
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public disableUsbMassStorage()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public enableUsbMassStorage()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;
    .locals 3

    .line 824
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 827
    iget-object v2, v1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 3

    if-eqz p1, :cond_0

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "private"

    const-string v2, "emulated"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 891
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 890
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPathForUuid(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 946
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 950
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find a storage device for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 2

    if-eqz p1, :cond_1

    .line 875
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    .line 876
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 878
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "emulated"

    const-string v1, "private"

    .line 880
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .locals 3

    .line 862
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 865
    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 3

    .line 837
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 840
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 1

    .line 899
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "private"

    .line 900
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "primary_physical"

    .line 901
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1

    .line 904
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    return-object p1
.end method

.method public findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 3

    .line 850
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 853
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public fixupAppDir(Ljava/io/File;)V
    .locals 3

    .line 2652
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->fixupAppDir(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2656
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception v0

    .line 2654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get canonical path for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StorageManager"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .locals 1

    .line 1209
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->forgetVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1211
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public format(Ljava/lang/String;)V
    .locals 1

    .line 1087
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->format(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1089
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getAllocatableBytes(Ljava/util/UUID;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2311
    invoke-virtual {p0, p1, v0}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllocatableBytes(Ljava/util/UUID;I)J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2321
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 2322
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2321
    invoke-interface {v0, p1, p2, v1}, Landroid/os/storage/IStorageManager;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 2327
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2324
    const-class p2, Ljava/io/IOException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2325
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1032
    :cond_0
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1033
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1034
    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1035
    iget-object p1, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    return-object p1

    .line 1039
    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1040
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/StorageManager;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1041
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1045
    :cond_2
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v1, :cond_3

    .line 1046
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public getCacheQuotaBytes(Ljava/util/UUID;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2112
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2113
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, p1, v0}, Landroid/os/storage/IStorageManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 2118
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2115
    const-class v0, Ljava/io/IOException;

    invoke-virtual {p1, v0}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2116
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getCacheSizeBytes(Ljava/util/UUID;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2147
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2148
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, p1, v0}, Landroid/os/storage/IStorageManager;->getCacheSizeBytes(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 2153
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2150
    const-class v0, Ljava/io/IOException;

    invoke-virtual {p1, v0}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2151
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getDisks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation

    .line 815
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 817
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getExternalStorageMountMode(ILjava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2395
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2397
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 1

    .line 727
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 730
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "rawPath cannot be null"

    .line 802
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 807
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;
    .locals 3

    .line 1055
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 1056
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1057
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryStorageSize()J
    .locals 4

    .line 1385
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 1386
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1385
    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .locals 1

    .line 1223
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1225
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 2

    .line 1373
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v1, 0x600

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .line 1454
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getProxyFileDescriptorMountPointId()I
    .locals 2

    .line 2079
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2080
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2081
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRecentStorageVolumes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .line 1359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 1361
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/16 v2, 0xe00

    invoke-static {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 1360
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getStorageBytesUntilLow(Ljava/io/File;)J
    .locals 4

    .line 1483
    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getStorageCacheBytes(Ljava/io/File;I)J
    .locals 5

    .line 1511
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sys_storage_cache_percentage"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 1513
    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x64

    div-long/2addr v2, v0

    .line 1515
    iget-object p1, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    sget-wide v0, Landroid/os/storage/StorageManager;->DEFAULT_CACHE_MAX_BYTES:J

    const-string/jumbo v4, "sys_storage_cache_max_bytes"

    invoke-static {p1, v4, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1518
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    and-int/lit8 p1, p2, 0x1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    return-wide v2

    :cond_0
    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_1

    return-wide v2

    :cond_1
    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_2

    const-wide/16 p1, 0x2

    .line 1524
    div-long/2addr v0, p1

    :cond_2
    return-wide v0
.end method

.method public getStorageFullBytes(Ljava/io/File;)J
    .locals 3

    .line 1538
    iget-object p1, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    sget-wide v0, Landroid/os/storage/StorageManager;->DEFAULT_FULL_THRESHOLD_BYTES:J

    const-string/jumbo v2, "sys_storage_full_threshold_bytes"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStorageLowBytes(Ljava/io/File;)J
    .locals 5

    .line 1494
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sys_storage_threshold_percentage"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 1496
    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x64

    div-long/2addr v2, v0

    .line 1498
    iget-object p1, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    sget-wide v0, Landroid/os/storage/StorageManager;->DEFAULT_THRESHOLD_MAX_BYTES:J

    const-string/jumbo v4, "sys_storage_threshold_max_bytes"

    invoke-static {p1, v4, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1501
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStorageVolume(Landroid/net/Uri;)Landroid/os/storage/StorageVolume;
    .locals 4

    .line 1256
    invoke-static {p1}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "external"

    .line 1260
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1261
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 1263
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 1264
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_2

    .line 1266
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    .line 1261
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    .line 1269
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "external_primary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1273
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 1274
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    .line 1279
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown volume for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :cond_5
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object p1

    return-object p1
.end method

.method public getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .locals 1

    .line 1248
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    return-object p1
.end method

.method public getStorageVolumes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .line 1344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1345
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 1346
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/16 v2, 0x600

    invoke-static {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 1345
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getUuidForPath(Ljava/io/File;)Ljava/util/UUID;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 920
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 922
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    sget-object p1, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    return-object p1

    .line 926
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 927
    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v5, :cond_1

    iget v5, v4, Landroid/os/storage/VolumeInfo;->type:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    .line 932
    :try_start_1
    iget-object v4, v4, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 941
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find a storage device for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    .line 939
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 2

    .line 1401
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1443
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1444
    array-length v1, v0

    .line 1445
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1447
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getVolumeRecords()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation

    .line 994
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 996
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1326
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1328
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string/jumbo p1, "unknown"

    return-object p1
.end method

.method public getVolumes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 970
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 972
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getWritablePrivateVolumes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 979
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 980
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 981
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 982
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 987
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isAllocationSupported(Ljava/io/FileDescriptor;)Z
    .locals 0

    .line 959
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->getFile(Ljava/io/FileDescriptor;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public isAppIoBlocked(Ljava/util/UUID;III)Z
    .locals 1

    .line 2929
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2931
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->isAppIoBlocked(Ljava/lang/String;III)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2933
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isCacheBehaviorGroup(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "user.cache_group"

    .line 2724
    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isCacheBehaviorTombstone(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "user.cache_tombstone"

    .line 2752
    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isCheckpointSupported()Z
    .locals 1

    .line 2822
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2824
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public isEncrypted(Ljava/io/File;)Z
    .locals 1

    .line 1622
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1623
    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result p1

    return p1

    .line 1624
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExpandDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "rawPath cannot be null"

    .line 783
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->isObbMounted(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 788
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public isUsbMassStorageConnected()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public lockUserKey(I)V
    .locals 1

    .line 1572
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->lockUserKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1574
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public mkdirs(Ljava/io/File;)V
    .locals 2

    .line 1391
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 1393
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/os/storage/IStorageManager;->mkdirs(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1395
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public mount(Ljava/lang/String;)V
    .locals 1

    .line 1067
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->mount(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1069
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z
    .locals 8

    const-string/jumbo v0, "rawPath cannot be null"

    .line 691
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener cannot be null"

    .line 692
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 696
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v6

    .line 697
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v5, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    .line 698
    invoke-direct {p0, v3}, Landroid/os/storage/StorageManager;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;

    move-result-object v7

    move-object v2, p1

    move-object v4, p2

    .line 697
    invoke-interface/range {v1 .. v7}, Landroid/os/storage/IStorageManager;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 703
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p2

    .line 701
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to resolve path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public notifyAppIoBlocked(Ljava/util/UUID;III)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2878
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2880
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->notifyAppIoBlocked(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2882
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public notifyAppIoResumed(Ljava/util/UUID;III)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2905
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2907
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->notifyAppIoResumed(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2909
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2041
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2072
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2073
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1990
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage_open_proxy_file_descriptor"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1997
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 1999
    :try_start_1
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    if-nez v3, :cond_1

    .line 2000
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2004
    new-instance v3, Lcom/android/internal/os/FuseAppLoop;

    iget v4, v1, Lcom/android/internal/os/AppFuseMount;->mountPointId:I

    iget-object v1, v1, Lcom/android/internal/os/AppFuseMount;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v4, v1, p4}, Lcom/android/internal/os/FuseAppLoop;-><init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    move v1, v2

    goto :goto_1

    .line 2002
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to mount proxy bridge"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    if-nez p3, :cond_2

    .line 2008
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p3, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2011
    :cond_2
    :try_start_2
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v3, p2, p3}, Lcom/android/internal/os/FuseAppLoop;->registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I

    move-result v3

    .line 2012
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v5, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    .line 2013
    invoke-virtual {v5}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I

    move-result v5

    .line 2012
    invoke-interface {v4, v5, v3, p1}, Landroid/os/storage/IStorageManager;->openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_2
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    .line 2019
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v4

    .line 2015
    :cond_3
    :try_start_4
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/FuseAppLoop;->unregisterCallback(I)V

    .line 2016
    new-instance v3, Lcom/android/internal/os/FuseUnavailableMountException;

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    .line 2017
    invoke-virtual {v4}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v3
    :try_end_4
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v3

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 2026
    :try_start_5
    iput-object v1, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    .line 2027
    monitor-exit v0

    goto :goto_0

    .line 2024
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 2029
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p1

    .line 2032
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .locals 1

    .line 1147
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->partitionMixed(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1149
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .locals 1

    .line 1138
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->partitionPrivate(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1140
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .locals 1

    .line 1129
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1131
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .locals 1

    .line 1581
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->prepareUserStorage(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1583
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public registerListener(Landroid/os/storage/StorageEventListener;)V
    .locals 4

    .line 520
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 521
    :try_start_0
    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-object v2, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    .line 522
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/os/storage/StorageManager$StorageVolumeCallback;

    invoke-direct {v3}, Landroid/os/storage/StorageManager$StorageVolumeCallback;-><init>()V

    invoke-direct {v1, p0, v2, p1, v3}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/Executor;Landroid/os/storage/StorageEventListener;Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    :try_start_1
    iget-object p1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {p1, v1}, Landroid/os/storage/IStorageManager;->registerListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    :try_start_2
    iget-object p1, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 526
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 529
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public registerStorageVolumeCallback(Ljava/util/concurrent/Executor;Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    .locals 3

    .line 591
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 592
    :try_start_0
    new-instance v1, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    new-instance v2, Landroid/os/storage/StorageEventListener;

    invoke-direct {v2}, Landroid/os/storage/StorageEventListener;-><init>()V

    invoke-direct {v1, p0, p1, v2, p2}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/Executor;Landroid/os/storage/StorageEventListener;Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :try_start_1
    iget-object p1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {p1, v1}, Landroid/os/storage/IStorageManager;->registerListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    :try_start_2
    iget-object p1, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 597
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 600
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setCacheBehaviorGroup(Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "user.cache_group"

    .line 2716
    invoke-static {p1, v0, p2}, Landroid/os/storage/StorageManager;->setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public setCacheBehaviorTombstone(Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "user.cache_tombstone"

    .line 2744
    invoke-static {p1, v0, p2}, Landroid/os/storage/StorageManager;->setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .locals 1

    .line 1237
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1239
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setVolumeInited(Ljava/lang/String;Z)V
    .locals 2

    .line 1189
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0, p1, p2, v1}, Landroid/os/storage/IStorageManager;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1192
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1180
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2}, Landroid/os/storage/IStorageManager;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1182
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setVolumeSnoozed(Ljava/lang/String;Z)V
    .locals 2

    .line 1199
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0, p1, p2, v1}, Landroid/os/storage/IStorageManager;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1202
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public translateAppToSystem(Ljava/io/File;II)Ljava/io/File;
    .locals 0

    return-object p1
.end method

.method public translateSystemToApp(Ljava/io/File;II)Ljava/io/File;
    .locals 0

    return-object p1
.end method

.method public unlockUserKey(II[B[B)V
    .locals 1

    .line 1563
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1565
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public unmount(Ljava/lang/String;)V
    .locals 1

    .line 1077
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1079
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z
    .locals 2

    const-string/jumbo v0, "rawPath cannot be null"

    .line 764
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener cannot be null"

    .line 765
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result p3

    .line 769
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v0, p1, p2, v1, p3}, Landroid/os/storage/IStorageManager;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 772
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public unregisterListener(Landroid/os/storage/StorageEventListener;)V
    .locals 4

    .line 541
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 542
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    .line 544
    iget-object v3, v2, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mListener:Landroid/os/storage/StorageEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 546
    :try_start_1
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v3, v2}, Landroid/os/storage/IStorageManager;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 548
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 553
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public unregisterStorageVolumeCallback(Landroid/os/storage/StorageManager$StorageVolumeCallback;)V
    .locals 4

    .line 610
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 611
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 612
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    .line 613
    iget-object v3, v2, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageManager$StorageVolumeCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 615
    :try_start_1
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v3, v2}, Landroid/os/storage/IStorageManager;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 617
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 622
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public updateExternalStorageFileQuotaType(Ljava/io/File;I)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2594
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2595
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object p1

    const-string v1, "Failed to update quota type for "

    if-nez p1, :cond_0

    .line 2597
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2600
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 2605
    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    if-ltz p1, :cond_7

    if-eqz p2, :cond_5

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    const/16 p2, 0x3ea

    .line 2617
    invoke-static {p1, p2}, Landroid/os/storage/StorageManager;->getProjectIdForUser(II)J

    move-result-wide p1

    goto :goto_0

    .line 2623
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid quota type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 p2, 0x3e9

    .line 2614
    invoke-static {p1, p2}, Landroid/os/storage/StorageManager;->getProjectIdForUser(II)J

    move-result-wide p1

    goto :goto_0

    :cond_4
    const/16 p2, 0x3eb

    .line 2620
    invoke-static {p1, p2}, Landroid/os/storage/StorageManager;->getProjectIdForUser(II)J

    move-result-wide p1

    goto :goto_0

    :cond_5
    const/16 p2, 0x3e8

    .line 2611
    invoke-static {p1, p2}, Landroid/os/storage/StorageManager;->getProjectIdForUser(II)J

    move-result-wide p1

    .line 2625
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/os/storage/StorageManager;->setQuotaProjectId(Ljava/lang/String;J)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 2626
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2607
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public wipeAdoptableDisks()V
    .locals 6

    .line 1159
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v0

    .line 1160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1161
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1162
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v3

    const-string v4, "StorageManager"

    if-eqz v3, :cond_0

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found adoptable "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; wiping"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to wipe "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but soldiering onward"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1172
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignorning non-adoptable disk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method
