.class Lbmf$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GuessLikeBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 51
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->guess_like_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    iput-object p1, p0, Lbmf$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    return-void
.end method
