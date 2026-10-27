.class public Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectManager"

.field private static mEffectManager:Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;


# instance fields
.field private mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mCallbackList:Ljava/util/List;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->initKaraokeManager()V

    .line 24
    return-void
.end method

.method private getEffectName(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mEffectItemList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mEffectItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;

    .line 143
    .local v1, "item":Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 144
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    .end local v1    # "item":Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;
    :cond_0
    goto :goto_0

    .line 148
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;
    .locals 2

    .line 27
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mEffectManager:Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mEffectManager:Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mEffectManager:Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mEffectManager:Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    return-object v0
.end method

.method private initKaraokeManager()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-nez v0, :cond_0

    .line 160
    :try_start_0
    new-instance v0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->getInstance()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->getInstance()Lcom/xiaopeng/xuimanager/utils/WorkHandler;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;-><init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_init(Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_registerCallback(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;)I

    .line 163
    const-string v0, "EffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init,mKaraokeManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyEffectSet(I)V
    .locals 2
    .param p1, "index"    # I

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager$Callback;

    .line 153
    .local v1, "callback":Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager$Callback;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager$Callback;->onEffectSet(I)V

    .line 154
    .end local v1    # "callback":Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager$Callback;
    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public getEchoValue()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_getEcho()I

    move-result v0

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEffect()I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_getVolume(I)I

    move-result v0

    return v0

    .line 96
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getEffectList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mEffectItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mEffectItemList:Ljava/util/List;

    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_getMicSoundEffectMap()Ljava/util/HashMap;

    move-result-object v0

    .line 85
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "EffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEffectList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectConfig;->getEffectInfo(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectConfig;->getEffectList(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mEffectItemList:Ljava/util/List;

    .line 87
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mEffectItemList:Ljava/util/List;

    return-object v1

    .line 89
    .end local v0    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMusicEffectEnable()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_isAtlEnabled()Z

    move-result v0

    return v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMusicEffectSupport()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_hasAtl()Z

    move-result v0

    return v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public micServiceCallBack(I)V
    .locals 0
    .param p1, "msg"    # I

    .line 65
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 60
    return-void
.end method

.method public registerCallback(Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager$Callback;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    return-void
.end method

.method public setEchoValue(I)V
    .locals 3
    .param p1, "value"    # I

    .line 106
    const-string v0, "EffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEchoValue value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_setEcho(I)I

    .line 110
    :cond_0
    return-void
.end method

.method public setEffect(I)V
    .locals 2
    .param p1, "index"    # I

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_setVolume(II)I

    .line 103
    :cond_0
    return-void
.end method

.method public setMicEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 38
    const-string v0, "EffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMicEnable enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v0, :cond_1

    .line 40
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "callingPackage":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_requestKaraokeResource(Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_releaseKaraokeResource(Ljava/lang/String;)I

    .line 47
    .end local v0    # "callingPackage":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public setMusicEffect(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 134
    const-string v0, "EffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMusicEffect enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_setAtlEnable(Z)V

    .line 138
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager$Callback;

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    return-void
.end method

.method public volumeEffectCallBack(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 51
    const-string v0, "EffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volumeEffectCallBack type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 53
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->notifyEffectSet(I)V

    .line 55
    :cond_0
    return-void
.end method
