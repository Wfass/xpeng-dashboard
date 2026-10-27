.class Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "XpSpeechTtsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;->onInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1$1;->this$1:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttsId"    # Ljava/lang/String;

    .line 181
    const-string v0, "XpSpeechTtsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "textToSpeech onDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1$1;->this$1:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;->this$0:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->access$200(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;)Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1$1;->this$1:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;->this$0:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->access$200(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;)Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;->onSpeechTtsEventCallBack(ILjava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttsId"    # Ljava/lang/String;

    .line 189
    const-string v0, "XpSpeechTtsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "textToSpeech onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1$1;->this$1:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;->this$0:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->access$200(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;)Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1$1;->this$1:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;->this$0:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->access$200(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;)Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;->onSpeechTtsEventCallBack(ILjava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttsId"    # Ljava/lang/String;

    .line 173
    const-string v0, "XpSpeechTtsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "textToSpeech onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1$1;->this$1:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;->this$0:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->access$200(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;)Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1$1;->this$1:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;->this$0:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->access$200(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;)Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;->onSpeechTtsEventCallBack(ILjava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "ttsId"    # Ljava/lang/String;
    .param p2, "interrupted"    # Z

    .line 197
    const-string v0, "XpSpeechTtsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "textToSpeech onStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1$1;->this$1:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;->this$0:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->access$200(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;)Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1$1;->this$1:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;->this$0:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->access$200(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;)Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;->onSpeechTtsEventCallBack(ILjava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method
