.class Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    .line 888
    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_NETWORK_STATE"
    .end annotation

    .line 892
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->getNetworkType()Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    move-result-object v0

    .line 893
    .local v0, "networkType":Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    iget-object v1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    invoke-static {v1}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$1000(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 894
    :cond_0
    iget-object v1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$1002(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;)Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    .line 895
    sget-object v1, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_NO:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    if-ne v0, v1, :cond_1

    .line 896
    iget-object v1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    invoke-static {v1}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$900(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;

    .line 897
    .local v2, "listener":Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;
    invoke-interface {v2}, Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;->onDisconnected()V

    .line 898
    .end local v2    # "listener":Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;
    goto :goto_0

    .line 900
    :cond_1
    iget-object v1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;->this$0:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    invoke-static {v1}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->access$900(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;

    .line 901
    .restart local v2    # "listener":Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;
    invoke-interface {v2, v0}, Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;->onConnected(Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;)V

    .line 902
    .end local v2    # "listener":Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;
    goto :goto_1

    .line 904
    :cond_2
    return-void
.end method
