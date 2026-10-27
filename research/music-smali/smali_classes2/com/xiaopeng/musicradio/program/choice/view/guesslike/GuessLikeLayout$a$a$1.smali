.class Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a$1;
.super Ljava/lang/Object;
.source "GuessLikeLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->f(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->f(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->g(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setMaxLines(I)V

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->g(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setMaxLines(I)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
