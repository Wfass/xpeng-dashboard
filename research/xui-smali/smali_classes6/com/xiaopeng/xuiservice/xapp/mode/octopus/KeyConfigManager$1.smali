.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$1;
.super Landroid/os/Handler;
.source "KeyConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;)V

    .line 48
    nop

    .line 54
    :goto_0
    return-void
.end method
