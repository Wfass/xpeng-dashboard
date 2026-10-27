.class public Lcom/android/car/VmsPublishersInfo;
.super Ljava/lang/Object;
.source "VmsPublishersInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/VmsPublishersInfo$InfoWrapper;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "VmsPublishersInfo"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPublishersIds:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/car/VmsPublishersInfo$InfoWrapper;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublishersInfo:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsPublishersInfo;->mLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersIds:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersInfo:Ljava/util/Map;

    return-void
.end method

.method private maybeAddPublisherInfoLocked(Lcom/android/car/VmsPublishersInfo$InfoWrapper;)V
    .locals 3
    .param p1, "wrappedPublisherInfo"    # Lcom/android/car/VmsPublishersInfo$InfoWrapper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    .local v0, "publisherId":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersIds:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersInfo:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/car/VmsPublishersInfo$InfoWrapper;->getInfo()[B

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v0    # "publisherId":Ljava/lang/Integer;
    :cond_0
    return-void
.end method


# virtual methods
.method public getIdForInfo([B)I
    .locals 5
    .param p1, "publisherInfo"    # [B

    .line 68
    new-instance v0, Lcom/android/car/VmsPublishersInfo$InfoWrapper;

    invoke-direct {v0, p1}, Lcom/android/car/VmsPublishersInfo$InfoWrapper;-><init>([B)V

    .line 69
    .local v0, "wrappedPublisherInfo":Lcom/android/car/VmsPublishersInfo$InfoWrapper;
    iget-object v1, p0, Lcom/android/car/VmsPublishersInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/car/VmsPublishersInfo;->maybeAddPublisherInfoLocked(Lcom/android/car/VmsPublishersInfo$InfoWrapper;)V

    .line 71
    iget-object v2, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersIds:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 72
    .local v2, "publisherId":Ljava/lang/Integer;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    const-string v1, "VmsPublishersInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Publisher ID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 72
    .end local v2    # "publisherId":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getPublisherInfo(I)[B
    .locals 3
    .param p1, "publisherId"    # I

    .line 80
    iget-object v0, p0, Lcom/android/car/VmsPublishersInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsPublishersInfo;->mPublishersInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    monitor-exit v0

    return-object v1

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
