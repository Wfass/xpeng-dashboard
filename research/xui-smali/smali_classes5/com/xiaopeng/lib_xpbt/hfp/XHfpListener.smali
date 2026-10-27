.class public interface abstract Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;
.super Ljava/lang/Object;
.source "XHfpListener.java"


# virtual methods
.method public onHfpAudioStateChanged(Ljava/lang/String;III)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .param p4, "moduleType"    # I

    .line 17
    return-void
.end method

.method public onHfpCallChanged(Ljava/lang/String;IILjava/lang/String;ZZI)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "state"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "multiParty"    # Z
    .param p6, "outgoing"    # Z
    .param p7, "moduleType"    # I

    .line 28
    return-void
.end method

.method public onHfpStateChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;III)V
    .locals 0
    .param p1, "xpBtDevice"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .param p4, "moduleType"    # I

    .line 36
    return-void
.end method

.method public onReady()V
    .locals 0

    .line 9
    return-void
.end method
