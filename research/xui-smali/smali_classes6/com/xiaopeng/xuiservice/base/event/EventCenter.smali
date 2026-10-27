.class public Lcom/xiaopeng/xuiservice/base/event/EventCenter;
.super Ljava/lang/Object;
.source "EventCenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventCenter"

.field private static volatile mInstance:Lcom/xiaopeng/xuiservice/base/event/EventCenter;


# instance fields
.field private mMediaEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/base/event/MediaEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->mMediaEventListeners:Ljava/util/List;

    .line 12
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/base/event/EventCenter;
    .locals 2

    .line 15
    sget-object v0, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->mInstance:Lcom/xiaopeng/xuiservice/base/event/EventCenter;

    if-nez v0, :cond_1

    .line 16
    const-class v0, Lcom/xiaopeng/xuiservice/base/event/EventCenter;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->mInstance:Lcom/xiaopeng/xuiservice/base/event/EventCenter;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/xiaopeng/xuiservice/base/event/EventCenter;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/base/event/EventCenter;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->mInstance:Lcom/xiaopeng/xuiservice/base/event/EventCenter;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->mInstance:Lcom/xiaopeng/xuiservice/base/event/EventCenter;

    return-object v0
.end method


# virtual methods
.method public notifyNewMediaStream()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->mMediaEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/base/event/MediaEventListener;

    .line 33
    .local v1, "listener":Lcom/xiaopeng/xuiservice/base/event/MediaEventListener;
    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/base/event/MediaEventListener;->onPlayNewMediaStream()V

    .line 34
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/base/event/MediaEventListener;
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public registerMediaEventListener(Lcom/xiaopeng/xuiservice/base/event/MediaEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/base/event/MediaEventListener;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->mMediaEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->mMediaEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    return-void
.end method
