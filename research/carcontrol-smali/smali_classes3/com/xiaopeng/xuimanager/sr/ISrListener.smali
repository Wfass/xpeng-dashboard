.class public interface abstract Lcom/xiaopeng/xuimanager/sr/ISrListener;
.super Ljava/lang/Object;
.source "ISrListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub;,
        Lcom/xiaopeng/xuimanager/sr/ISrListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.sr.ISrListener"


# virtual methods
.method public abstract onHideSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onShowSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
