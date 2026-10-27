.class Lcom/xiaopeng/aar/server/ServerManager$1;
.super Ljava/lang/Object;
.source "ServerManager.java"

# interfaces
.implements Lcom/xiaopeng/aar/server/ipc/IpcServer$OnClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/aar/server/ServerManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/aar/server/ServerManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/aar/server/ServerManager;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/aar/server/ServerManager$1;->this$0:Lcom/xiaopeng/aar/server/ServerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager$1;->this$0:Lcom/xiaopeng/aar/server/ServerManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/aar/server/ServerManager;->access$000(Lcom/xiaopeng/aar/server/ServerManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onClientDied()V
    .locals 4

    const-string v0, "SerMg"

    const-string v1, "napa is dead !!! onUnSubscribe all module "

    .line 49
    invoke-static {v0, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager$1;->this$0:Lcom/xiaopeng/aar/server/ServerManager;

    invoke-static {v0}, Lcom/xiaopeng/aar/server/ServerManager;->access$100(Lcom/xiaopeng/aar/server/ServerManager;)Lcom/xiaopeng/aar/server/ServerConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v0}, Lcom/xiaopeng/aar/server/ServerConfig;->isAutoUnSubscribeWhenNaPaDied()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/aar/server/ServerManager$1;->this$0:Lcom/xiaopeng/aar/server/ServerManager;

    invoke-static {v0}, Lcom/xiaopeng/aar/server/ServerManager;->access$200(Lcom/xiaopeng/aar/server/ServerManager;)Landroid/util/ArraySet;

    move-result-object v0

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aar/server/ServerManager$1;->this$0:Lcom/xiaopeng/aar/server/ServerManager;

    invoke-static {v1}, Lcom/xiaopeng/aar/server/ServerManager;->access$200(Lcom/xiaopeng/aar/server/ServerManager;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    iget-object v3, p0, Lcom/xiaopeng/aar/server/ServerManager$1;->this$0:Lcom/xiaopeng/aar/server/ServerManager;

    invoke-static {v3, v2}, Lcom/xiaopeng/aar/server/ServerManager;->access$300(Lcom/xiaopeng/aar/server/ServerManager;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method
