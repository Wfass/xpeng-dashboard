.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5$1;
.super Ljava/lang/Object;
.source "QsPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;->onConnectStatusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;

    .line 456
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->access$600(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->access$502(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;I)I

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->access$700(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->access$500(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getStreamVolume(I)I

    move-result v0

    .line 461
    .local v0, "currentVolume":I
    const-string v1, "QsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "streamType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->access$500(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " current volume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5$1;->this$1:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->access$800(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setProgress(I)V

    .line 463
    return-void
.end method
