.class Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$5;
.super Landroid/text/style/ClickableSpan;
.source "ExpandableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Lbts;Z)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$5;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 626
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$5;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->e(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Lbtr;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 627
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$5;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->e(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Lbtr;

    move-result-object p1

    sget-object v0, Lbtq;->STATUS_EXPAND:Lbtq;

    invoke-interface {p1, v0}, Lbtr;->a(Lbtq;)V

    .line 628
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$5;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->e(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Lbtr;

    move-result-object v0

    invoke-interface {v0}, Lbtr;->a()Lbtq;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;Lbtq;)V

    goto :goto_0

    .line 630
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$5;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->f(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)V

    .line 632
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$5;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->g(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 633
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$5;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->g(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$b;

    move-result-object p1

    sget-object v0, Lbtq;->STATUS_CONTRACT:Lbtq;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$b;->a(Lbtq;)V

    :cond_1
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 639
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 640
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$5;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 641
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
