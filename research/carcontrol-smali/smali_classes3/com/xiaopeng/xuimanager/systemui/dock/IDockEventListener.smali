.class public interface abstract Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;
.super Ljava/lang/Object;
.source "IDockEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;,
        Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.systemui.dock.IDockEventListener"


# virtual methods
.method public abstract onDockEvent(ILjava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDockItemAdd(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDockItemRemoved(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEnterEdit(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
