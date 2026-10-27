.class Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$1;
.super Ljava/lang/Object;
.source "XAppModeViewManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;-><init>()V
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

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocalChanged()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;->reset()V

    .line 72
    return-void
.end method
