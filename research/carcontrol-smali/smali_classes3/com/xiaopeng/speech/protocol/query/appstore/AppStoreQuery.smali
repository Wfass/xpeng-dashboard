.class public Lcom/xiaopeng/speech/protocol/query/appstore/AppStoreQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "AppStoreQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/appstore/IAppStoreCaller;",
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


# virtual methods
.method protected getOpenStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 16
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppStoreQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppStoreCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppStoreCaller;->getOpenStatus(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
