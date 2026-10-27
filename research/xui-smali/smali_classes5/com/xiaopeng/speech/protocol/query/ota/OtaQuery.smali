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

    .line 11
    return-void
.end method


# virtual methods
.method protected isLatestVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "is.latest.ota.version"
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/ota/OtaQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/ota/IOtaCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/ota/IOtaCaller;->isLatestVersion()Z

    move-result v0

    return v0
.end method
