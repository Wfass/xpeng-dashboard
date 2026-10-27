.class Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$1;
.super Ljava/lang/Object;
.source "MirrorControlFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->initView(Landroid/view/View;)V
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

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method
