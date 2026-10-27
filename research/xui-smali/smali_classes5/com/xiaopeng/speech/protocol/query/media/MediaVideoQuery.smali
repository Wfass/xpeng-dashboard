.class public Lcom/xiaopeng/speech/protocol/query/media/MediaVideoQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "MediaVideoQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/media/IMediaVideoQueryCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method protected getDemandApp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "demand.video.app"
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaVideoQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaVideoQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaVideoQueryCaller;->getDemandApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMediaVideoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "media.video.info.query"
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaVideoQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IMediaVideoQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/media/IMediaVideoQueryCaller;->getMediaVideoInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
