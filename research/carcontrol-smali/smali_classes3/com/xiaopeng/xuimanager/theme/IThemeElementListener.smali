.class public interface abstract Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;
.super Ljava/lang/Object;
.source "IThemeElementListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;,
        Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.theme.IThemeElementListener"


# virtual methods
.method public abstract onQueryRemoteThemeElementFailed(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onQueryRemoteThemeElementSuccess(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/ThemeElement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThemeElementAdded(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThemeElementDeleted(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThemeElementDownloadCancel(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThemeElementDownloadError(ILcom/xiaopeng/xuimanager/theme/ThemeElement;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThemeElementDownloadInProgress(ILcom/xiaopeng/xuimanager/theme/ThemeElement;F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThemeElementDownloadPaused(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThemeElementDownloadStart(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThemeElementSelectionChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThemeElementUpdated(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
