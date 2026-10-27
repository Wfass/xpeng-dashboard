.class public interface abstract Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;
.super Ljava/lang/Object;
.source "ISpeechConfigCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConfigSetResult(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
