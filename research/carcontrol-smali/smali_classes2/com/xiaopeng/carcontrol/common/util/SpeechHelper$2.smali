.class Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$2;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SpeechHelper.java"


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

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$2;->this$0:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "utteranceId"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechHelper"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/common/util/XPLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$2;->this$0:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->access$300(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;)Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$2;->this$0:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->access$300(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;)Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;->onTtsPlayEnd(Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$2;->this$0:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->access$400(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;

    .line 124
    invoke-interface {v1, p1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;->onTtsPlayEnd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "utteranceId"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpeechHelper"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/common/util/XPLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "utteranceId"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpeechHelper"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/common/util/XPLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
