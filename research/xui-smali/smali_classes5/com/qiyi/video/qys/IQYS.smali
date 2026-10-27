.class public interface abstract Lcom/qiyi/video/qys/IQYS;
.super Ljava/lang/Object;
.source "IQYS.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiyi/video/qys/IQYS$Stub;
    }
.end annotation


# virtual methods
.method public abstract executeAsync(Lcom/qiyi/video/qys/IQYSRequest;Lcom/qiyi/video/qys/IQYSCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract executeSync(Lcom/qiyi/video/qys/IQYSRequest;)Lcom/qiyi/video/qys/IQYSResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
