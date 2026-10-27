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

    return-void
.end method


# virtual methods
.method protected getALCStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/xpu/XpuQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/xpu/IXpuCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/xpu/IXpuCaller;->getALCStatus()I

    move-result p1

    return p1
.end method

.method protected getAutoPilotStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/xpu/XpuQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/xpu/IXpuCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/xpu/IXpuCaller;->getAutoPilotStatus()I

    move-result p1

    return p1
.end method
