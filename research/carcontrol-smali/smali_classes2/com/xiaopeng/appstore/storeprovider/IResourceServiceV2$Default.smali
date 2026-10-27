.class public Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Default;
.super Ljava/lang/Object;
.source "IResourceServiceV2.java"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public assembleAction(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public assembleEnqueue(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAssembleInfoList(ILjava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public query(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerAssembleListener(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unregisterAssembleListener(Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
