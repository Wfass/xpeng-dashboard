.class Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$6;
.super Landroid/text/style/ClickableSpan;
.source "ExpandableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Landroid/text/SpannableStringBuilder;Lbts$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbts$a;

.field final synthetic b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;Lbts$a;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$6;->b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$6;->a:Lbts$a;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 761
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$6;->b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->j(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 762
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$6;->b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->j(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$d;

    move-result-object p1

    sget-object v0, Lbtp;->SELF:Lbtp;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$6;->a:Lbts$a;

    invoke-virtual {v1}, Lbts$a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$6;->a:Lbts$a;

    invoke-virtual {v2}, Lbts$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$d;->a(Lbtp;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$6;->b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->k(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 768
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
