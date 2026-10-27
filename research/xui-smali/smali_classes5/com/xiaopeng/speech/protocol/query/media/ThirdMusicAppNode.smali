.class public Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "ThirdMusicAppNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/media/IThirdMusicCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    return-void
.end method

.method public static replyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 29
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/actorapi/ValueActor;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/actorapi/ValueActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/actorapi/ValueActor;->setValue(Ljava/lang/Object;)Lcom/xiaopeng/speech/actorapi/ValueActor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onMusicPlayDemand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.media.app.demand"
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IThirdMusicCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IThirdMusicCaller;->onMusicPlayDemand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onMusicPlayRecent(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.media.app.demand.recent"
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IThirdMusicCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IThirdMusicCaller;->onMusicPlayRecent(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onMusicPlaySubscribe(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.media.app.demand.subscribe"
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/media/IThirdMusicCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/media/IThirdMusicCaller;->onMusicPlaySubscribe(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
