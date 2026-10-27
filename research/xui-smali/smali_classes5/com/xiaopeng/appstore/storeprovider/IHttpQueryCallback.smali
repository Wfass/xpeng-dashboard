.class public interface abstract Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;
.super Ljava/lang/Object;
.source "IHttpQueryCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub;,
        Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onQueryFinish(Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
