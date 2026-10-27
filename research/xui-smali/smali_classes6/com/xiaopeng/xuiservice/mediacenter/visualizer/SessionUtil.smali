.class public Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SessionUtil;
.super Ljava/lang/Object;
.source "SessionUtil.java"


# static fields
.field private static final mSortComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/xiaopeng/audio/xpAudioSessionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SessionUtil$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SessionUtil$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SessionUtil;->mSortComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkVisualizerEnable(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 79
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v0

    .line 81
    .local v0, "info":Lcom/xiaopeng/app/xpPackageInfo;
    if-eqz v0, :cond_0

    .line 82
    iget v1, v0, Lcom/xiaopeng/app/xpPackageInfo;->enableVisualizer:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 83
    const/4 v1, 0x0

    return v1

    .line 88
    .end local v0    # "info":Lcom/xiaopeng/app/xpPackageInfo;
    :cond_0
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getRestoreSession(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/audio/xpAudioSessionInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/audio/xpAudioSessionInfo;",
            ">;"
        }
    .end annotation

    .line 46
    .local p0, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/audio/xpAudioSessionInfo;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 47
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/audio/xpAudioSessionInfo;>;"
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/audio/xpAudioSessionInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/audio/xpAudioSessionInfo;

    .line 51
    .local v2, "info":Lcom/xiaopeng/audio/xpAudioSessionInfo;
    const-string v3, "SessionUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRestoreSession info pkgName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " &sessionId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getSessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v2}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "splitArray":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->setPackageName(Ljava/lang/String;)V

    .line 56
    .end local v3    # "splitArray":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SessionUtil;->checkVisualizerEnable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SessionUtil;->isDisplayMatch(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 57
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 59
    .end local v2    # "info":Lcom/xiaopeng/audio/xpAudioSessionInfo;
    :cond_2
    goto :goto_0

    .line 60
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 61
    sget-object v2, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SessionUtil;->mSortComparator:Ljava/util/Comparator;

    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 64
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/audio/xpAudioSessionInfo;>;"
    :cond_4
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    return-object v0
.end method

.method public static getRestoreSessionList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/audio/xpAudioSessionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 24
    .local p0, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/audio/xpAudioSessionInfo;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 25
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 27
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/audio/xpAudioSessionInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/audio/xpAudioSessionInfo;

    .line 29
    .local v2, "info":Lcom/xiaopeng/audio/xpAudioSessionInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SessionUtil;->checkVisualizerEnable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 32
    .end local v2    # "info":Lcom/xiaopeng/audio/xpAudioSessionInfo;
    :cond_0
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 34
    sget-object v2, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SessionUtil;->mSortComparator:Ljava/util/Comparator;

    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 36
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 37
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/audio/xpAudioSessionInfo;

    .line 38
    .local v3, "xpAudioSessionInfo":Lcom/xiaopeng/audio/xpAudioSessionInfo;
    invoke-virtual {v3}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getSessionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .end local v3    # "xpAudioSessionInfo":Lcom/xiaopeng/audio/xpAudioSessionInfo;
    goto :goto_1

    .line 42
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/audio/xpAudioSessionInfo;>;"
    :cond_3
    return-object v0
.end method

.method private static isDisplayMatch(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "displayId"    # I

    .line 69
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->hasSharedDisplayFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->getSharedId(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
