.class public interface abstract Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;
.super Ljava/lang/Object;
.source "ScreenManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowStatusCallback"
.end annotation


# virtual methods
.method public onEventChanged(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;I)V
    .locals 0
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    .param p2, "event"    # I

    .line 645
    return-void
.end method

.method public onSplitScreenEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 637
    return-void
.end method

.method public onTopAppChanged(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 641
    return-void
.end method
