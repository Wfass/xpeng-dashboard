.class public interface abstract Lcom/xiaopeng/xuimanager/theme/IThemeListener;
.super Ljava/lang/Object;
.source "IThemeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;,
        Lcom/xiaopeng/xuimanager/theme/IThemeListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.theme.IThemeListener"


# virtual methods
.method public abstract onDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onQueryRemoteThemeFailed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onQueryRemoteThemeSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onThemeUpdated2(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
