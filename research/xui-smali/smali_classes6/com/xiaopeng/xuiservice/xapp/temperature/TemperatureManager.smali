.class public Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;
.super Ljava/lang/Object;
.source "TemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$Callback;
    }
.end annotation


# static fields
.field private static final KEY_VALUE:Ljava/lang/String; = "psn_temperature_adjustment"

.field private static final TAG:Ljava/lang/String; = "TemperatureManager"

.field private static mInstance:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;


# instance fields
.field protected APPLICATION_SUFFIX:Ljava/lang/String;

.field private mCallback:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$Callback;

.field private mCallbackObserver:Landroid/database/ContentObserver;

.field private mCarSettingsManager:Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentStateValue:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ":s"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->APPLICATION_SUFFIX:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCurrentStateValue:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCallbackObserver:Landroid/database/ContentObserver;

    .line 23
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCarSettingsManager:Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;

    .line 24
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psn_temperature_adjustment"

    .line 26
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCallbackObserver:Landroid/database/ContentObserver;

    .line 25
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;
    .param p1, "x1"    # I

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->refreshState(I)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;
    .locals 2

    .line 31
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    return-object v0
.end method

.method private refreshState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCallback:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$Callback;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCallback:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$Callback;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$Callback;->onStateChanged(I)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public getConvertValue(I)I
    .locals 2
    .param p1, "value"    # I

    .line 46
    rem-int/lit8 v0, p1, 0xa

    if-eqz v0, :cond_2

    rem-int/lit8 v0, p1, 0x5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    rem-int/lit8 v0, p1, 0xa

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    div-int/lit8 v0, p1, 0xa

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    div-int/lit8 v0, p1, 0xa

    mul-int/lit8 v0, v0, 0xa

    goto :goto_1

    :cond_2
    :goto_0
    move v0, p1

    .line 47
    .local v0, "result":I
    :goto_1
    return v0
.end method

.method public getCurrentState()I
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psn_temperature_adjustment"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCurrentStateValue:Ljava/lang/String;

    .line 66
    const-string v0, "TemperatureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xptile contentprovider getvalue  key:psn_temperature_adjustment value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCurrentStateValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCurrentStateValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCurrentStateValue:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "value":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 71
    .end local v0    # "value":[Ljava/lang/String;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxTemperature()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCarSettingsManager:Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->getMaxTemperature()I

    move-result v0

    return v0
.end method

.method public getMinTemperature()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCarSettingsManager:Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->getMinTemperature()I

    move-result v0

    return v0
.end method

.method protected saveContentProvider(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "nextState"    # I

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->APPLICATION_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "value":Ljava/lang/String;
    const-string v1, "TemperatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xptile saveContentProvider  key:psn_temperature_adjustment & value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentStateValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCurrentStateValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psn_temperature_adjustment"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCurrentStateValue:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setCallback(Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$Callback;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->mCallback:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$Callback;

    .line 43
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "value"    # I

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->getCurrentState()I

    move-result v0

    .line 60
    .local v0, "currentState":I
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->getConvertValue(I)I

    move-result v1

    .line 61
    .local v1, "result":I
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->saveContentProvider(II)V

    .line 62
    return-void
.end method
