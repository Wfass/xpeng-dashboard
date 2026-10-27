.class public Lcom/xiaopeng/speech/protocol/query/xpu/XpuQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "XpuQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/xpu/IXpuCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method protected getALCStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "xpu.is.on.alc"
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/xpu/XpuQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/xpu/IXpuCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/xpu/IXpuCaller;->getALCStatus()I

    move-result v0

    return v0
.end method

.method protected getAutoPilotStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "xpu.is.on.autopilot"
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/xpu/XpuQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/xpu/IXpuCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/xpu/IXpuCaller;->getAutoPilotStatus()I

    move-result v0

    return v0
.end method
