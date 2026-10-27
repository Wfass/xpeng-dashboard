.class public interface abstract Lcom/qiyi/video/qys/IQYSCallback;
.super Ljava/lang/Object;
.source "IQYSCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiyi/video/qys/IQYSCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResponse(Lcom/qiyi/video/qys/IQYSResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
