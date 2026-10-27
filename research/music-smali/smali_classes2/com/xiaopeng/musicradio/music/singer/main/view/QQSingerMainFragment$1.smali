.class Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$1;
.super Ljava/lang/Object;
.source "QQSingerMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->access$000(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    .line 127
    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->access$000(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->access$100(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->p()V

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->access$200(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->getAccountType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->b(I)V

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;->access$300(Lcom/xiaopeng/musicradio/music/singer/main/view/QQSingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->q()V

    :cond_1
    return-void
.end method
