.class Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$8;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Lbtq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;Z)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$8;->b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 856
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 857
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$8;->a:Z

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$8;->b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->m(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$8;->b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->n(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$8;->b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->m(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr v2, p1

    float-to-int p1, v2

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;I)I

    goto :goto_0

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$8;->b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->o(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$8;->b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->m(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$8;->b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->n(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$8;->b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->m(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr v3, p1

    mul-float/2addr v2, v3

    float-to-int p1, v2

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;I)I

    .line 863
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$8;->b:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->c(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
