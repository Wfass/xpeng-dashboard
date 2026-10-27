.class Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$18;
.super Ljava/lang/Object;
.source "XAppModeViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showGameDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 354
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$18;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$18;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->access$700(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->setShowDetailStyle(Z)V

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$18;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->access$700(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;->show()V

    .line 359
    return-void
.end method
