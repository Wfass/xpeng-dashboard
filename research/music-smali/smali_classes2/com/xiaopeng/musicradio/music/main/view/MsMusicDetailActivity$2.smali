.class Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$2;
.super Ljava/lang/Object;
.source "MsMusicDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$2;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$2;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$2;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 174
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$2;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->access$000(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    :cond_1
    return-void
.end method
