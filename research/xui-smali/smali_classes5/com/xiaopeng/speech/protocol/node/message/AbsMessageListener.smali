.class public abstract Lcom/xiaopeng/speech/protocol/node/message/AbsMessageListener;
.super Ljava/lang/Object;
.source "AbsMessageListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/message/MessageListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAIMessage(I)V
    .locals 0
    .param p1, "id"    # I

    .line 27
    return-void
.end method

.method public onAIMessageDisable()V
    .locals 0

    .line 47
    return-void
.end method

.method public onAIMessageDisableSevenDays()V
    .locals 0

    .line 52
    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 12
    return-void
.end method

.method public onCommonAIMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 32
    return-void
.end method

.method public onCommonCancel()V
    .locals 0

    .line 42
    return-void
.end method

.method public onCommonSubmit()V
    .locals 0

    .line 37
    return-void
.end method

.method public onHotWordEngineOK(Z)V
    .locals 0
    .param p1, "isReady"    # Z

    .line 57
    return-void
.end method

.method public onParkingSelected(I)V
    .locals 0
    .param p1, "index"    # I

    .line 22
    return-void
.end method

.method public onPathChanged()V
    .locals 0

    .line 17
    return-void
.end method
