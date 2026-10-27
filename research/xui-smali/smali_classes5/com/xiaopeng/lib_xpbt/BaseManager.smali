.class public Lcom/xiaopeng/lib_xpbt/BaseManager;
.super Ljava/lang/Object;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib_xpbt/BaseManager$BluetoothBroadcastReceiver;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field private final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib_xpbt/CallBackHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/BaseManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/BaseManager;->mHandlerMap:Ljava/util/Map;

    .line 24
    new-instance v0, Lcom/xiaopeng/lib_xpbt/BaseManager$BluetoothBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/lib_xpbt/BaseManager$BluetoothBroadcastReceiver;-><init>(Lcom/xiaopeng/lib_xpbt/BaseManager;Lcom/xiaopeng/lib_xpbt/BaseManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/lib_xpbt/BaseManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/BaseManager;->context:Landroid/content/Context;

    .line 18
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib_xpbt/BaseManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib_xpbt/BaseManager;

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/BaseManager;->mHandlerMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lcom/xiaopeng/lib_xpbt/CallBackHandler;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/xiaopeng/lib_xpbt/CallBackHandler;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/BaseManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/BaseManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public register()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/BaseManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/BaseManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/BaseManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    return-void
.end method
