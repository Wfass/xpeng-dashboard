.class Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment$2;
.super Ljava/lang/Object;
.source "GuessLikeListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;->access$200(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeListFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikeListPresenter;->c()V

    return-void
.end method
