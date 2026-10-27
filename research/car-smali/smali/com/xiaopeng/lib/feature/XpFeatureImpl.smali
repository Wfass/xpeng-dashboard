.class final Lcom/xiaopeng/lib/feature/XpFeatureImpl;
.super Ljava/lang/Object;
.source "XpFeatureImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field static TAG:Ljava/lang/String; = null

.field private static final sDefault:Ljava/lang/String; = "defaultCarRegion"

.field private static sInstance:Lcom/xiaopeng/lib/feature/XpFeatureImpl; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final sProjectPath:Ljava/lang/String; = "/system/etc/xpfeature/"

.field private static final sProjectUpdateFile:Ljava/lang/String; = "/mnt/vendor/persist/etc/xpfeature/config.json"

.field private static final sSystem:Ljava/lang/String; = "system"

.field private static final sVersion:Ljava/lang/String; = "version"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLogLevel:I

.field private mModulePath:Ljava/lang/String;

.field private final mModuleSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mModuleVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegionTag:Ljava/lang/String;

.field private final mXpFeatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/feature/Feature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "XpFeature"

    sput-object v0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModuleVersionMap:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModuleSet:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mXpFeatureMap:Ljava/util/Map;

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mLogLevel:I

    .line 59
    new-instance v0, Lcom/xiaopeng/lib/feature/XpFeatureImpl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/feature/XpFeatureImpl$1;-><init>(Lcom/xiaopeng/lib/feature/XpFeatureImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/feature/XpFeatureImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModuleVersionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/feature/XpFeatureImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/feature/XpFeatureImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->readXpFeatureFile(Ljava/lang/String;)V

    return-void
.end method

.method private getApplicationByReflect()Landroid/app/Application;
    .locals 6

    .line 466
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 467
    .local v1, "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 468
    .local v2, "thread":Ljava/lang/Object;
    const-string v4, "getApplication"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 469
    .local v3, "app":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 472
    move-object v4, v3

    check-cast v4, Landroid/app/Application;

    return-object v4

    .line 470
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "u should init first"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .end local v1    # "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "thread":Ljava/lang/Object;
    .end local v3    # "app":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v2, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    const-string v3, "getApplicationByReflect: error!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    return-object v0
.end method

.method private varargs declared-synchronized getFeature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v0

    .line 222
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 225
    sget-object v1, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    const-string v2, "getFeature: mContext is null! need init by reflect!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->init(Landroid/content/Context;)V

    .end local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 223
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "used immediately after App#attachBaseContext and XpFeatureProvider, init first!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mXpFeatureMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/feature/Feature;

    .line 231
    .local v0, "feature":Lcom/xiaopeng/lib/feature/Feature;
    if-nez v0, :cond_2

    .line 232
    sget-object v1, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFeature: feature is null! key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 235
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/xiaopeng/lib/feature/Feature;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/xiaopeng/lib/feature/Feature;->getType()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_3

    .line 237
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->handleSpecialFeature(Lcom/xiaopeng/lib/feature/Feature;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 239
    :cond_3
    sget-object v2, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mLogLevel:I

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    sget-object v2, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFeature: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :cond_4
    monitor-exit p0

    return-object v1

    .line 219
    .end local v0    # "feature":Lcom/xiaopeng/lib/feature/Feature;
    .end local v1    # "result":Ljava/lang/String;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "params":[Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/feature/XpFeatureImpl;
    throw p1
.end method

.method static getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;
    .locals 2

    .line 75
    sget-object v0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->sInstance:Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    if-nez v0, :cond_1

    .line 76
    const-class v0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->sInstance:Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    invoke-direct {v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;-><init>()V

    sput-object v1, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->sInstance:Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    .line 80
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 82
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->sInstance:Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    return-object v0
.end method

.method private getModuleName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 398
    const/4 v0, 0x0

    .line 401
    .local v0, "module":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 403
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 405
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.xiaopeng.lib.lib_feature"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 409
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 407
    :catch_0
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_1
    return-object v0
.end method

.method private getModuleNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 417
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 418
    .local v0, "moduleSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 419
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 424
    goto :goto_0

    .line 422
    :catch_0
    move-exception v3

    .line 423
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getModuleNames: e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v1, :cond_3

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 427
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.xiaopeng.lib.lib_feature_modules"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "modules":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 431
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, "moduleArray":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 433
    .local v7, "s":Ljava/lang/String;
    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 434
    .local v8, "ss":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 435
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "ss":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 441
    .end local v4    # "moduleArray":[Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 439
    :catch_1
    move-exception v4

    .line 440
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getModuleNames: e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 445
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.xiaopeng.lib.lib_feature"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, "module":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 447
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, "ss":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 449
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 456
    .end local v4    # "module":Ljava/lang/String;
    .end local v5    # "ss":Ljava/lang/String;
    :cond_2
    goto :goto_3

    .line 454
    :catch_2
    move-exception v4

    .line 455
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getModuleNames: e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v3    # "modules":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_4
    return-object v0
.end method

.method private varargs handleSpecialFeature(Lcom/xiaopeng/lib/feature/Feature;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "feature"    # Lcom/xiaopeng/lib/feature/Feature;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 254
    invoke-virtual {p1}, Lcom/xiaopeng/lib/feature/Feature;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 262
    invoke-virtual {p1}, Lcom/xiaopeng/lib/feature/Feature;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 260
    :pswitch_0
    invoke-virtual {p1}, Lcom/xiaopeng/lib/feature/Feature;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/lib/feature/CommonCarConfig;->getInstance()Lcom/xiaopeng/lib/feature/CommonCarConfig;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/lib/feature/Feature;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/lib/feature/Feature;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/xiaopeng/lib/feature/CommonCarConfig;->getFeature(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private intModuleTag(Ljava/lang/String;)V
    .locals 3
    .param p1, "module"    # Ljava/lang/String;

    .line 481
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 483
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 485
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XpFeature_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public static synthetic lambda$GB33zkXqcov0gSfo23BMTV5KJLc(Lcom/xiaopeng/lib/feature/XpFeatureImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->readXpFeatureFile(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/lib/feature/XpFeatureImpl;Landroid/content/IntentFilter;)V
    .locals 2
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic lambda$loadConfig$1(Lcom/xiaopeng/lib/feature/XpFeatureImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sModule"    # Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModulePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized loadConfig()V
    .locals 3

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModuleSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/feature/-$$Lambda$XpFeatureImpl$Xs399IS6YXpVAavs4_5SltgvAMw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/feature/-$$Lambda$XpFeatureImpl$Xs399IS6YXpVAavs4_5SltgvAMw;-><init>(Lcom/xiaopeng/lib/feature/XpFeatureImpl;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/feature/-$$Lambda$XpFeatureImpl$GB33zkXqcov0gSfo23BMTV5KJLc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/feature/-$$Lambda$XpFeatureImpl$GB33zkXqcov0gSfo23BMTV5KJLc;-><init>(Lcom/xiaopeng/lib/feature/XpFeatureImpl;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 130
    const-string v0, "/mnt/vendor/persist/etc/xpfeature/config.json"

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->readXpFeatureFile(Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadConfig project modulePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModulePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; sXpFeatureMap.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mXpFeatureMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/feature/XpFeatureImpl;
    throw v0
.end method

.method private parseModuleConfig(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 9
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "configJson"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/feature/Feature;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 182
    .local v0, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/lib/feature/Feature;>;"
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 186
    :cond_0
    sget-object v1, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseModuleConfig:  moduleName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; configJson.len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 189
    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 190
    .local v2, "featureObj":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 191
    sget-object v3, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseModuleConfig: featureObj is null! i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " moduleName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    goto/16 :goto_1

    .line 194
    :cond_1
    const-string v3, "key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    sget-object v4, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseModuleConfig: key is empty! featureObj="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " moduleName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    goto :goto_1

    .line 199
    :cond_2
    new-instance v4, Lcom/xiaopeng/lib/feature/Feature;

    invoke-direct {v4, v3}, Lcom/xiaopeng/lib/feature/Feature;-><init>(Ljava/lang/String;)V

    .line 200
    .local v4, "feature":Lcom/xiaopeng/lib/feature/Feature;
    const-string v5, "meta"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 201
    .local v5, "meta":Lorg/json/JSONObject;
    invoke-virtual {v4, v5}, Lcom/xiaopeng/lib/feature/Feature;->setMetal(Lorg/json/JSONObject;)Z

    .line 202
    invoke-virtual {v4, v5}, Lcom/xiaopeng/lib/feature/Feature;->setMetal(Lorg/json/JSONObject;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 204
    sget-object v6, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseModuleMap: meta is null! featureObj="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " moduleName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_3
    const-string v6, "value"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lcom/xiaopeng/lib/feature/Feature;->setValue(Ljava/lang/String;)Lcom/xiaopeng/lib/feature/Feature;

    .line 209
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v2    # "featureObj":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "feature":Lcom/xiaopeng/lib/feature/Feature;
    .end local v5    # "meta":Lorg/json/JSONObject;
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_1

    .line 210
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseModuleMap: error! moduleName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 214
    .end local v1    # "i":I
    :cond_4
    return-object v0

    .line 183
    :cond_5
    :goto_2
    sget-object v1, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseModuleConfig: configJson is null! moduleName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-object v0
.end method

.method private declared-synchronized readXpFeatureFile(Ljava/lang/String;)V
    .locals 13
    .param p1, "filePath"    # Ljava/lang/String;

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readXpFeatureFile: file is not exist! file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/FileIOUtils;->readFile2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "fileString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    sget-object v1, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readXpFeatureFile: fileString is empty! file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 148
    :cond_1
    :try_start_2
    sget-object v1, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readXpFeatureFile: fileString.len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 151
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    .local v3, "moduleName":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModuleSet:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 154
    sget-object v4, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readXpFeatureFile: moduleName is not exist! moduleName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 158
    .local v4, "moduleJson":Lorg/json/JSONObject;
    if-nez v4, :cond_3

    .line 159
    sget-object v5, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readXpFeatureFile: moduleJson is null! moduleName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    goto :goto_0

    .line 162
    :cond_3
    const-string v5, "version"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 163
    .local v5, "newVer":J
    iget-object v7, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModuleVersionMap:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 164
    iget-object v7, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModuleVersionMap:Ljava/util/Map;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v7, v3, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 165
    .local v7, "oldVerLong":Ljava/lang/Long;
    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 166
    .local v8, "oldVer":J
    :goto_1
    cmp-long v10, v8, v5

    if-ltz v10, :cond_5

    .line 167
    sget-object v10, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "readXpFeatureFile: newVer is old! moduleName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; newVer="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "; oldVer="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    goto/16 :goto_0

    .line 171
    .end local v7    # "oldVerLong":Ljava/lang/Long;
    .end local v8    # "oldVer":J
    :cond_5
    iget-object v7, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModuleVersionMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v7, "config"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 173
    .local v7, "configJson":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mXpFeatureMap:Ljava/util/Map;

    invoke-direct {p0, v3, v7}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->parseModuleConfig(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    .end local v3    # "moduleName":Ljava/lang/String;
    .end local v4    # "moduleJson":Lorg/json/JSONObject;
    .end local v5    # "newVer":J
    .end local v7    # "configJson":Lorg/json/JSONArray;
    goto/16 :goto_0

    .line 177
    .end local v0    # "fileString":Ljava/lang/String;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    goto :goto_2

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v1, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readConfigInner: parse file error! filePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit p0

    return-void

    .line 135
    .end local p1    # "filePath":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/feature/XpFeatureImpl;
    throw p1
.end method


# virtual methods
.method public varargs getBooleanFeature(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getFeature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "val":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getIntFeature(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    .line 310
    .local v1, "intVal":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 311
    return v2

    .line 314
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 315
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    return v3
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public varargs getDoubleArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[D
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getStringArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "strArr":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 364
    const/4 v1, 0x0

    return-object v1

    .line 366
    :cond_0
    array-length v1, v0

    new-array v1, v1, [D

    .line 367
    .local v1, "result":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 369
    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    aput-wide v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    goto :goto_1

    .line 370
    :catch_0
    move-exception v3

    .line 371
    .local v3, "e":Ljava/lang/Exception;
    const-wide/16 v4, 0x0

    aput-wide v4, v1, v2

    .line 367
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public varargs getDoubleFeature(Ljava/lang/String;[Ljava/lang/Object;)D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 289
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getFeature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public varargs getFloatArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[F
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getStringArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "strArr":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 380
    const/4 v1, 0x0

    return-object v1

    .line 382
    :cond_0
    array-length v1, v0

    new-array v1, v1, [F

    .line 383
    .local v1, "result":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 385
    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    goto :goto_1

    .line 386
    :catch_0
    move-exception v3

    .line 387
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    aput v4, v1, v2

    .line 383
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public varargs getFloatFeature(Ljava/lang/String;[Ljava/lang/Object;)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getFeature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    return v2
.end method

.method public varargs getIntArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getStringArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "strArr":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 332
    const/4 v1, 0x0

    return-object v1

    .line 334
    :cond_0
    array-length v1, v0

    new-array v1, v1, [I

    .line 335
    .local v1, "result":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 337
    :try_start_0
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_1

    .line 338
    :catch_0
    move-exception v4

    .line 339
    .local v4, "e":Ljava/lang/Exception;
    aput v2, v1, v3

    .line 335
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method public varargs getIntFeature(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 270
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getFeature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    return v2
.end method

.method public varargs getLongArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 346
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getStringArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "strArr":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 348
    const/4 v1, 0x0

    return-object v1

    .line 350
    :cond_0
    array-length v1, v0

    new-array v1, v1, [J

    .line 351
    .local v1, "result":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 353
    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    goto :goto_1

    .line 354
    :catch_0
    move-exception v3

    .line 355
    .local v3, "e":Ljava/lang/Exception;
    const-wide/16 v4, 0x0

    aput-wide v4, v1, v2

    .line 351
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public varargs getLongFeature(Ljava/lang/String;[Ljava/lang/Object;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getFeature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public varargs getStringArrayFeature(Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 321
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getFeature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    const/4 v1, 0x0

    return-object v1

    .line 325
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs getStringFeature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getFeature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized init(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: already init! mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    .local v0, "start":J
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->intModuleTag(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModuleSet:Ljava/util/Set;

    const-string v3, "system"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v2, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModuleSet:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getModuleNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 97
    invoke-static {}, Landroid/car/XpCarFeatures;->getCarRegionName()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "regionName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/car/Car;->getHardwareCarType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mRegionTag:Ljava/lang/String;

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/etc/xpfeature/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mRegionTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib/feature/FileIOUtils;->isDir(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/etc/xpfeature/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mRegionTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModulePath:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_1
    const-string v3, "/system/etc/xpfeature/defaultCarRegion/"

    iput-object v3, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModulePath:Ljava/lang/String;

    .line 105
    :goto_0
    sget-object v3, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load config start. mRegionTag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mRegionTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; mModulePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModulePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; mModuleSet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModuleSet:Ljava/util/Set;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->loadConfig()V

    .line 107
    sget-object v3, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    sget-object v3, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read config end feature="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mXpFeatureMap:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.xiaopeng.intent.action.XUI_POWER_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v4, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/lib/feature/-$$Lambda$XpFeatureImpl$EYYXDYMsWKP4-OUqcw1xthYW4IY;

    invoke-direct {v5, p0, v3}, Lcom/xiaopeng/lib/feature/-$$Lambda$XpFeatureImpl$EYYXDYMsWKP4-OUqcw1xthYW4IY;-><init>(Lcom/xiaopeng/lib/feature/XpFeatureImpl;Landroid/content/IntentFilter;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 117
    .local v4, "end":J
    sub-long v6, v4, v0

    .line 118
    .local v6, "cost":J
    sget-object v8, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "load config end. cost="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "; mXpFeatureMap.size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mXpFeatureMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "; mModuleVersionMap="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mModuleVersionMap:Ljava/util/Map;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 85
    .end local v0    # "start":J
    .end local v2    # "regionName":Ljava/lang/String;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "end":J
    .end local v6    # "cost":J
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/feature/XpFeatureImpl;
    throw p1
.end method

.method setLogLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 122
    iput p1, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->mLogLevel:I

    .line 123
    return-void
.end method
