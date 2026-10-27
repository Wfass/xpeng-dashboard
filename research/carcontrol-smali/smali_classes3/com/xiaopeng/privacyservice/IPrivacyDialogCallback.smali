.class public interface abstract Lcom/xiaopeng/privacyservice/IPrivacyDialogCallback;
.super Ljava/lang/Object;
.source "IPrivacyDialogCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/privacyservice/IPrivacyDialogCallback$Stub;,
        Lcom/xiaopeng/privacyservice/IPrivacyDialogCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onDialogClosed(IZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDialogShown(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
