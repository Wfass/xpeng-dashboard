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

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public assembleAction(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "assembleRequest"    # Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callingPackage",
            "assembleRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public assembleEnqueue(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "assembleRequest"    # Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callingPackage",
            "assembleRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public assembleEnqueueAll(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "assembleRequest"    # Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callingPackage",
            "assembleRequest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssembleInfoList(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "resType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resType",
            "callingPackage"
        }
    .end annotation

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

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssembleInfoListAll(IZLjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "resType"    # I
    .param p2, "includeSilent"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resType",
            "includeSilent",
            "callingPackage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
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

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public query(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callingPackage",
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryAppGroups([I)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    .locals 1
    .param p1, "appGroupTypes"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appGroupTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryAppStoreCloud(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;)I
    .locals 1
    .param p1, "method"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "queryParams"    # Landroid/os/Bundle;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "path",
            "queryParams",
            "body",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public queryOperationApps([Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    .locals 1
    .param p1, "requests"    # [Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAssembleListener(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    .locals 0
    .param p1, "resType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resType",
            "callingPackage",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public unregisterAssembleListener(Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
