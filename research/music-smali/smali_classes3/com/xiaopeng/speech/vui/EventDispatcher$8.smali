.class Lcom/xiaopeng/speech/vui/EventDispatcher$8;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/EventDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

.field final synthetic val$effectOnly:Z

.field final synthetic val$event:Lbyf;

.field final synthetic val$startTime:J

.field final synthetic val$viewInfo:Lcom/xiaopeng/speech/vui/model/VuiEventInfo;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/EventDispatcher;ZLcom/xiaopeng/speech/vui/model/VuiEventInfo;Lbyf;J)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    iput-boolean p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->val$effectOnly:Z

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->val$viewInfo:Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->val$event:Lbyf;

    iput-wide p5, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 317
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->val$effectOnly:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/EventDispatcher;->access$200(Lcom/xiaopeng/speech/vui/EventDispatcher;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u4e0d\u6267\u884c\u6a21\u62df\u70b9\u51fb"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 321
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->val$viewInfo:Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiEventListener(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    invoke-interface {v0}, Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;->onVuiEventExecutioned()V

    .line 325
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->val$viewInfo:Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lbxv;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 327
    invoke-interface {v0}, Lbxv;->onVuiEventExecutioned()V

    :cond_2
    if-eqz v0, :cond_3

    .line 330
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->val$viewInfo:Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->val$event:Lbyf;

    invoke-interface {v0, v1, v2}, Lbxv;->onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/EventDispatcher;->access$200(Lcom/xiaopeng/speech/vui/EventDispatcher;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[VuiSceneTagInfo]user intercept Events"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->val$viewInfo:Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iget-object v0, v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v0, v0, Lbxt;

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->val$viewInfo:Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iget-object v0, v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    check-cast v0, Lbxt;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->val$viewInfo:Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->val$event:Lbyf;

    invoke-interface {v0, v1, v2}, Lbxt;->onVuiElementEvent(Landroid/view/View;Lbyf;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/EventDispatcher;->run()V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 343
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->access$200(Lcom/xiaopeng/speech/vui/EventDispatcher;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VuiSceneTagInfo]\u7a0b\u5e8f\u8fd0\u884c\u65f6\u95f4\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$8;->val$startTime:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
