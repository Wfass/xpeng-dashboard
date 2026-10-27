.class Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$2;
.super Ljava/lang/Object;
.source "MsSingerMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->access$100(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;

    .line 129
    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->access$100(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->access$200(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->i()Z

    move-result p1

    if-nez p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->access$300(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->h()V

    goto :goto_0

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->access$400(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->m()Z

    move-result p1

    if-nez p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->access$700(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->access$500(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;->access$600(Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
