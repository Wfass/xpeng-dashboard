.class Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$14;
.super Ljava/lang/Object;
.source "XAppModeViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->dismissClearAppDialog(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$screenId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 312
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$14;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$14;->val$screenId:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$14;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$14;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->access$600(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$14;->val$screenId:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$14;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->dismiss(ILjava/lang/String;)V

    .line 316
    return-void
.end method
