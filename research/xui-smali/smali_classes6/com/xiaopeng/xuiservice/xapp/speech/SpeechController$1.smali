.class Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController$1;
.super Ljava/lang/Object;
.source "SpeechController.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->showTransferBotDialog(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    .line 339
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 2

    .line 342
    const-string v0, "SpeechController"

    const-string v1, "onConfirm ThirdAppTriggerNode leaveTrigger"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-class v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;->leaveTrigger()V

    .line 344
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 348
    const-string v0, "SpeechController"

    const-string v1, "onDismiss ThirdAppTriggerNode leaveTrigger"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-class v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;->leaveTrigger()V

    .line 350
    return-void
.end method
