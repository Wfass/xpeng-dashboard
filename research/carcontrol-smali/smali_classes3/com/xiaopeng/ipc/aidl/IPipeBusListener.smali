.class public interface abstract Lcom/xiaopeng/ipc/aidl/IPipeBusListener;
.super Ljava/lang/Object;
.source "IPipeBusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/ipc/aidl/IPipeBusListener$Stub;,
        Lcom/xiaopeng/ipc/aidl/IPipeBusListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onPipeBusEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "module",
            "method",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
