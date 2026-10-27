.class public Lcom/xiaopeng/xuiservice/utils/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageUtils"

.field private static final pidToPackageNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final pidToProcessNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/16 v0, 0x30

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/MaxSizeMap;->create(I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->pidToProcessNameMap:Ljava/util/Map;

    .line 28
    const/16 v0, 0x60

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/MaxSizeMap;->create(I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->pidToPackageNameMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 104
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v0, :cond_0

    .line 105
    const/4 v1, 0x1

    return v1

    .line 108
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    return v1
.end method

.method public static getAppStorage(Ljava/lang/String;)[J
    .locals 14
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 118
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "storagestats"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    .line 119
    .local v0, "storageStatsManager":Landroid/app/usage/StorageStatsManager;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    .line 121
    .local v1, "uuid":Ljava/util/UUID;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 123
    .local v2, "userHandle":Landroid/os/UserHandle;
    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {v0, v1, p0, v2}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .local v4, "storageStats":Landroid/app/usage/StorageStats;
    nop

    .line 126
    nop

    .line 129
    invoke-virtual {v4}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-virtual {v4}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 130
    .local v5, "appSizeL":J
    invoke-virtual {v4}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v7

    .line 131
    .local v7, "appBytes":J
    invoke-virtual {v4}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v9

    .line 132
    .local v9, "cacheBytes":J
    invoke-virtual {v4}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v11

    .line 133
    .local v11, "dataBytes":J
    new-array v3, v3, [J

    const/4 v13, 0x0

    aput-wide v7, v3, v13

    const/4 v13, 0x1

    aput-wide v9, v3, v13

    const/4 v13, 0x2

    aput-wide v11, v3, v13

    const/4 v13, 0x3

    aput-wide v5, v3, v13

    return-object v3

    .line 124
    .end local v4    # "storageStats":Landroid/app/usage/StorageStats;
    .end local v5    # "appSizeL":J
    .end local v7    # "appBytes":J
    .end local v9    # "cacheBytes":J
    .end local v11    # "dataBytes":J
    :catch_0
    move-exception v4

    .line 125
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    new-array v3, v3, [J

    fill-array-data v3, :array_0

    return-object v3

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static getMediaSource(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, "mediaIntent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "android.media.browse.MediaBrowserService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 142
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 145
    .local v2, "mediaServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 149
    .local v4, "defaultService":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 150
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 152
    :cond_1
    return-object v3

    .line 146
    .end local v4    # "defaultService":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v3
.end method

.method public static getPackageName(I)Ljava/lang/String;
    .locals 9
    .param p0, "pid"    # I

    .line 58
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->pidToPackageNameMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 60
    const-string v1, "PackageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##getPackageName from cache,pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-object v0

    .line 63
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 64
    .local v1, "context":Landroid/content/Context;
    const-string v2, "activity"

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 66
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 67
    .local v2, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    .line 68
    const/4 v3, 0x0

    return-object v3

    .line 71
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 72
    .local v4, "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p0, :cond_6

    .line 73
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-nez v3, :cond_2

    .line 74
    sget-object v3, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->pidToPackageNameMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v3

    .line 76
    :cond_2
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_3

    .line 78
    sget-object v3, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->pidToPackageNameMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v3, v3, v6

    return-object v3

    .line 81
    :cond_3
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v3

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, v3, v6

    .line 82
    .local v7, "pkg":Ljava/lang/String;
    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 83
    sget-object v3, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->pidToPackageNameMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object v7

    .line 81
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 87
    :cond_5
    sget-object v3, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->pidToPackageNameMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v3

    .line 91
    .end local v4    # "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6
    goto :goto_0

    .line 92
    :cond_7
    sget-object v3, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->pidToPackageNameMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "unKnown"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v3, "unKnown"

    return-object v3
.end method

.method public static getProcessNameByPid(I)Ljava/lang/String;
    .locals 11
    .param p0, "pid"    # I

    .line 31
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 32
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->pidToProcessNameMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    .local v1, "processName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 34
    return-object v1

    .line 36
    :cond_0
    const-string v1, ""

    .line 38
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 39
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 40
    .local v3, "processList":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 41
    .local v4, "iterator":Ljava/util/Iterator;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 42
    .local v5, "pm":Landroid/content/pm/PackageManager;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 45
    .local v6, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_0
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p0, :cond_1

    .line 46
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v7

    .line 47
    goto :goto_2

    .line 51
    :cond_1
    goto :goto_1

    .line 49
    :catch_0
    move-exception v7

    .line 50
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "PackageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getProcessName Error --> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v6    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 53
    :cond_2
    :goto_2
    sget-object v6, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->pidToProcessNameMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-object v1
.end method
