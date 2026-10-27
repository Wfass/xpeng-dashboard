.class Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2;
.super Ljava/lang/Object;
.source "XAppStartManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->showGearLevelDeniedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    .line 435
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 438
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    .line 439
    .local v0, "xuiDialog":Lcom/xiaopeng/xui/app/XDialog;
    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 440
    const v2, 0x7f0e00e8

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 441
    const v2, 0x7f0e00e7

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 442
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 443
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setCancelable(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2$2;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2;Lcom/xiaopeng/xui/app/XDialog;)V

    .line 444
    const v3, 0x7f0e00e6

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2$1;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager$2;Lcom/xiaopeng/xui/app/XDialog;)V

    .line 452
    const v3, 0x7f0e00e5

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 459
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 460
    return-void
.end method
