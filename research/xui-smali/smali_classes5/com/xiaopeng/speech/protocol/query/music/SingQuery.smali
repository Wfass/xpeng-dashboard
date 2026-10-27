.class public Lcom/xiaopeng/speech/protocol/query/music/SingQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SingQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/music/ISingQueryCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method protected getSingStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "music.search.sing"
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/SingQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/music/ISingQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/music/ISingQueryCaller;->getSingStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
