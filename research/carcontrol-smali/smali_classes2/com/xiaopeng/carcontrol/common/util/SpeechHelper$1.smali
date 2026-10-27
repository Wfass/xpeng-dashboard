.class Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$1;
.super Ljava/lang/Object;
.source "SpeechHelper.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$1;->this$0:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const-string v0, "SpeechHelper"

    if-nez p1, :cond_0

    const-string p1, "TextToSpeech init Success"

    .line 101
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/common/util/XPLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$1;->this$0:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->access$200(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$1;->this$0:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->access$100(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    goto :goto_0

    :cond_0
    const-string p1, "TextToSpeech init error"

    .line 104
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/common/util/XPLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
