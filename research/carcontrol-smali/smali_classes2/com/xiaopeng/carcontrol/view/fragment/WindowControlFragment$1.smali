.class Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$1;
.super Ljava/lang/Object;
.source "WindowControlFragment.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;

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

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;Z)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;Z)V

    :goto_0
    return-void
.end method
