.class public Lcom/xiaopeng/speech/protocol/query/ota/OtaQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "OtaQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/ota/IOtaCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    return-void
.end method


# virtual methods
.method protected isLatestVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/ota/OtaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/ota/IOtaCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/ota/IOtaCaller;->isLatestVersion()Z

    move-result p1

    return p1
.end method
