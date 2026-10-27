.class Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$6;
.super Ljava/lang/Object;
.source "XAppModeViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->hideQsPanel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

.field final synthetic val$screenId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 237
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$6;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$6;->val$screenId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$6;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->access$300(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$6;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->access$300(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$6;->val$screenId:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->removeFromWindow(I)V

    .line 243
    :cond_0
    return-void
.end method
