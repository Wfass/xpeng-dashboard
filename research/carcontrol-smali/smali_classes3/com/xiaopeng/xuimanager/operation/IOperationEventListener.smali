.class public interface abstract Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;
.super Ljava/lang/Object;
.source "IOperationEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/operation/IOperationEventListener$Stub;,
        Lcom/xiaopeng/xuimanager/operation/IOperationEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.operation.IOperationEventListener"


# virtual methods
.method public abstract onError(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
