.class Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "XpSpeechTtsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->setTtsUtteranceProgressListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    .line 310
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttsId"    # Ljava/lang/String;

    .line 328
    const-string v0, "XpSpeechTtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDone, ttsId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$700(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;

    .line 336
    .local v2, "listener":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;
    invoke-interface {v2, v1, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;->onSpeechTtsEventCallBack(ILjava/lang/String;)V

    .line 337
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;
    goto :goto_0

    .line 339
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttsId"    # Ljava/lang/String;

    .line 343
    const-string v0, "XpSpeechTtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError, ttsId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$700(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;

    .line 351
    .local v2, "listener":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;
    invoke-interface {v2, v1, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;->onSpeechTtsEventCallBack(ILjava/lang/String;)V

    .line 352
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;
    goto :goto_0

    .line 354
    :cond_1
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttsId"    # Ljava/lang/String;

    .line 313
    const-string v0, "XpSpeechTtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart, ttsId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", (mInstantTtsId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$600(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$700(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$800(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;

    .line 321
    .local v2, "listener":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;
    invoke-interface {v2, v1, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;->onSpeechTtsEventCallBack(ILjava/lang/String;)V

    .line 322
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;
    goto :goto_0

    .line 324
    :cond_1
    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "ttsId"    # Ljava/lang/String;
    .param p2, "interrupted"    # Z

    .line 358
    const-string v0, "XpSpeechTtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop, ttsId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$700(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;

    .line 366
    .local v2, "listener":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;
    invoke-interface {v2, v1, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;->onSpeechTtsEventCallBack(ILjava/lang/String;)V

    .line 367
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService$SpeechTtsEventListener;
    goto :goto_0

    .line 369
    :cond_1
    return-void
.end method
