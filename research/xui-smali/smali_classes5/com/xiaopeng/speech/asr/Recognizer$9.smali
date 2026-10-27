.class Lcom/xiaopeng/speech/asr/Recognizer$9;
.super Ljava/lang/Object;
.source "Recognizer.java"

# interfaces
.implements Lcom/xiaopeng/speech/ConnectManager$OnConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/asr/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/asr/Recognizer;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/asr/Recognizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/asr/Recognizer;

    .line 304
    iput-object p1, p0, Lcom/xiaopeng/speech/asr/Recognizer$9;->this$0:Lcom/xiaopeng/speech/asr/Recognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/xiaopeng/speech/ISpeechEngine;)V
    .locals 3
    .param p1, "speechEngine"    # Lcom/xiaopeng/speech/ISpeechEngine;

    .line 308
    const-string v0, "Recognizer"

    const-string v1, "on connect"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechEngine;->getRecognizer()Lcom/xiaopeng/speech/asr/IRecognizer;

    move-result-object v0

    .line 311
    .local v0, "iRecog":Lcom/xiaopeng/speech/asr/IRecognizer;
    iget-object v1, p0, Lcom/xiaopeng/speech/asr/Recognizer$9;->this$0:Lcom/xiaopeng/speech/asr/Recognizer;

    invoke-static {v1}, Lcom/xiaopeng/speech/asr/Recognizer;->access$800(Lcom/xiaopeng/speech/asr/Recognizer;)Lcom/xiaopeng/speech/common/util/IPCRunner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 312
    iget-object v1, p0, Lcom/xiaopeng/speech/asr/Recognizer$9;->this$0:Lcom/xiaopeng/speech/asr/Recognizer;

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/asr/Recognizer;->access$902(Lcom/xiaopeng/speech/asr/Recognizer;Lcom/xiaopeng/speech/asr/IRecognizer;)Lcom/xiaopeng/speech/asr/IRecognizer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v0    # "iRecog":Lcom/xiaopeng/speech/asr/IRecognizer;
    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Recognizer"

    const-string v2, "on connect error"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer$9;->this$0:Lcom/xiaopeng/speech/asr/Recognizer;

    invoke-static {v0}, Lcom/xiaopeng/speech/asr/Recognizer;->access$800(Lcom/xiaopeng/speech/asr/Recognizer;)Lcom/xiaopeng/speech/common/util/IPCRunner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/IPCRunner;->setProxy(Ljava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/speech/asr/Recognizer$9;->this$0:Lcom/xiaopeng/speech/asr/Recognizer;

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/asr/Recognizer;->access$902(Lcom/xiaopeng/speech/asr/Recognizer;Lcom/xiaopeng/speech/asr/IRecognizer;)Lcom/xiaopeng/speech/asr/IRecognizer;

    .line 322
    return-void
.end method
