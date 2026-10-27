.class Lcom/xiaopeng/speech/vui/VuiSceneManager$VuiSceneHandler;
.super Landroid/os/Handler;
.source "VuiSceneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VuiSceneHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Landroid/os/Looper;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 585
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 590
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$500()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 591
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 592
    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 594
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->addSceneElementGroup(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0, p1, v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->buildScene(Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V

    goto :goto_1

    :cond_2
    if-ne v0, v3, :cond_3

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateDynamicScene(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    .line 600
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->updateSceneElementAttr(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x5

    if-ne v0, v4, :cond_5

    .line 602
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$600(Lcom/xiaopeng/speech/vui/VuiSceneManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    goto :goto_1

    .line 604
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, ","

    .line 605
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 606
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v2, p1, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 608
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$700()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 609
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 610
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object v0, v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->feedbackInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 611
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$VuiSceneHandler;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iget-object v0, v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;->feedbackInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    return-void
.end method
