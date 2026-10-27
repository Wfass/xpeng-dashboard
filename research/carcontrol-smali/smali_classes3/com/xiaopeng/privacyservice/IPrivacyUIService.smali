.class public interface abstract Lcom/xiaopeng/privacyservice/IPrivacyUIService;
.super Ljava/lang/Object;
.source "IPrivacyUIService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/privacyservice/IPrivacyUIService$Stub;,
        Lcom/xiaopeng/privacyservice/IPrivacyUIService$Default;
    }
.end annotation


# virtual methods
.method public abstract dismissAllDisplay()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dismissDisplay(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isAnyProtocolInShowing()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isPrivacyOnShowing(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showSystemDialog(Lcom/xiaopeng/privacyservice/ProtocolInfo;Lcom/xiaopeng/privacyservice/IPrivacyUICallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
