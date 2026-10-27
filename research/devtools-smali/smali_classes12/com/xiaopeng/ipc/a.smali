.class public interface abstract Lcom/xiaopeng/ipc/a;
.super Ljava/lang/Object;
.source "IPC.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/ipc/a$a;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/xiaopeng/ipc/IpcMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcom/xiaopeng/ipc/b;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Lcom/xiaopeng/ipc/b;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
