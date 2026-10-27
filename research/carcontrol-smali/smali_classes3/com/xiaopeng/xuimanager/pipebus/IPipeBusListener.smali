.class public interface abstract Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;
.super Ljava/lang/Object;
.source "IPipeBusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener$Stub;,
        Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.pipebus.IPipeBusListener"


# virtual methods
.method public abstract onPipeBusEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPipeBusParcelEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
