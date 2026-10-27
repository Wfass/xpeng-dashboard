.class Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService$1;
.super Ljava/lang/Object;
.source "AmbientManagerService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "effect"    # Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    const-string v1, "Ambient"

    const-string v2, "onAmbientPlayFailed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onPlayEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "effect"    # Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    const-string v1, "Ambient"

    const-string v2, "onAmbientPlayEffect"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onRequestAmbientLight(Z)V
    .locals 6
    .param p1, "apply"    # Z

    .line 54
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 57
    .local v0, "param":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "Ambient"

    const-string v3, "onAmbientRequest"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 61
    .end local v0    # "param":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onStopEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "partition"    # Ljava/lang/String;
    .param p2, "effect"    # Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    const-string v1, "Ambient"

    const-string v2, "onAmbientStopEffect"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
