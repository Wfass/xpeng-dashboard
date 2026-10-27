.class Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$5;
.super Ljava/lang/Object;
.source "XAppManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->dismissDialogAsync(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

.field final synthetic val$extra:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 357
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$5;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 361
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManager;->getService()Lcom/xiaopeng/screen/IScreenTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$5;->val$extra:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/screen/IScreenTaskManager;->dismissDialog(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 364
    :goto_0
    return-void
.end method
