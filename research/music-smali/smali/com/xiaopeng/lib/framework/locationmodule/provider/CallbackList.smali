.class public final Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;
.super Ljava/lang/Object;
.source "CallbackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;
    }
.end annotation


# static fields
.field private static final CATEGORY_COUNT:I

.field private static final TAG:Ljava/lang/String; = "Subscribed.CallbackList"


# instance fields
.field private mBindingClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCallBackDeathRecipientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:[Ljava/lang/Object;

.field private mSubscribedClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->CATEGORY_COUNT:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mBindingClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mSubscribedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallBackDeathRecipientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    sget v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->CATEGORY_COUNT:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallbacks:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 54
    :goto_0
    sget v1, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->CATEGORY_COUNT:I

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallbacks:[Ljava/lang/Object;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mSubscribedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallBackDeathRecipientMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private removeDeathRecipient(Landroid/os/IBinder;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallBackDeathRecipientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 134
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

.method private unregister(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallbacks:[Ljava/lang/Object;

    aget-object p2, v0, p2

    check-cast p2, Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method


# virtual methods
.method public clearSubscribedCallback()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallBackDeathRecipientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    .line 148
    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallBackDeathRecipientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mSubscribedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mBindingClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public findBindingClientPkgName(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mBindingClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v3

    :cond_2
    return-object v0
.end method

.method public getSubscribedClientMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mSubscribedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public onBind(ILjava/lang/String;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mBindingClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(ILcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V
    .locals 5

    .line 170
    invoke-interface {p2}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mSubscribedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    const-string v2, "Subscribed.CallbackList"

    if-ne v1, v0, :cond_0

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<< binder: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has subscribed location category: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " by pid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 177
    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->removeDeathRecipient(Landroid/os/IBinder;)V

    .line 181
    :cond_1
    :try_start_0
    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList$CallbackDeathRecipientImpl;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;ILcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;)V

    .line 182
    invoke-interface {p2}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const/4 v3, 0x0

    invoke-interface {p2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 183
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallBackDeathRecipientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->findBindingClientPkgName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "<<<< binder: %d subscribed category: %d with client [ pid: %d, %s ]"

    const/4 v4, 0x4

    .line 186
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, v0

    const/4 p3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p3

    const/4 p1, 0x3

    aput-object p2, v4, p1

    invoke-static {v2, v1, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 188
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onUnbind(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mBindingClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->removeSubscribedCallback(I)V

    :cond_0
    return-void
.end method

.method public publishLocation(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallbacks:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->category()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Landroid/os/RemoteCallbackList;

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 86
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;

    invoke-interface {v3, p1}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;->locationChanged(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 93
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public register(ILcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V
    .locals 1

    .line 61
    sget v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->CATEGORY_COUNT:I

    if-ge p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/lib/framework/locationmodule/common/Debug;->assertion(Z)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallbacks:[Ljava/lang/Object;

    aget-object v0, v0, p3

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->onSubscribe(ILcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V

    return-void
.end method

.method public removeSubscribedCallback(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mSubscribedClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    .line 127
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->removeDeathRecipient(Landroid/os/IBinder;)V

    return-void
.end method

.method public unregister(ILcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;)V
    .locals 3

    .line 74
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->GPS_LOCATION:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->ordinal()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->unregister(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V

    .line 75
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->DR_LOCATION:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->ordinal()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->unregister(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->removeSubscribedCallback(I)V

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->findBindingClientPkgName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object v0, v1, p1

    const-string p1, "Subscribed.CallbackList"

    const-string p2, "<<<< binder: %d is unsubscribed with client [ pid: %d, %s ]"

    invoke-static {p1, p2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
