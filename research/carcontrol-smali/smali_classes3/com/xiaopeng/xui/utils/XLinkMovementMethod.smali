.class public Lcom/xiaopeng/xui/utils/XLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "XLinkMovementMethod.java"


# instance fields
.field private final end:I

.field private flags:I

.field private final start:I

.field xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;


# direct methods
.method public constructor <init>(IIILcom/xiaopeng/xui/utils/XClickableSpan;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    const/16 v0, 0x11

    .line 15
    iput v0, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->flags:I

    .line 19
    iput p1, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->start:I

    .line 20
    iput p2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->end:I

    .line 21
    iput p3, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->flags:I

    .line 22
    iput-object p4, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    return-void
.end method

.method private getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/xiaopeng/xui/utils/XClickableSpan;
    .locals 2

    .line 71
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    add-int/2addr p3, v1

    .line 74
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p3

    int-to-float v0, v0

    invoke-virtual {p1, p3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 77
    const-class p3, Lcom/xiaopeng/xui/utils/XClickableSpan;

    invoke-interface {p2, p1, p1, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/xiaopeng/xui/utils/XClickableSpan;

    .line 79
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v1, p3, v0

    invoke-direct {p0, p1, p2, v1}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->positionWithinTag(ILandroid/text/Spannable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    aget-object p1, p3, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private positionWithinTag(ILandroid/text/Spannable;Ljava/lang/Object;)Z
    .locals 1

    .line 87
    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->start:I

    return v0
.end method

.method public getXClickableSpan()Lcom/xiaopeng/xui/utils/XClickableSpan;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    return-object v0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 27
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/xiaopeng/xui/utils/XClickableSpan;

    move-result-object p2

    .line 29
    iget-object v1, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    if-nez v1, :cond_0

    return v0

    .line 32
    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 33
    iget-object p2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/utils/XClickableSpan;->setPressed(Z)V

    .line 34
    new-instance p2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p3, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    iget v1, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->start:I

    iget v2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->end:I

    iget v3, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->flags:I

    invoke-virtual {p2, p3, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return v0

    .line 40
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/utils/XClickableSpan;->getPressed()Z

    move-result p2

    if-nez p2, :cond_3

    return v0

    .line 57
    :cond_3
    iget-object p2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    invoke-virtual {p2, v1}, Lcom/xiaopeng/xui/utils/XClickableSpan;->setPressed(Z)V

    .line 58
    new-instance p2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p3, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    iget v1, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->start:I

    iget v2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->end:I

    iget v3, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->flags:I

    invoke-virtual {p2, p3, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 43
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/utils/XClickableSpan;->getPressed()Z

    move-result p2

    if-eqz p2, :cond_5

    return v0

    .line 46
    :cond_5
    iget-object p2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/utils/XClickableSpan;->setPressed(Z)V

    .line 47
    new-instance p2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p3, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    iget v1, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->start:I

    iget v2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->end:I

    iget v3, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->flags:I

    invoke-virtual {p2, p3, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_0
    return v0
.end method
