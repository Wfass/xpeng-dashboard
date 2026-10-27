.class public Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;
.super Lcom/xiaopeng/xuiservice/HalServiceBase;
.source "MusicRecognizeHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "MusicRecognizeHalService"


# instance fields
.field private mFindCover:Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover;

.field private mListener:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;

.field private mMusicRecognizeEngine:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/HalServiceBase;-><init>()V

    .line 26
    const-string v0, "MusicRecognizeHalService"

    const-string v1, "started MusicRecognizeHalService!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;)Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->mListener:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->downgrade()V

    return-void
.end method

.method private dispatchEventToListener(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;

    .line 92
    const-string v0, "MusicRecognizeHalService"

    const-string v1, "handleHalEvents event: "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private downgrade()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->mFindCover:Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover;

    instance-of v0, v0, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->mFindCover:Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover;

    .line 164
    :cond_0
    return-void
.end method

.method private getFindCover()Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->mFindCover:Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/FindCoverBy163Impl;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->mFindCover:Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->mFindCover:Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover;

    return-object v0
.end method

.method private getMusicRecognizeEngine()Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->mMusicRecognizeEngine:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;

    if-nez v0, :cond_0

    .line 147
    const-string v0, "MusicRecognizeHalService"

    const-string v1, "getMusicRecognizeEngine()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->getInstance()Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->mMusicRecognizeEngine:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->mMusicRecognizeEngine:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 98
    const-string v0, "*MusicRecognize HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public findSongCover(Ljava/lang/String;)V
    .locals 2
    .param p1, "musicName"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->getFindCover()Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$2;-><init>(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;)V

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover;->findSongCover(Ljava/lang/String;Lcom/xiaopeng/xuiservice/musicrecognize/IFindCover$Callback;)V

    .line 143
    return-void
.end method

.method public getMinScore()F
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->getMusicRecognizeEngine()Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;->getMinScore()F

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->getMusicRecognizeEngine()Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;->getMode()I

    move-result v0

    return v0
.end method

.method public handleHalEvents()V
    .locals 1

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->mListener:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;

    .line 83
    .local v0, "listener":Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->dispatchEventToListener(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;)V

    .line 87
    :cond_0
    return-void

    .line 83
    .end local v0    # "listener":Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 2

    .line 67
    const-string v0, "MusicRecognizeHalService"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public release()V
    .locals 2

    .line 74
    const-string v0, "MusicRecognizeHalService"

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->mListener:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;

    .line 77
    return-void
.end method

.method public setListener(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;

    .line 32
    const-string v0, "MusicRecognizeHalService"

    const-string v1, "setListener(MusicRecognizeHalListener listener)"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->mListener:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$MusicRecognizeHalListener;

    .line 36
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->getMusicRecognizeEngine()Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService$1;-><init>(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;->setCallback(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;)V

    .line 62
    return-void

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMinScore(F)V
    .locals 1
    .param p1, "score"    # F

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->getMusicRecognizeEngine()Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;->setMinScore(F)V

    .line 128
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 119
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->getMusicRecognizeEngine()Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;->setMode(I)V

    .line 120
    return-void
.end method

.method public start()V
    .locals 2

    .line 102
    const-string v0, "MusicRecognizeHalService"

    const-string v1, "handleHalEvents start()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->getMusicRecognizeEngine()Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;->start()V

    .line 104
    return-void
.end method

.method public stop()V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->getMusicRecognizeEngine()Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;->stop()V

    .line 108
    return-void
.end method

.method public stopAndRecognize()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeHalService;->getMusicRecognizeEngine()Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;->stopAndRecognize()V

    .line 112
    return-void
.end method
