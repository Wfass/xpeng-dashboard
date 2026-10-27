.class public interface abstract Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;
.super Ljava/lang/Object;
.source "IRemoteLogInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface$Stub;,
        Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract uploadRemoteLog(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
