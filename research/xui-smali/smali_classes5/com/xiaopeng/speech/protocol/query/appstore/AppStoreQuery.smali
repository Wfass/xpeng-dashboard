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

    .line 12
    return-void
.end method


# virtual methods
.method protected getOpenStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "appstore.get.open.status"
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppStoreQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppStoreCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppStoreCaller;->getOpenStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
