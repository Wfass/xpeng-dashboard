.class Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$1;
.super Ljava/lang/Object;
.source "GuessLikeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->a(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->c()V

    .line 127
    new-instance p1, Lash$e;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lash$e;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
