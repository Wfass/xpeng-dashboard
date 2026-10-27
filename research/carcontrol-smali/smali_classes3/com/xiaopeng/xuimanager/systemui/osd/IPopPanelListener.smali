.class public interface abstract Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;
.super Ljava/lang/Object;
.source "IPopPanelListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener$Stub;,
        Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.systemui.osd.IPopPanelListener"


# virtual methods
.method public abstract onHidePopPanel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onShowPopPanel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
