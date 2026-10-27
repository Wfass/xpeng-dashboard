.class Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity$1;
.super Ljava/lang/Object;
.source "MainControlActivity.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity$1;->this$0:Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTitleBarBackClick()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity$1;->this$0:Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity$EmptyFragment;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity$EmptyFragment;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->access$000(Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;Landroidx/fragment/app/Fragment;Z)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity$1;->this$0:Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/activity/MainControlActivity;->finish()V

    return-void
.end method

.method public onTitleBarCloseClick()V
    .locals 0

    return-void
.end method
