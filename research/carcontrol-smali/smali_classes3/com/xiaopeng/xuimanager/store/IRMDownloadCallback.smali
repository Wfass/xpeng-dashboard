.class public interface abstract Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback;
.super Ljava/lang/Object;
.source "IRMDownloadCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Stub;,
        Lcom/xiaopeng/xuimanager/store/IRMDownloadCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.store.IRMDownloadCallback"


# virtual methods
.method public abstract basicTypes(IJZFDLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDownloadCallback(ILcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMenuOpenCallback(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unbindService()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
