.class Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$25;
.super Ljava/lang/Object;
.source "SpeechVideoModel.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/video/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->executeCommand(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

    .line 492
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$25;->this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 3
    .param p1, "code"    # I

    .line 495
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechUtils;->convertVideoOperationCode(I)I

    move-result v0

    .line 496
    .local v0, "videoOperationCode":I
    const-string v1, "gui.video.app.demand"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 497
    return-void
.end method
