.class public interface abstract Landroid/app/INotificationStatusCallBack;
.super Ljava/lang/Object;
.source "INotificationStatusCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationStatusCallBack$Stub;,
        Landroid/app/INotificationStatusCallBack$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationStatusCallBack"


# virtual methods
.method public abstract onGetNotificationLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNtfCardStatusCallBack(Ljava/lang/String;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReceiveNotificationStatus(Ljava/lang/String;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSetNotificationLevel(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
