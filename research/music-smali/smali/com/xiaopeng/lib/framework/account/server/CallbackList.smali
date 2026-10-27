.class public final Lcom/xiaopeng/lib/framework/account/server/CallbackList;
.super Ljava/lang/Object;
.source "CallbackList.java"


# static fields
.field private static final CATEGORY_COUNT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CallbackList"


# instance fields
.field private mCallbacks:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/account/server/CallbackList;->mCallbacks:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 25
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/account/server/CallbackList;->mCallbacks:[Ljava/lang/Object;

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public notifyUserInfoChanged(Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;)V
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/server/CallbackList;->mCallbacks:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/os/RemoteCallbackList;

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 39
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyUserInfoChanged count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CallbackList"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-ge v1, v2, :cond_0

    .line 43
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;

    invoke-interface {v3, p1}, Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;->notifyUserInfoChanged(Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 47
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public register(Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/server/CallbackList;->mCallbacks:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregister(Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/server/CallbackList;->mCallbacks:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
