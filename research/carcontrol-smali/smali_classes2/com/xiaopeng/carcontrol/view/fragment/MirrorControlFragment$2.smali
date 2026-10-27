.class Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$2;
.super Ljava/lang/Object;
.source "MirrorControlFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 456
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "keyCode",
            "event"
        }
    .end annotation

    .line 459
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const-string p3, "isSupportIms"

    .line 460
    invoke-static {p3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    const/16 v0, 0x3f7

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getSelectedTabPosition()I

    move-result p3

    if-ne p3, v3, :cond_2

    if-nez p1, :cond_0

    .line 462
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKeyIms(II)Z

    move-result p1

    return p1

    :cond_0
    if-ne v3, p1, :cond_5

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_1

    .line 473
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKeyIms(II)Z

    move-result p1

    return p1

    .line 468
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    if-eqz p1, :cond_5

    .line 469
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;->onPopControlPageEnd()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 478
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKey(II)Z

    move-result p1

    return p1

    :cond_3
    if-ne v3, p1, :cond_5

    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_4

    if-eq p2, v0, :cond_4

    .line 489
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->access$300(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKey(II)Z

    move-result p1

    return p1

    .line 484
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    if-eqz p1, :cond_5

    .line 485
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;->onPopControlPageEnd()V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
