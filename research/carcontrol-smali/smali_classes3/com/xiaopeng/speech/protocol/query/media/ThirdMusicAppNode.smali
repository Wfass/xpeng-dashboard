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

    .line 29
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/actorapi/ValueActor;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/actorapi/ValueActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/actorapi/ValueActor;->setValue(Ljava/lang/Object;)Lcom/xiaopeng/speech/actorapi/ValueActor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method


# virtual methods
.method protected onMusicPlayDemand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IThirdMusicCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IThirdMusicCaller;->onMusicPlayDemand(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected onMusicPlayRecent(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IThirdMusicCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IThirdMusicCaller;->onMusicPlayRecent(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected onMusicPlaySubscribe(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/ThirdMusicAppNode;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/media/IThirdMusicCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/IThirdMusicCaller;->onMusicPlaySubscribe(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
