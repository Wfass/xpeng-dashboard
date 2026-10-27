.class public interface abstract Lcom/xiaopeng/lib_xpbt/hid/XHidListener;
.super Ljava/lang/Object;
.source "XHidListener.java"


# virtual methods
.method public onHidStateChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;III)V
    .locals 0
    .param p1, "xpBtDevice"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .param p4, "moduleType"    # I

    .line 17
    return-void
.end method

.method public onReady()V
    .locals 0

    .line 9
    return-void
.end method
