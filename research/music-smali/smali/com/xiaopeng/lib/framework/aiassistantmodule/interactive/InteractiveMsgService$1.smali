.class Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService$1;
.super Ljava/lang/Object;
.source "InteractiveMsgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;->sendMessage(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;Landroid/os/Bundle;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService$1;->this$0:Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService$1;->this$0:Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;->access$000(Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService;)Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/aiassistantmodule/interactive/InteractiveMsgService$1;->val$bundle:Landroid/os/Bundle;

    const-string v2, "com.xiaopeng.aiassistant"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2b04

    invoke-interface {v0, v3, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;->sendData(ILandroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method
