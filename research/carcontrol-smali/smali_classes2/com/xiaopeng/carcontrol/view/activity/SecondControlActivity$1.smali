.class Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity$1;
.super Ljava/lang/Object;
.source "SecondControlActivity.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity$1;->this$0:Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTitleBarBackClick()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity$1;->this$0:Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity;->finish()V

    return-void
.end method

.method public onTitleBarCloseClick()V
    .locals 0

    return-void
.end method
