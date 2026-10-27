.class Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$3;
.super Ljava/lang/Object;
.source "CategoryDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->access$500(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;

    .line 167
    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->access$500(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/VuiLoadingTipView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment$3;->a:Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;->access$600(Lcom/xiaopeng/musicradio/music/detail/CategoryDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;->e()V

    :cond_1
    return-void
.end method
