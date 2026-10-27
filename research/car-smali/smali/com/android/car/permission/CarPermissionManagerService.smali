.class public Lcom/android/car/permission/CarPermissionManagerService;
.super Ljava/lang/Object;
.source "CarPermissionManagerService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# static fields
.field private static final FILE_NAME_EXTENSION_JSON:Ljava/lang/String; = "json"

.field private static final FILE_NAME_EXTENSION_XML:Ljava/lang/String; = "xml"

.field private static final FILE_PERMISSION_APP:Ljava/lang/String; = "/system/etc/car/app/"

.field private static final FILE_PERMISSION_SYS:Ljava/lang/String; = "/system/etc/car/system/"

.field private static final FILE_PERMISSION_UID:Ljava/lang/String; = "/system/etc/car/uid/"

.field private static final FILE_WHITE_BLACK_LIST:Ljava/lang/String; = "/system/etc/car/list/white_black_list.json"

.field private static final FILE_WHITE_BLACK_XML_FILE:Ljava/lang/String; = "/system/etc/car/list/white_black_list.xml"

.field public static final PACKAGE_ROLE_ALLOWED:I = 0x1

.field public static final PACKAGE_ROLE_FORBIDDEN:I = 0x1

.field public static final PACKAGE_ROLE_NONE:I = 0x0

.field public static final PERMISSION_DENIED_APPID_INVALID:I = 0x3

.field public static final PERMISSION_DENIED_APPID_NULL:I = 0x2

.field public static final PERMISSION_DENIED_APPID_UNSUPPORTED:I = 0x4

.field public static final PERMISSION_DENIED_CONFIG_NULL:I = 0x5

.field public static final PERMISSION_DENIED_READ_OR_WRITE:I = 0x8

.field public static final PERMISSION_DENIED_UNKNOWN:I = 0x1

.field public static final PERMISSION_GRANTED:I = 0x0

.field public static final PERMISSION_REQ_READ:I = 0x1

.field public static final PERMISSION_REQ_READ_WRITE:I = 0x3

.field public static final PERMISSION_REQ_WRITE:I = 0x2

.field private static final PROP_CAR_PERMISSION_CHECK_DEBUG_APP_FLAG:Ljava/lang/String; = "persist.car.permission.check.debug.app.flag"

.field private static final PROP_CAR_PERMISSION_DEBUG_COST_NAME:Ljava/lang/String; = "persist.car.permission.debug.cost.name"

.field private static final PROP_CAR_PERMISSION_DEBUG_COST_TIME:Ljava/lang/String; = "persist.car.permission.debug.cost.time"

.field private static final PROP_CAR_PERMISSION_DEBUG_COST_TIME_DEFAULT:J = 0xaL

.field private static final PROP_CAR_PERMISSION_DEBUG_LOG_PKG:Ljava/lang/String; = "persist.car.permission.debug.log.pkg"

.field private static final PROP_CAR_PERMISSION_ENABLE:Ljava/lang/String; = "persist.car.permission.enable"

.field private static final PROP_CAR_PERMISSION_SECURITY_EXCEPTION:Ljava/lang/String; = "persist.car.permission.security.exception"

.field public static final SALT:Ljava/lang/String; = "xiapeng_carservice"

.field private static final TAG:Ljava/lang/String; = "CarPermissionManager"

.field private static final WHITE_BLACK_LIST_BLACK:I = 0x2

.field private static final WHITE_BLACK_LIST_NONE:I = 0x0

.field private static final WHITE_BLACK_LIST_WHITE:I = 0x1

.field private static final sCostLock:Ljava/lang/Object;

.field private static final sDataLock:Ljava/lang/Object;

.field private static final sDeniedLock:Ljava/lang/Object;


# instance fields
.field private final mCacheBindAppInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/permission/BindAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheBindPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheSignatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarPropertyService:Lcom/android/car/CarPropertyService;

.field private final mCarSignatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/permission/CarSignature;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckAppFlag:I

.field private mContext:Landroid/content/Context;

.field private final mCostPackageMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/permission/PropertyPermissionInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDebugLogPkgName:Ljava/lang/String;

.field private final mDeniedPackageMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/permission/PropertyPermissionInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsCarPermissionEnable:Z

.field private mIsDebugCostPropName:Ljava/lang/String;

.field private mIsDebugCostTime:J

.field private final mIsUser:Z

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private final mWhiteBlackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/car/permission/CarPermissionManagerService;->sDeniedLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/car/permission/CarPermissionManagerService;->sDataLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/car/permission/CarPermissionManagerService;->sCostLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCarSignatureMap:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mWhiteBlackMap:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCacheSignatureMap:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mDeniedPackageMaps:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCostPackageMaps:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCacheBindAppInfoMap:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCacheBindPackages:Ljava/util/Map;

    .line 117
    const-string v0, "CarPermissionManager"

    const-string v1, "CarPermissionManagerService: onCreate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    iput-boolean v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsUser:Z

    .line 119
    iput-object p1, p0, Lcom/android/car/permission/CarPermissionManagerService;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 121
    iput-object p2, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    .line 122
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "car-permission-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "workThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 124
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/car/permission/CarPermissionManagerService;->mWorkHandler:Landroid/os/Handler;

    .line 125
    invoke-virtual {p0}, Lcom/android/car/permission/CarPermissionManagerService;->initCarPermissionData()V

    .line 126
    return-void
.end method

.method private calcPackageNameAppId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sha1"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiapeng_carservice"

    invoke-static {v0, v1}, Lcom/android/car/utils/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkAllowed3rdAppId(Landroid/content/Context;IILjava/lang/String;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 717
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    const-string v0, "is not java process!"

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/car/permission/CarPermissionManagerService;->logW(IILjava/lang/String;Ljava/lang/String;)V

    .line 719
    const/4 v0, 0x1

    return v0

    .line 721
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/android/car/permission/CarPermissionManagerService;->getManifestAppId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, "apkAppId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    const-string v1, "appId is null!"

    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/car/permission/CarPermissionManagerService;->logW(IILjava/lang/String;Ljava/lang/String;)V

    .line 724
    const/4 v1, 0x2

    return v1

    .line 726
    :cond_1
    iget-object v1, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCarSignatureMap:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/permission/CarSignature;

    .line 727
    .local v1, "signature":Lcom/android/car/permission/CarSignature;
    if-nez v1, :cond_2

    .line 728
    const-string v2, " appId is not config!"

    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/car/permission/CarPermissionManagerService;->logW(IILjava/lang/String;Ljava/lang/String;)V

    .line 729
    const/4 v2, 0x5

    return v2

    .line 740
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/car/permission/CarSignature;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/car/permission/CarPermissionManagerService;->logDebug(IILjava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v2, v1, Lcom/android/car/permission/CarSignature;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/android/car/permission/CarSignature;->mAppId2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 742
    const-string v2, "appId is invalid!"

    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/car/permission/CarPermissionManagerService;->logW(IILjava/lang/String;Ljava/lang/String;)V

    .line 743
    const/4 v2, 0x3

    return v2

    .line 745
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private checkAllowedPropId(IILjava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "propName"    # Ljava/lang/String;
    .param p5, "access"    # I

    .line 750
    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCarSignatureMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/permission/CarSignature;

    .line 751
    .local v0, "signature":Lcom/android/car/permission/CarSignature;
    if-nez v0, :cond_0

    .line 752
    const-string v1, "appId is not config!"

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/car/permission/CarPermissionManagerService;->logW(IILjava/lang/String;Ljava/lang/String;)V

    .line 753
    const/4 v1, 0x5

    return v1

    .line 756
    :cond_0
    invoke-virtual {v0, p4, p5}, Lcom/android/car/permission/CarSignature;->checkPropAccess(Ljava/lang/String;I)Z

    move-result v1

    .line 757
    .local v1, "isGranted":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "propName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; access="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; grant="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/car/permission/CarPermissionManagerService;->logDebug(IILjava/lang/String;Ljava/lang/String;)V

    .line 758
    if-nez v1, :cond_1

    .line 759
    const/16 v2, 0x8

    return v2

    .line 761
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private checkAllowedUidGroup(IILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 778
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x417

    if-eq p1, v0, :cond_0

    const/16 v0, 0x411

    if-eq p1, v0, :cond_0

    .line 780
    const/4 v0, 0x0

    return v0

    .line 782
    :cond_0
    const-string v0, "is in target uid group."

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/permission/CarPermissionManagerService;->logDebug(IILjava/lang/String;Ljava/lang/String;)V

    .line 783
    const/4 v0, 0x1

    return v0
.end method

.method private checkSystemSignatures(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    .line 769
    .local v0, "res":I
    if-eqz v0, :cond_0

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "does not have the system signature! res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/car/permission/CarPermissionManagerService;->logDebug(IILjava/lang/String;Ljava/lang/String;)V

    .line 771
    const/4 v1, 0x0

    return v1

    .line 773
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private checkValidString(Ljava/lang/String;)Z
    .locals 4
    .param p1, "instanceName"    # Ljava/lang/String;

    .line 418
    if-eqz p1, :cond_4

    .line 419
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 420
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 421
    .local v2, "c":C
    const/16 v3, 0x61

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7a

    if-le v2, v3, :cond_3

    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_3

    :cond_1
    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_2
    const/16 v3, 0x5f

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3

    .line 424
    return v0

    .line 419
    .end local v2    # "c":C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private getAppFlag(Landroid/content/Context;IILjava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 671
    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCacheBindAppInfoMap:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/permission/BindAppInfo;

    .line 672
    .local v0, "info":Lcom/android/car/permission/BindAppInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/car/permission/BindAppInfo;->mAppFlag:I

    if-eqz v1, :cond_0

    .line 674
    iget v1, v0, Lcom/android/car/permission/BindAppInfo;->mAppFlag:I

    return v1

    .line 677
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/car/permission/CarPermissionManagerService;->checkAllowedUidGroup(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    const/4 v1, 0x1

    .local v1, "appFlag":I
    :goto_0
    goto :goto_1

    .line 679
    .end local v1    # "appFlag":I
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/permission/CarPermissionManagerService;->checkSystemSignatures(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 680
    const/4 v1, 0x2

    goto :goto_0

    .line 682
    :cond_2
    const/4 v1, 0x4

    .line 684
    .restart local v1    # "appFlag":I
    :goto_1
    if-eqz v0, :cond_3

    .line 686
    iput v1, v0, Lcom/android/car/permission/BindAppInfo;->mAppFlag:I

    .line 688
    :cond_3
    return v1
.end method

.method private getManifestAppId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 449
    const/4 v0, 0x0

    .line 452
    .local v0, "appId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 453
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 455
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.car.v1.apikey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 459
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getRoleType(Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method private getWhiteBlackType(IILjava/lang/String;)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mWhiteBlackMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 435
    .local v0, "w_or_b":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/car/permission/CarPermissionManagerService;->mWhiteBlackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    .line 438
    :cond_0
    if-nez v0, :cond_1

    .line 439
    const/4 v1, 0x0

    return v1

    .line 441
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private isBlackList(IILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 692
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/permission/CarPermissionManagerService;->getWhiteBlackType(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCheckCarPermission(IILjava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 702
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/permission/CarPermissionManagerService;->getWhiteBlackType(IILjava/lang/String;)I

    move-result v0

    .line 703
    .local v0, "w_or_b":I
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 704
    const-string v2, "black list force checked!"

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/car/permission/CarPermissionManagerService;->logDebug(IILjava/lang/String;Ljava/lang/String;)V

    .line 705
    return v1

    .line 706
    :cond_0
    if-ne v0, v1, :cond_1

    .line 708
    const-string v1, "white list only sys app granted!"

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/car/permission/CarPermissionManagerService;->logDebug(IILjava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v1, 0x0

    return v1

    .line 712
    :cond_1
    iget-boolean v1, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsCarPermissionEnable:Z

    return v1
.end method

.method private isWhiteList(IILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 696
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/permission/CarPermissionManagerService;->getWhiteBlackType(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$initCarPermissionData$0(Lcom/android/car/permission/CarPermissionManagerService;)V
    .locals 3

    .line 164
    const-string v0, "CarPermissionManager"

    const-string v1, "parsePermissionFiles: parse begin."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v0, Lcom/android/car/permission/CarPermissionManagerService;->sDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCarSignatureMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 171
    const-string v1, "/system/etc/car/app/"

    invoke-direct {p0, v1}, Lcom/android/car/permission/CarPermissionManagerService;->parsePermissionXmlFiles(Ljava/lang/String;)V

    .line 172
    const-string v1, "/system/etc/car/system/"

    invoke-direct {p0, v1}, Lcom/android/car/permission/CarPermissionManagerService;->parsePermissionXmlFiles(Ljava/lang/String;)V

    .line 173
    const-string v1, "/system/etc/car/uid/"

    invoke-direct {p0, v1}, Lcom/android/car/permission/CarPermissionManagerService;->parsePermissionXmlFiles(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/android/car/permission/CarPermissionManagerService;->mWhiteBlackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 177
    const-string v1, "/system/etc/car/list/white_black_list.xml"

    invoke-direct {p0, v1}, Lcom/android/car/permission/CarPermissionManagerService;->parseWhiteBlackListXmlFile(Ljava/lang/String;)V

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-boolean v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsUser:Z

    if-nez v0, :cond_0

    .line 180
    const-string v0, "CarPermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsePermissionFiles: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCarSignatureMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v0, "CarPermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseWhiteBlackListFiles: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/permission/CarPermissionManagerService;->mWhiteBlackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    const-string v0, "CarPermissionManager"

    const-string v1, "parsePermissionFiles: parse done."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 178
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private logDebug(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .line 791
    iget-boolean v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsUser:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mDebugLogPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mDebugLogPkgName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    const-string v0, "CarPermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    return-void
.end method

.method private logDebug(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "tr"    # Ljava/lang/Throwable;

    .line 797
    iget-boolean v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsUser:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mDebugLogPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mDebugLogPkgName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    const-string v0, "CarPermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    :cond_0
    return-void
.end method

.method private logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 803
    iget-boolean v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsUser:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mDebugLogPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mDebugLogPkgName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    const-string v0, "CarPermissionManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    return-void
.end method

.method private logW(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .line 787
    const-string v0, "CarPermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    return-void
.end method

.method private parsePermissionFiles(Ljava/lang/String;)V
    .locals 11
    .param p1, "filePath"    # Ljava/lang/String;

    .line 190
    invoke-static {p1}, Lcom/android/car/utils/FileUtils;->isDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const-string v0, "CarPermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsePermissionFiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 194
    :cond_0
    invoke-static {p1}, Lcom/android/car/utils/FileUtils;->listFilesInDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 195
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 197
    .local v2, "file":Ljava/io/File;
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lcom/android/car/utils/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "fileString":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/car/utils/FileUtils;->getFileNameNoExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "filePkgName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/car/utils/FileUtils;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "fileExtension":Ljava/lang/String;
    const-string v6, "json"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 201
    const-string v6, "CarPermissionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsePermissionFiles: file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    goto :goto_0

    .line 204
    :cond_1
    iget-boolean v6, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsUser:Z

    if-nez v6, :cond_2

    .line 205
    const-string v6, "CarPermissionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsePermissionFiles: filePkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", fileExtension="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 208
    .local v6, "permissionJson":Lorg/json/JSONObject;
    const-string v7, "packageName"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, "packageName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 213
    :cond_3
    iget-object v8, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCarSignatureMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 214
    const-string v8, "CarPermissionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parsePermissionFiles: Duplicate definition. files="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; packageName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    goto/16 :goto_0

    .line 217
    :cond_4
    iget-object v8, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCarSignatureMap:Ljava/util/Map;

    invoke-virtual {p0, v7, v6}, Lcom/android/car/permission/CarPermissionManagerService;->parseSignatureObject(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/android/car/permission/CarSignature;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .end local v3    # "fileString":Ljava/lang/String;
    .end local v4    # "filePkgName":Ljava/lang/String;
    .end local v5    # "fileExtension":Ljava/lang/String;
    .end local v6    # "permissionJson":Lorg/json/JSONObject;
    .end local v7    # "packageName":Ljava/lang/String;
    goto :goto_2

    .line 210
    .restart local v3    # "fileString":Ljava/lang/String;
    .restart local v4    # "filePkgName":Ljava/lang/String;
    .restart local v5    # "fileExtension":Ljava/lang/String;
    .restart local v6    # "permissionJson":Lorg/json/JSONObject;
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v8, "CarPermissionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parsePermissionFiles: packageName is invalid. fileName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; packageName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto/16 :goto_0

    .line 218
    .end local v3    # "fileString":Ljava/lang/String;
    .end local v4    # "filePkgName":Ljava/lang/String;
    .end local v5    # "fileExtension":Ljava/lang/String;
    .end local v6    # "permissionJson":Lorg/json/JSONObject;
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 219
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 221
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_2
    goto/16 :goto_0

    .line 222
    :cond_6
    return-void
.end method

.method private parsePermissionXmlFiles(Ljava/lang/String;)V
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;

    .line 226
    invoke-static {p1}, Lcom/android/car/utils/FileUtils;->isDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const-string v0, "CarPermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsePermissionXmlFiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 230
    :cond_0
    invoke-static {p1}, Lcom/android/car/utils/FileUtils;->listFilesInDir(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 231
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 233
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-static {v2}, Lcom/android/car/utils/FileUtils;->getFileNameNoExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "filePkgName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/car/utils/FileUtils;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "fileExtension":Ljava/lang/String;
    const-string v5, "xml"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 236
    const-string v5, "CarPermissionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parsePermissionXmlFiles: file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    goto :goto_0

    .line 239
    :cond_1
    iget-boolean v5, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsUser:Z

    if-nez v5, :cond_2

    .line 240
    const-string v5, "CarPermissionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parsePermissionXmlFiles: filePkgName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", fileExtension="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/car/permission/CarPermissionManagerService;->parsePermissionXmlFile(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v5

    .line 243
    .local v5, "permissionJson":Lorg/json/JSONObject;
    const-string v6, "packageName"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, "packageName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 248
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsePermissionXmlFiles: permissionJson:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/car/permission/CarPermissionManagerService;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v7, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCarSignatureMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 250
    const-string v7, "CarPermissionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsePermissionXmlFiles: Duplicate definition. files="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "; packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    goto/16 :goto_0

    .line 253
    :cond_4
    iget-object v7, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCarSignatureMap:Ljava/util/Map;

    invoke-virtual {p0, v6, v5}, Lcom/android/car/permission/CarPermissionManagerService;->parseSignatureObject(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/android/car/permission/CarSignature;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .end local v3    # "filePkgName":Ljava/lang/String;
    .end local v4    # "fileExtension":Ljava/lang/String;
    .end local v5    # "permissionJson":Lorg/json/JSONObject;
    .end local v6    # "packageName":Ljava/lang/String;
    goto :goto_2

    .line 245
    .restart local v3    # "filePkgName":Ljava/lang/String;
    .restart local v4    # "fileExtension":Ljava/lang/String;
    .restart local v5    # "permissionJson":Lorg/json/JSONObject;
    .restart local v6    # "packageName":Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v7, "CarPermissionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsePermissionXmlFiles: packageName is invalid. fileName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto/16 :goto_0

    .line 255
    .end local v3    # "filePkgName":Ljava/lang/String;
    .end local v4    # "fileExtension":Ljava/lang/String;
    .end local v5    # "permissionJson":Lorg/json/JSONObject;
    .end local v6    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 256
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto/16 :goto_0

    .line 259
    :cond_6
    return-void
.end method

.method private parseWhiteBlackListJsonFile(Ljava/lang/String;)V
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .line 342
    invoke-static {p1}, Lcom/android/car/utils/FileIOUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    const-string v0, "CarPermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseWhiteBlackListFiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 346
    :cond_0
    invoke-static {p1}, Lcom/android/car/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "fileExtension":Ljava/lang/String;
    const-string v1, "CarPermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsePermissionFiles: file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v1, "xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    return-void

    .line 351
    :cond_1
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Lcom/android/car/utils/FileIOUtils;->readFile2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "fileString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    const-string v2, "CarPermissionManager"

    const-string v3, "parseWhiteBlackListFiles: fileString is null."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void

    .line 356
    :cond_2
    iget-boolean v2, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsUser:Z

    if-nez v2, :cond_3

    .line 357
    const-string v2, "CarPermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseWhiteBlackListFiles: fileString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_3
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 361
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 362
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 363
    .local v5, "wbListJson":Lorg/json/JSONObject;
    const-string v6, "packageName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 364
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "w_or_b"

    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 365
    .local v7, "w_or_b":I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 366
    iget-object v8, p0, Lcom/android/car/permission/CarPermissionManagerService;->mWhiteBlackMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v5    # "wbListJson":Lorg/json/JSONObject;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "w_or_b":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 371
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_5
    goto :goto_1

    .line 369
    :catch_0
    move-exception v2

    .line 370
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 372
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private parseWhiteBlackListXmlFile(Ljava/lang/String;)V
    .locals 13
    .param p1, "fileName"    # Ljava/lang/String;

    .line 376
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 377
    .local v0, "pkgObject":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/android/car/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 378
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/android/car/utils/FileIOUtils;->isFileExists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    const-string v2, "CarPermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseWhiteBlackListFiles: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void

    .line 383
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 384
    .local v2, "confReader":Ljava/io/InputStreamReader;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 385
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 387
    const-string v4, "permissions"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 388
    const-string v4, "version"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "version":Ljava/lang/String;
    const-string v6, "version"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 392
    .local v6, "appArray":Lorg/json/JSONArray;
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 393
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 394
    .local v7, "entryName":Ljava/lang/String;
    const-string v8, "app"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 395
    nop

    .line 405
    .end local v7    # "entryName":Ljava/lang/String;
    const-string v5, "apps"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    .end local v2    # "confReader":Ljava/io/InputStreamReader;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "version":Ljava/lang/String;
    .end local v6    # "appArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 397
    .restart local v2    # "confReader":Ljava/io/InputStreamReader;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "version":Ljava/lang/String;
    .restart local v6    # "appArray":Lorg/json/JSONArray;
    .restart local v7    # "entryName":Ljava/lang/String;
    :cond_1
    const-string v8, "packageName"

    invoke-interface {v3, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 398
    .local v8, "packageName":Ljava/lang/String;
    const-string v9, "w_or_b"

    invoke-static {v3, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 399
    .local v9, "w_or_b":I
    iget-object v10, p0, Lcom/android/car/permission/CarPermissionManagerService;->mWhiteBlackMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 401
    .local v10, "propObject":Lorg/json/JSONObject;
    const-string v11, "w_or_b"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    const-string v11, "packageName"

    invoke-virtual {v10, v11, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v7    # "entryName":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "w_or_b":I
    .end local v10    # "propObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 406
    .end local v2    # "confReader":Ljava/io/InputStreamReader;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "version":Ljava/lang/String;
    .end local v6    # "appArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 407
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, "CarPermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseWhiteBlackListXmlFile: pkgObject="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method private saveCostPropInfo(JLjava/lang/String;ILjava/lang/String;I)V
    .locals 19
    .param p1, "costBegin"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "propId"    # I
    .param p5, "propName"    # Ljava/lang/String;
    .param p6, "access"    # I

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    .line 560
    iget-boolean v0, v1, Lcom/android/car/permission/CarPermissionManagerService;->mIsUser:Z

    if-nez v0, :cond_4

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 562
    .local v6, "costEnd":J
    sub-long v8, v6, v2

    .line 563
    .local v8, "cost":J
    sget-object v10, Lcom/android/car/permission/CarPermissionManagerService;->sCostLock:Ljava/lang/Object;

    monitor-enter v10

    .line 564
    :try_start_0
    iget-wide v11, v1, Lcom/android/car/permission/CarPermissionManagerService;->mIsDebugCostTime:J

    const-wide/16 v13, 0x5

    cmp-long v0, v11, v13

    if-ltz v0, :cond_2

    iget-wide v11, v1, Lcom/android/car/permission/CarPermissionManagerService;->mIsDebugCostTime:J

    cmp-long v0, v8, v11

    if-lez v0, :cond_2

    .line 566
    iget-object v0, v1, Lcom/android/car/permission/CarPermissionManagerService;->mCostPackageMaps:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 567
    .local v0, "propertyPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/car/permission/PropertyPermissionInfo;>;"
    if-nez v0, :cond_0

    .line 568
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v11

    .line 569
    iget-object v11, v1, Lcom/android/car/permission/CarPermissionManagerService;->mCostPackageMaps:Ljava/util/Map;

    invoke-interface {v11, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/car/permission/PropertyPermissionInfo;

    .line 573
    .local v11, "info":Lcom/android/car/permission/PropertyPermissionInfo;
    const-wide/16 v12, 0x1

    if-nez v11, :cond_1

    .line 574
    new-instance v14, Lcom/android/car/permission/PropertyPermissionInfo;

    invoke-direct {v14}, Lcom/android/car/permission/PropertyPermissionInfo;-><init>()V

    move-object v11, v14

    .line 575
    iput-object v4, v11, Lcom/android/car/permission/PropertyPermissionInfo;->mPackageName:Ljava/lang/String;

    .line 576
    move/from16 v14, p6

    iput v14, v11, Lcom/android/car/permission/PropertyPermissionInfo;->mAccess:I

    .line 577
    move/from16 v15, p4

    iput v15, v11, Lcom/android/car/permission/PropertyPermissionInfo;->mPropId:I

    .line 578
    iput-object v5, v11, Lcom/android/car/permission/PropertyPermissionInfo;->mPropName:Ljava/lang/String;

    .line 579
    iput-wide v8, v11, Lcom/android/car/permission/PropertyPermissionInfo;->mCost:J

    .line 580
    iput-wide v8, v11, Lcom/android/car/permission/PropertyPermissionInfo;->mCostAvg:J

    .line 581
    iput-wide v12, v11, Lcom/android/car/permission/PropertyPermissionInfo;->mCount:J

    goto :goto_0

    .line 583
    :cond_1
    move/from16 v15, p4

    move/from16 v14, p6

    iput-wide v8, v11, Lcom/android/car/permission/PropertyPermissionInfo;->mCost:J

    .line 584
    iget-wide v12, v11, Lcom/android/car/permission/PropertyPermissionInfo;->mCostAvg:J

    iget-wide v14, v11, Lcom/android/car/permission/PropertyPermissionInfo;->mCount:J

    mul-long/2addr v12, v14

    add-long/2addr v12, v8

    iget-wide v14, v11, Lcom/android/car/permission/PropertyPermissionInfo;->mCount:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    div-long/2addr v12, v14

    iput-wide v12, v11, Lcom/android/car/permission/PropertyPermissionInfo;->mCostAvg:J

    .line 585
    iget-wide v12, v11, Lcom/android/car/permission/PropertyPermissionInfo;->mCount:J

    add-long v12, v12, v16

    iput-wide v12, v11, Lcom/android/car/permission/PropertyPermissionInfo;->mCount:J

    .line 587
    :goto_0
    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v12, "CarPermissionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saveCostPropInfo: check cost time info: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v0    # "propertyPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/car/permission/PropertyPermissionInfo;>;"
    .end local v11    # "info":Lcom/android/car/permission/PropertyPermissionInfo;
    goto :goto_1

    .line 590
    :cond_2
    iget-object v0, v1, Lcom/android/car/permission/CarPermissionManagerService;->mIsDebugCostPropName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 591
    const-string v0, "CarPermissionManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveCostPropInfo: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " check cost time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_3
    :goto_1
    monitor-exit v10

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 596
    .end local v6    # "costEnd":J
    .end local v8    # "cost":J
    :cond_4
    :goto_2
    return-void
.end method

.method private saveDeniedPropInfo(JLjava/lang/String;ILjava/lang/String;I)V
    .locals 7
    .param p1, "costBegin"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "propId"    # I
    .param p5, "propName"    # Ljava/lang/String;
    .param p6, "access"    # I

    .line 531
    iget-boolean v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsUser:Z

    if-nez v0, :cond_3

    .line 532
    sget-object v0, Lcom/android/car/permission/CarPermissionManagerService;->sDeniedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/android/car/permission/CarPermissionManagerService;->mDeniedPackageMaps:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 534
    .local v1, "propertyPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/car/permission/PropertyPermissionInfo;>;"
    if-nez v1, :cond_0

    .line 535
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v2

    .line 536
    iget-object v2, p0, Lcom/android/car/permission/CarPermissionManagerService;->mDeniedPackageMaps:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_0
    invoke-interface {v1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/permission/PropertyPermissionInfo;

    .line 540
    .local v2, "info":Lcom/android/car/permission/PropertyPermissionInfo;
    if-nez v2, :cond_1

    .line 541
    new-instance v3, Lcom/android/car/permission/PropertyPermissionInfo;

    invoke-direct {v3}, Lcom/android/car/permission/PropertyPermissionInfo;-><init>()V

    move-object v2, v3

    .line 542
    iput-object p3, v2, Lcom/android/car/permission/PropertyPermissionInfo;->mPackageName:Ljava/lang/String;

    .line 543
    iput p6, v2, Lcom/android/car/permission/PropertyPermissionInfo;->mAccess:I

    .line 544
    iput p4, v2, Lcom/android/car/permission/PropertyPermissionInfo;->mPropId:I

    .line 545
    iput-object p5, v2, Lcom/android/car/permission/PropertyPermissionInfo;->mPropName:Ljava/lang/String;

    .line 546
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/android/car/permission/PropertyPermissionInfo;->mCount:J

    .line 547
    invoke-interface {v1, p5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 549
    :cond_1
    iget-wide v3, v2, Lcom/android/car/permission/PropertyPermissionInfo;->mCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/car/permission/PropertyPermissionInfo;->mCount:J

    .line 550
    iget v3, v2, Lcom/android/car/permission/PropertyPermissionInfo;->mAccess:I

    or-int/2addr v3, p6

    iput v3, v2, Lcom/android/car/permission/PropertyPermissionInfo;->mAccess:I

    .line 552
    :goto_0
    iget-object v3, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsDebugCostPropName:Ljava/lang/String;

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 553
    const-string v3, "CarPermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveDeniedPropInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    .end local v1    # "propertyPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/car/permission/PropertyPermissionInfo;>;"
    .end local v2    # "info":Lcom/android/car/permission/PropertyPermissionInfo;
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 557
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public checkCarPermission(Landroid/content/Context;II)Z
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "propId"    # I
    .param p3, "access"    # I

    .line 480
    move-object/from16 v8, p0

    iget-boolean v0, v8, Lcom/android/car/permission/CarPermissionManagerService;->mIsCarPermissionEnable:Z

    const/4 v9, 0x1

    if-nez v0, :cond_0

    .line 482
    return v9

    .line 484
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 485
    .local v10, "costBegin":J
    invoke-static/range {p2 .. p2}, Landroid/car/XpDebugLog;->getPropertyName(I)Ljava/lang/String;

    move-result-object v12

    .line 486
    .local v12, "propName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 487
    .local v13, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 489
    .local v14, "pid":I
    move-object/from16 v15, p1

    invoke-static {v15, v14, v13}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v16

    .line 490
    .local v16, "packageName":Ljava/lang/String;
    move-object v0, v8

    move-object v1, v15

    move v2, v13

    move v3, v14

    move-object/from16 v4, v16

    move/from16 v5, p2

    move-object v6, v12

    move/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/car/permission/CarPermissionManagerService;->getCarPermission(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;I)I

    move-result v7

    .line 492
    .local v7, "ret":I
    move-wide v1, v10

    move-object/from16 v3, v16

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/car/permission/CarPermissionManagerService;->saveCostPropInfo(JLjava/lang/String;ILjava/lang/String;I)V

    .line 493
    if-eqz v7, :cond_3

    .line 495
    move-object v0, v8

    move-wide v1, v10

    move-object/from16 v3, v16

    move/from16 v4, p2

    move-object v5, v12

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/car/permission/CarPermissionManagerService;->saveDeniedPropInfo(JLjava/lang/String;ILjava/lang/String;I)V

    .line 497
    const/16 v0, 0x8

    if-eq v7, v0, :cond_1

    packed-switch v7, :pswitch_data_0

    .line 515
    const-string v0, "PERMISSION_DENIED_UNKNOWN"

    goto :goto_0

    .line 508
    :pswitch_0
    const-string v0, "PERMISSION_DENIED_CONFIG_NULL"

    .line 509
    .local v0, "msg":Ljava/lang/String;
    goto :goto_0

    .line 505
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1
    const-string v0, "PERMISSION_DENIED_APPID_UNSUPPORTED"

    .line 506
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 502
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_2
    const-string v0, "PERMISSION_DENIED_APPID_INVALID"

    .line 503
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 499
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_3
    const-string v0, "PERMISSION_DENIED_APPID_NULL"

    .line 500
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 511
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const-string v0, "PERMISSION_DENIED_READ_OR_WRITE"

    .line 512
    .restart local v0    # "msg":Ljava/lang/String;
    nop

    .line 515
    :goto_0
    nop

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " CarPermissionManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Landroid/car/XpDebugLog;->getPropertyName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hasn\'t grated by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, "errMsg":Ljava/lang/String;
    const-string v2, "persist.car.permission.security.exception"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 522
    const-string v2, "CarPermissionManager"

    const-string v4, "CarPermissionManager has not grated! "

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    return v3

    .line 520
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CarPermissionManager has not grated! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 527
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "errMsg":Ljava/lang/String;
    :cond_3
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 141
    return-void
.end method

.method public dumpCostPropInfo()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCostPackageMaps:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpDeniedPropInfo()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mDeniedPackageMaps:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheSignatureMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCacheSignatureMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCarPermission(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;I)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "propId"    # I
    .param p6, "propName"    # Ljava/lang/String;
    .param p7, "access"    # I

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check permission propName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/car/permission/CarPermissionManagerService;->logDebug(IILjava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 611
    return v1

    .line 614
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/permission/CarPermissionManagerService;->getAppFlag(Landroid/content/Context;IILjava/lang/String;)I

    move-result v0

    .line 615
    .local v0, "appFlag":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/car/permission/CarPermissionManagerService;->logDebug(IILjava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-direct {p0, p2, p3, p4}, Lcom/android/car/permission/CarPermissionManagerService;->isWhiteList(IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 622
    const-string v2, "white list app granted directly!"

    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/car/permission/CarPermissionManagerService;->logDebug(IILjava/lang/String;Ljava/lang/String;)V

    .line 623
    return v1

    .line 628
    :cond_1
    iget v2, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCheckAppFlag:I

    and-int/2addr v2, v0

    if-nez v2, :cond_2

    .line 629
    invoke-direct {p0, p2, p3, p4}, Lcom/android/car/permission/CarPermissionManagerService;->isBlackList(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 631
    const-string v2, "black list force checked!"

    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/car/permission/CarPermissionManagerService;->logDebug(IILjava/lang/String;Ljava/lang/String;)V

    .line 632
    return v1

    .line 637
    :cond_2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 638
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "propId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has empty propName."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/car/permission/CarPermissionManagerService;->logDebug(IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 639
    const/4 v1, 0x5

    return v1

    .line 643
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 645
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/permission/CarPermissionManagerService;->checkAllowed3rdAppId(Landroid/content/Context;IILjava/lang/String;)I

    move-result v1

    .line 646
    .local v1, "ret":I
    if-eqz v1, :cond_4

    .line 648
    return v1

    .line 654
    .end local v1    # "ret":I
    :cond_4
    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/car/permission/CarPermissionManagerService;->checkAllowedPropId(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getCarSignatureMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/permission/CarSignature;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCarSignatureMap:Ljava/util/Map;

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 131
    return-void
.end method

.method public initCarPermissionData()V
    .locals 4

    .line 153
    const-string v0, "persist.car.permission.debug.log.pkg"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mDebugLogPkgName:Ljava/lang/String;

    .line 154
    const-string v0, "persist.car.permission.debug.cost.name"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsDebugCostPropName:Ljava/lang/String;

    .line 155
    const-string v0, "persist.car.permission.debug.cost.time"

    const-wide/16 v1, 0xa

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsDebugCostTime:J

    .line 156
    const-string v0, "persist.car.permission.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsCarPermissionEnable:Z

    .line 157
    const-string v0, "persist.car.permission.check.debug.app.flag"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCheckAppFlag:I

    .line 158
    const-string v0, "CarPermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCarPermissionData: mIsCarPermissionEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsCarPermissionEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v0, "CarPermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCarPermissionData: mCheckAppFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCheckAppFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v0, "CarPermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCarPermissionData: mIsDebugCostTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsDebugCostTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v0, "CarPermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCarPermissionData: mDebugLogPkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/permission/CarPermissionManagerService;->mDebugLogPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-boolean v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsCarPermissionEnable:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/permission/-$$Lambda$CarPermissionManagerService$-3g3YECwVnfJD8SXSUhISA2q5Vw;

    invoke-direct {v1, p0}, Lcom/android/car/permission/-$$Lambda$CarPermissionManagerService$-3g3YECwVnfJD8SXSUhISA2q5Vw;-><init>(Lcom/android/car/permission/CarPermissionManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    :cond_0
    return-void
.end method

.method public parsePermissionXmlFile(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 16
    .param p1, "file"    # Ljava/io/File;

    .line 262
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 264
    .local v1, "pkgObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p1

    :try_start_1
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 265
    .local v0, "confReader":Ljava/io/InputStreamReader;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 266
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 268
    const-string v4, "permissions"

    invoke-static {v2, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 269
    const-string v4, "appId"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "appId":Ljava/lang/String;
    const-string v6, "appId2"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "appId2":Ljava/lang/String;
    const-string v7, "packageName"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, "packageName":Ljava/lang/String;
    const-string v8, "version"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 273
    .local v8, "version":Ljava/lang/String;
    const-string v9, "appId"

    invoke-virtual {v1, v9, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v9, "appId2"

    invoke-virtual {v1, v9, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v9, "packageName"

    invoke-virtual {v1, v9, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v9, "version"

    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 279
    .local v9, "propArray":Lorg/json/JSONArray;
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 280
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 281
    .local v10, "entryName":Ljava/lang/String;
    const-string v11, "prop"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 282
    nop

    .line 293
    .end local v10    # "entryName":Ljava/lang/String;
    const-string v5, "property"

    invoke-virtual {v1, v5, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    .end local v0    # "confReader":Ljava/io/InputStreamReader;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "appId":Ljava/lang/String;
    .end local v6    # "appId2":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "propArray":Lorg/json/JSONArray;
    goto :goto_2

    .line 284
    .restart local v0    # "confReader":Ljava/io/InputStreamReader;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "appId":Ljava/lang/String;
    .restart local v6    # "appId2":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "version":Ljava/lang/String;
    .restart local v9    # "propArray":Lorg/json/JSONArray;
    .restart local v10    # "entryName":Ljava/lang/String;
    :cond_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 285
    .local v11, "propObject":Lorg/json/JSONObject;
    const-string v12, "name"

    invoke-interface {v2, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 286
    .local v12, "name":Ljava/lang/String;
    const-string v13, "des"

    invoke-interface {v2, v5, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 287
    .local v13, "des":Ljava/lang/String;
    const-string v14, "access"

    invoke-interface {v2, v5, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 288
    .local v14, "access":Ljava/lang/String;
    const-string v15, "name"

    invoke-virtual {v11, v15, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v15, "des"

    invoke-virtual {v11, v15, v13}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v15, "access"

    invoke-virtual {v11, v15, v14}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    .end local v10    # "entryName":Ljava/lang/String;
    .end local v11    # "propObject":Lorg/json/JSONObject;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "des":Ljava/lang/String;
    .end local v14    # "access":Ljava/lang/String;
    goto :goto_0

    .line 294
    .end local v0    # "confReader":Ljava/io/InputStreamReader;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "appId":Ljava/lang/String;
    .end local v6    # "appId2":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "propArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v1
.end method

.method public parseSignatureObject(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/android/car/permission/CarSignature;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionJson"    # Lorg/json/JSONObject;

    .line 301
    new-instance v0, Lcom/android/car/permission/CarSignature;

    invoke-direct {v0}, Lcom/android/car/permission/CarSignature;-><init>()V

    .line 302
    .local v0, "signature":Lcom/android/car/permission/CarSignature;
    iput-object p1, v0, Lcom/android/car/permission/CarSignature;->mPackageName:Ljava/lang/String;

    .line 304
    const-string v1, "name"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/car/permission/CarSignature;->mName:Ljava/lang/String;

    .line 305
    const-string v1, "version"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/car/permission/CarSignature;->mVersion:I

    .line 306
    const-string v1, "appId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/car/permission/CarSignature;->mAppId:Ljava/lang/String;

    .line 307
    const-string v1, "appId2"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/car/permission/CarSignature;->mAppId2:Ljava/lang/String;

    .line 308
    iget-boolean v1, p0, Lcom/android/car/permission/CarPermissionManagerService;->mIsUser:Z

    if-nez v1, :cond_0

    .line 309
    const-string v1, "sha1"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/car/permission/CarSignature;->mSha1:Ljava/lang/String;

    .line 310
    const-string v1, "sha12"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/car/permission/CarSignature;->mSha12:Ljava/lang/String;

    .line 311
    const-string v1, "encode"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/car/permission/CarSignature;->mEncode:Ljava/lang/String;

    .line 312
    const-string v1, "debug"

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/car/permission/CarSignature;->mDebug:I

    .line 315
    :cond_0
    :try_start_0
    const-string v1, "property"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 316
    .local v1, "propAccessArray":Lorg/json/JSONArray;
    nop

    .local v2, "j":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 317
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 318
    .local v3, "propAccessObject":Lorg/json/JSONObject;
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "propName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    const-string v5, "CarPermissionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseSignatureObject: parse empty propName. files=x; packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    goto :goto_1

    .line 323
    :cond_1
    new-instance v5, Lcom/android/car/permission/CarSignature$PropAccess;

    invoke-direct {v5}, Lcom/android/car/permission/CarSignature$PropAccess;-><init>()V

    .line 324
    .local v5, "propAccess":Lcom/android/car/permission/CarSignature$PropAccess;
    iput-object v4, v5, Lcom/android/car/permission/CarSignature$PropAccess;->mName:Ljava/lang/String;

    .line 326
    const-string v6, "access"

    const-string v7, "r"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, "access":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/car/permission/CarSignature;->getAccessType(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/android/car/permission/CarSignature$PropAccess;->mAccess:I

    .line 329
    const-string v7, "granted"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/android/car/permission/CarSignature$PropAccess;->mGranted:I

    .line 330
    iget-object v7, v0, Lcom/android/car/permission/CarSignature;->mPropAccessMap:Ljava/util/Map;

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .end local v3    # "propAccessObject":Lorg/json/JSONObject;
    .end local v4    # "propName":Ljava/lang/String;
    .end local v5    # "propAccess":Lcom/android/car/permission/CarSignature$PropAccess;
    .end local v6    # "access":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .end local v1    # "propAccessArray":Lorg/json/JSONArray;
    .end local v2    # "j":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    nop

    .line 337
    return-object v0

    .line 334
    :goto_2
    throw v1
.end method

.method public release()V
    .locals 0

    .line 136
    return-void
.end method

.method public removeBindAppInfo(IILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCacheBindAppInfoMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/permission/BindAppInfo;

    .line 664
    .local v0, "info":Lcom/android/car/permission/BindAppInfo;
    if-eqz v0, :cond_0

    .line 665
    iget-object v1, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCacheBindPackages:Ljava/util/Map;

    iget v2, v0, Lcom/android/car/permission/BindAppInfo;->mPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :cond_0
    return-void
.end method

.method public saveBindAppInfo(IILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 658
    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCacheBindAppInfoMap:Ljava/util/Map;

    new-instance v1, Lcom/android/car/permission/BindAppInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/car/permission/BindAppInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iget-object v0, p0, Lcom/android/car/permission/CarPermissionManagerService;->mCacheBindPackages:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    return-void
.end method
