.class public Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;
.super Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;
.source "RMDownloadCallbackListenerToService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RMDownloadCallbackListenerToService"


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
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->mStoreResourceProvider:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDownloadCallback(ILcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->mStoreResourceProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->dispatchDownloadCallback(ILcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;)V

    goto :goto_0

    .line 59
    :cond_0
    sget-object p1, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "storeResourceProvider is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onMenuOpenCallback(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->mStoreResourceProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->dispatchMenuOpenCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    sget-object p1, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "storeResourceProvider is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unbindService()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->mStoreResourceProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->unbindService()V

    goto :goto_0

    .line 86
    :cond_0
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/store/RMDownloadCallbackListenerToService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "storeResourceProvider is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
