.class Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$1;
.super Ljava/lang/Object;
.source "QQMineFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$000(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 214
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$f;->c()I

    move-result p1

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTabSelected: Position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQMineFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$100(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$102(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;I)I

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$200(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment$1;->a:Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->access$100(Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->reportPageChanged(I)V

    :cond_1
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 0

    return-void
.end method
