.class public Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;
.super Ljava/lang/Object;
.source "ModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;,
        Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$SystemModeSettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_MODE_CHANGE_SETTINGS:Ljava/lang/String; = "setting_switch"

.field private static final TAG:Ljava/lang/String; = "ModeManager"

.field private static mInstance:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mModeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mModeSettingsObserver:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$SystemModeSettingsObserver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mModeChangedListeners:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mCurrentMode:I

    .line 29
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->getSystemMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->notifyModeChange()V

    return-void
.end method

.method private dealModeChage(II)V
    .locals 3
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I

    .line 101
    const-string v0, "ModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealModeChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->notifyListener(I)V

    .line 103
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;
    .locals 2

    .line 33
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;

    return-object v0
.end method

.method private getSystemMode()I
    .locals 3

    .line 115
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "setting_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, "systemMode":I
    return v0
.end method

.method private notifyListener(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;

    .line 70
    .local v1, "listener":Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;->onModeChanged(I)V

    .line 71
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;
    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method private notifyModeChange()V
    .locals 4

    .line 106
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->getSystemMode()I

    move-result v0

    .line 107
    .local v0, "newMode":I
    const-string v1, "ModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyModeChange - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mCurrentMode:I

    if-eq v0, v1, :cond_0

    .line 109
    iget v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mCurrentMode:I

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->dealModeChage(II)V

    .line 110
    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mCurrentMode:I

    .line 112
    :cond_0
    return-void
.end method

.method private observerSystemMode()V
    .locals 2

    .line 75
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$SystemModeSettingsObserver;

    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$SystemModeSettingsObserver;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mModeSettingsObserver:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$SystemModeSettingsObserver;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mModeSettingsObserver:Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$SystemModeSettingsObserver;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$SystemModeSettingsObserver;->register(Landroid/content/Context;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getCurrentMode()I
    .locals 3

    .line 48
    const-string v0, "ModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentMode value--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mCurrentMode:I

    return v0
.end method

.method public init()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->observerSystemMode()V

    .line 45
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mModeChangedListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;
    throw p1
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mModeChangedListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager$ModeChangedListener;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/mediacenter/mode/ModeManager;
    throw p1
.end method
