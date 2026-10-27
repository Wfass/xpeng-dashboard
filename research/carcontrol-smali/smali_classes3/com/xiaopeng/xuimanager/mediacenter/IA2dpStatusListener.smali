.class public interface abstract Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener;
.super Ljava/lang/Object;
.source "IA2dpStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Stub;,
        Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.mediacenter.IA2dpStatusListener"


# virtual methods
.method public abstract onA2dpConnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onA2dpDisconnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onA2dpServiceReady()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
