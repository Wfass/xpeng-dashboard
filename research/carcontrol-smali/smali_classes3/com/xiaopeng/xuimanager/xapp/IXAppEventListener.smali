.class public interface abstract Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;
.super Ljava/lang/Object;
.source "IXAppEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener$Stub;,
        Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.xapp.IXAppEventListener"


# virtual methods
.method public abstract onError(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStartAppEvent(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
