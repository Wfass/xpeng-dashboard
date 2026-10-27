.class Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$24;
.super Ljava/lang/Object;
.source "SpeechVideoModel.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->onVideoDemand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$displayId:I

.field final synthetic val$innerPkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

    .line 467
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$24;->this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$24;->val$displayId:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$24;->val$innerPkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$24;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 4

    .line 470
    const-class v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;->leaveTrigger()V

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$24;->this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$24;->val$displayId:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$24;->val$innerPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$24;->val$command:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->access$000(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;ILjava/lang/String;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 476
    const-class v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;->leaveTrigger()V

    .line 477
    return-void
.end method
