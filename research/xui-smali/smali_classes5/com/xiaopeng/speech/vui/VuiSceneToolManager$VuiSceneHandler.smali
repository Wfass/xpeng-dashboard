.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$VuiSceneHandler;
.super Landroid/os/Handler;
.source "VuiSceneToolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VuiSceneHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 459
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 460
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 462
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 463
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 464
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 468
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$500()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 469
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 470
    .local v0, "type":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 471
    .local v1, "handleCache":Z
    :goto_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 472
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->addSceneElementGroup(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    goto :goto_1

    .line 473
    :cond_1
    if-nez v0, :cond_2

    .line 474
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v2, v4, v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->buildScene(Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V

    goto :goto_1

    .line 475
    :cond_2
    if-ne v0, v3, :cond_3

    .line 476
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->updateDynamicScene(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    goto :goto_1

    .line 477
    :cond_3
    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    .line 478
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->updateSceneElementAttr(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    goto :goto_1

    .line 479
    :cond_4
    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    .line 480
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$600(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    goto :goto_1

    .line 482
    :cond_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 483
    .local v3, "msgStr":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 484
    .local v4, "index":I
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 486
    .end local v0    # "type":I
    .end local v1    # "handleCache":Z
    .end local v3    # "msgStr":Ljava/lang/String;
    .end local v4    # "index":I
    :goto_1
    goto :goto_2

    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$700()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 487
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 488
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->feedbackInfo:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 489
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->feedbackInfo:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .end local v0    # "key":Ljava/lang/String;
    :cond_7
    :goto_2
    return-void
.end method
