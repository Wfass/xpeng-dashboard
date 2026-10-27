.class public Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;
.super Lcom/xiaopeng/xuimanager/pipebus/server/PipeBusManager;
.source "SysWrapperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "sysWrapper"

.field private static final TAG:Ljava/lang/String; = "SysWrapperManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/server/PipeBusManager;-><init>()V

    return-void
.end method

.method private clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .line 156
    const-string v0, "SysWrapperManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearApplicationUserData enter,packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 159
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v1

    .line 160
    .local v1, "success":Z
    const-string v2, "SysWrapperManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearApplicationUserData leave,success = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, -0x64

    :goto_0
    return v2
.end method

.method private deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .line 165
    const-string v0, "SysWrapperManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteApplicationCacheFiles enter,packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 167
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 168
    const-string v0, "SysWrapperManager"

    const-string v1, "deleteApplicationCacheFiles leave"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;
    .locals 1

    .line 36
    invoke-static {}, Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager$SingletonHolder;->access$000()Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;

    move-result-object v0

    return-object v0
.end method

.method private getStorageStats(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;
    .locals 7
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 142
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "storagestats"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    .line 143
    .local v0, "storageStatsManager":Landroid/app/usage/StorageStatsManager;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    .line 145
    .local v1, "uuid":Ljava/util/UUID;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 147
    .local v2, "userHandle":Landroid/os/UserHandle;
    :try_start_0
    invoke-virtual {v0, v1, p2, v2}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .local v3, "storageStats":Landroid/app/usage/StorageStats;
    return-object v3

    .line 149
    .end local v3    # "storageStats":Landroid/app/usage/StorageStats;
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SysWrapperManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to query stats for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v4, 0x0

    return-object v4
.end method

.method private handleIoControlWithParcelable(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;II)I
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "dataIn"    # Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    .param p3, "dataOut"    # Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    .param p4, "uid"    # I
    .param p5, "pid"    # I

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "ret":I
    const-string v1, "SysWrapperManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIoControlWithParcelable cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",uid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0xaeb58c4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_3

    const v2, 0x895fe46

    if-eq v1, v2, :cond_2

    const v2, 0x1a079e94

    if-eq v1, v2, :cond_1

    const v2, 0x3100560d

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "sysWrapper.getAppUsageStorage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_1
    const-string v1, "sysWrapper.deleteAppCache"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const-string v1, "sysWrapper.clearAppData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const-string v1, "sysWrapper.queryStatsForPackage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 123
    :pswitch_0
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    .line 124
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 125
    .local v2, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 126
    nop

    .line 127
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v3

    aget-object v3, v3, v4

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "listener"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 126
    invoke-static {v3}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 129
    :cond_5
    const-string v3, "SysWrapperManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_SYS_WRAPPER_DELETE_APP_CACHE packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",observer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 132
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "observer":Landroid/content/pm/IPackageDataObserver;
    goto/16 :goto_4

    .line 112
    :pswitch_1
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    .line 113
    .restart local v1    # "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 114
    .restart local v2    # "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 115
    nop

    .line 116
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v3

    aget-object v3, v3, v4

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "listener"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 115
    invoke-static {v3}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 118
    :cond_6
    const-string v3, "SysWrapperManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_SYS_WRAPPER_CLEAR_APP_DATA packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",observer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)I

    move-result v0

    .line 121
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "observer":Landroid/content/pm/IPackageDataObserver;
    goto :goto_4

    .line 103
    :pswitch_2
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    .line 104
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getAppStorage(Ljava/lang/String;)[J

    move-result-object v2

    .line 105
    .local v2, "dataSize":[J
    if-nez v2, :cond_7

    .line 106
    const/16 v0, -0xa

    goto :goto_2

    .line 108
    :cond_7
    invoke-virtual {p3, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setLongArray([J)V

    .line 110
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "dataSize":[J
    :goto_2
    goto :goto_4

    .line 91
    :pswitch_3
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "params":[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 93
    .local v2, "uuid":Ljava/util/UUID;
    aget-object v5, v1, v3

    .line 94
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v6

    aget-object v6, v6, v4

    check-cast v6, Landroid/os/UserHandle;

    .line 95
    .local v6, "user":Landroid/os/UserHandle;
    invoke-direct {p0, v2, v5, v6}, Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;->getStorageStats(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v7

    .line 96
    .local v7, "storageStats":Landroid/app/usage/StorageStats;
    if-eqz v7, :cond_8

    .line 97
    new-array v3, v3, [Landroid/os/Parcelable;

    aput-object v7, v3, v4

    invoke-virtual {p3, v3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    goto :goto_3

    .line 99
    :cond_8
    const/16 v0, -0xa

    .line 101
    .end local v1    # "params":[Ljava/lang/String;
    .end local v2    # "uuid":Ljava/util/UUID;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "user":Landroid/os/UserHandle;
    .end local v7    # "storageStats":Landroid/app/usage/StorageStats;
    :goto_3
    nop

    .line 137
    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 66
    const-string v0, "SysWrapperManager dump:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "sysWrapper"

    return-object v0
.end method

.method public init()I
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public ioControlWithParcelable(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;II)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "dataIn"    # Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    .param p3, "dataOut"    # Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    .param p4, "uid"    # I
    .param p5, "pid"    # I

    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xuiservice/syswarpper/SysWrapperManager;->handleIoControlWithParcelable(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;II)I

    move-result v0

    return v0
.end method

.method public ioControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "pid"    # I

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public onClientDied(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 72
    return-void
.end method

.method public registerListener(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 77
    return-void
.end method

.method public unRegisterListener(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 82
    return-void
.end method
