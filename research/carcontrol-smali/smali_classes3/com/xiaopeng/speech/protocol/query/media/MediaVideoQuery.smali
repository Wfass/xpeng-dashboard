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

    return-void
.end method


# virtual methods
.method protected getDemandApp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaVideoQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaVideoQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IMediaVideoQueryCaller;->getDemandApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaVideoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaVideoQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IMediaVideoQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/media/IMediaVideoQueryCaller;->getMediaVideoInfo()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
