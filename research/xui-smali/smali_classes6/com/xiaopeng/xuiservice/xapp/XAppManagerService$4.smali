.class Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$4;
.super Ljava/lang/Object;
.source "XAppManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->dismissDialogAsync(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

.field final synthetic val$displayId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 342
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$4;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$4;->val$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 346
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "topOnly"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    const-string v1, "screenId"

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$4;->val$displayId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManager;->getService()Lcom/xiaopeng/screen/IScreenTaskManager;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$4;->val$displayId:I

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/screen/IScreenTaskManager;->dismissDialog(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v0    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 352
    :goto_0
    return-void
.end method
