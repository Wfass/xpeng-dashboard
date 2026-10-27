.class public Lcom/xiaopeng/speech/protocol/query/systemui/SystemUIPanelQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SystemUIPanelQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/systemui/ISystemUIlPanelCaller;",
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
.method protected onGuiPageOpenStateSystemUI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUIPanelQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/systemui/ISystemUIlPanelCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/ISystemUIlPanelCaller;->onGuiPageOpenStateSystemUI(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected onGuiPageOpenSystemui(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUIPanelQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/systemui/ISystemUIlPanelCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/ISystemUIlPanelCaller;->onGuiPageOpenSystemui(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
