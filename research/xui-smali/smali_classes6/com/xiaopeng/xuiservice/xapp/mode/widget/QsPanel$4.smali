.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$4;
.super Ljava/lang/Object;
.source "QsPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->refreshControlCheckBox(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

.field final synthetic val$isEvReady:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    .line 396
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$4;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$4;->val$isEvReady:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$4;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->access$400(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)Lcom/xiaopeng/xui/widget/XSwitch;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->isWSControlEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$4;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->access$400(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)Lcom/xiaopeng/xui/widget/XSwitch;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$4;->val$isEvReady:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setEnabled(Z)V

    .line 401
    return-void
.end method
