.class Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment$1;
.super Ljava/lang/Object;
.source "WelcomeModeFragment.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptChange(Lcom/xiaopeng/xui/widget/XSegmented;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xSegmented",
            "i"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onSelectionChange(Lcom/xiaopeng/xui/widget/XSegmented;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "xSegmented",
            "index",
            "b"
        }
    .end annotation

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/WelcomeModeFragment;->setBootSoundEffectValue(I)V

    return-void
.end method
