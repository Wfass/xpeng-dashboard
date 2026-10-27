.class Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$1;
.super Ljava/lang/Object;
.source "SpeechMediaModel.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->showBotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;

.field final synthetic val$displayId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;

    .line 387
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$1;->val$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$1;->val$displayId:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->access$000(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;I)V

    .line 391
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 395
    const-string v0, "SpeechMediaModel"

    const-string v1, "MediaTriggerListener leaveTrigger"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-class v0, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;->leaveTrigger()V

    .line 397
    return-void
.end method
