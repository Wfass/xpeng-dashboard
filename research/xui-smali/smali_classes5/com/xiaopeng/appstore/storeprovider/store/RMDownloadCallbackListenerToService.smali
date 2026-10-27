.class public Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;
.super Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;
.source "RMDownloadCallbackListenerToService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mStoreResourceProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)V
    .locals 1
    .param p1, "storeResourceProvider"    # Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storeResourceProvider"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->mStoreResourceProvider:Ljava/lang/ref/WeakReference;

    .line 21
    return-void
.end method


# virtual methods
.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 0
    .param p1, "anInt"    # I
    .param p2, "aLong"    # J
    .param p4, "aBoolean"    # Z
    .param p5, "aFloat"    # F
    .param p6, "aDouble"    # D
    .param p8, "aString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anInt",
            "aLong",
            "aBoolean",
            "aFloat",
            "aDouble",
            "aString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public onDownloadCallback(ILcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "resourceDownloadInfo"    # Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "resourceDownloadInfo"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->mStoreResourceProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    .line 56
    .local v0, "storeResourceProvider":Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->dispatchDownloadCallback(ILcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;)V

    goto :goto_0

    .line 59
    :cond_0
    sget-object v1, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->TAG:Ljava/lang/String;

    const-string v2, "storeResourceProvider is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void
.end method

.method public onMenuOpenCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->mStoreResourceProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    .line 70
    .local v0, "storeResourceProvider":Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->dispatchMenuOpenCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    sget-object v1, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->TAG:Ljava/lang/String;

    const-string v2, "storeResourceProvider is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return-void
.end method

.method public unbindService()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->mStoreResourceProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    .line 83
    .local v0, "storeResourceProvider":Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->unbindService()V

    goto :goto_0

    .line 86
    :cond_0
    sget-object v1, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->TAG:Ljava/lang/String;

    const-string v2, "storeResourceProvider is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void
.end method
