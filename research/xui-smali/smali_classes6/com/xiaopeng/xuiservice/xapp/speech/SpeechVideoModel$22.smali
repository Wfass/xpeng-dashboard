.class Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$22;
.super Ljava/lang/Object;
.source "SpeechVideoModel.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/video/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->setBarrageClose(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

    .line 395
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$22;->this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$22;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 2
    .param p1, "code"    # I

    .line 398
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$22;->val$enable:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video.barrage.close"

    goto :goto_0

    .line 399
    :cond_0
    const-string/jumbo v0, "video.barrage.open"

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 398
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    return-void
.end method
