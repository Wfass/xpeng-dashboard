.class Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$10;
.super Ljava/lang/Object;
.source "SpeechVideoModel.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/video/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->onVideoSpeedDown(Ljava/lang/String;)V
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

    .line 199
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$10;->this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 2
    .param p1, "code"    # I

    .line 202
    const-string/jumbo v0, "video.play.speed.down"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    return-void
.end method
