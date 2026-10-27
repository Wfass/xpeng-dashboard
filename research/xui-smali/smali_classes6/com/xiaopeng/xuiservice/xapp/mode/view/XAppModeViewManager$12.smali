.class Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$12;
.super Ljava/lang/Object;
.source "XAppModeViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showClearAppDialog(ILjava/lang/String;)V
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
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 294
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$12;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$12;->val$pkgName:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$12;->val$screenId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$12;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->access$600(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$12;->val$pkgName:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$12;->val$screenId:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->show(Ljava/lang/String;I)V

    .line 298
    return-void
.end method
