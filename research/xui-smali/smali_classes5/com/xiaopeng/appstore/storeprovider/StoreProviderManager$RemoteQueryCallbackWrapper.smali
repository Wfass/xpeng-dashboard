.class Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteQueryCallbackWrapper;
.super Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub;
.source "StoreProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteQueryCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 699
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub;-><init>()V

    .line 700
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteQueryCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 701
    return-void
.end method


# virtual methods
.method public onQueryFinish(Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;
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

    .line 705
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteQueryCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteQueryCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;

    .line 707
    .local v0, "callback":Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;
    if-eqz v0, :cond_0

    .line 709
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;->onQueryFinish(Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    .end local v0    # "callback":Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;
    :goto_0
    goto :goto_1

    .line 710
    .restart local v0    # "callback":Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;
    :catch_0
    move-exception v1

    .line 711
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "StoreProviderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteQueryCallbackWrapper, onQueryFinish, callback ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 715
    :cond_0
    const-string v1, "StoreProviderManager"

    const-string v2, "RemoteQueryCallbackWrapper, onQueryFinish, callback is null,  object maybe been released."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .end local v0    # "callback":Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;
    :cond_1
    :goto_1
    return-void
.end method
