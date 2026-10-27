.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$2;
.super Ljava/lang/Object;
.source "EventProcessor.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigLoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->onOctopusAppEnter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$2;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigLoaded(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->access$400(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->getDefaultKeyConfigList()Ljava/util/List;

    move-result-object p1

    .line 101
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->access$500(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$2;->val$pkgName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 104
    :cond_2
    return-void
.end method
