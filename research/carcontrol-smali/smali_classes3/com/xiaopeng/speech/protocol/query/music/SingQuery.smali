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

    return-void
.end method


# virtual methods
.method protected getSingStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 18
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/SingQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/music/ISingQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/ISingQueryCaller;->getSingStatus(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
