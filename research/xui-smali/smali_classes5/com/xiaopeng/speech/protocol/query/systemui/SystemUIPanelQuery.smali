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

    .line 14
    return-void
.end method


# virtual methods
.method protected onGuiPageOpenStateSystemUI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.page.open.state.systemui"
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUIPanelQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/systemui/ISystemUIlPanelCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/ISystemUIlPanelCaller;->onGuiPageOpenStateSystemUI(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onGuiPageOpenSystemui(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.page.open.systemui"
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/systemui/SystemUIPanelQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/systemui/ISystemUIlPanelCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/systemui/ISystemUIlPanelCaller;->onGuiPageOpenSystemui(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
