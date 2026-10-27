.class public final Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;
.super Ljava/lang/Object;
.source "CallbackList.java"


# static fields
.field private static final CATEGORY_COUNT:I


# instance fields
.field private mCallbacks:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->CATEGORY_COUNT:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->CATEGORY_COUNT:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallbacks:[Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->CATEGORY_COUNT:I

    if-ge v0, v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallbacks:[Ljava/lang/Object;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    aput-object v2, v1, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private unregister(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;
    .param p2, "category"    # I

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallbacks:[Ljava/lang/Object;

    aget-object v0, v0, p2

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 58
    return-void
.end method


# virtual methods
.method public publishLocation(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V
    .locals 4
    .param p1, "location"    # Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallbacks:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->category()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 42
    .local v0, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;>;"
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 43
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;

    invoke-interface {v3, p1}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;->locationChanged(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_1

    .line 46
    :catch_0
    move-exception v3

    .line 49
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 43
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 53
    return-void
.end method

.method public register(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;
    .param p2, "category"    # I

    .line 29
    sget v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->CATEGORY_COUNT:I

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/lib/framework/locationmodule/common/Debug;->assertion(Z)V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->mCallbacks:[Ljava/lang/Object;

    aget-object v0, v0, p2

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 32
    return-void
.end method

.method public unregister(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;

    .line 35
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->GPS_LOCATION:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->unregister(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V

    .line 36
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->DR_LOCATION:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->unregister(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V

    .line 37
    return-void
.end method
