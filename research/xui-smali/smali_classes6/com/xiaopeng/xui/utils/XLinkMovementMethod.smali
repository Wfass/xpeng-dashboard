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
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "flags"    # I
    .param p4, "xClickableSpan"    # Lcom/xiaopeng/xui/utils/XClickableSpan;

    .line 18
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 15
    const/16 v0, 0x11

    iput v0, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->flags:I

    .line 19
    iput p1, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->start:I

    .line 20
    iput p2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->end:I

    .line 21
    iput p3, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->flags:I

    .line 22
    iput-object p4, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    .line 23
    return-void
.end method

.method private getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/xiaopeng/xui/utils/XClickableSpan;
    .locals 8
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "spannable"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

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
    .local v0, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    .line 74
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 75
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 77
    .local v3, "position":I
    const-class v4, Lcom/xiaopeng/xui/utils/XClickableSpan;

    invoke-interface {p2, v3, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/xiaopeng/xui/utils/XClickableSpan;

    .line 78
    .local v4, "link":[Lcom/xiaopeng/xui/utils/XClickableSpan;
    const/4 v5, 0x0

    .line 79
    .local v5, "touchedSpan":Lcom/xiaopeng/xui/utils/XClickableSpan;
    array-length v6, v4

    if-lez v6, :cond_0

    const/4 v6, 0x0

    aget-object v7, v4, v6

    invoke-direct {p0, v3, p2, v7}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->positionWithinTag(ILandroid/text/Spannable;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 80
    aget-object v5, v4, v6

    .line 83
    :cond_0
    return-object v5
.end method

.method private positionWithinTag(ILandroid/text/Spannable;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "spannable"    # Landroid/text/Spannable;
    .param p3, "tag"    # Ljava/lang/Object;

    .line 87
    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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
    .locals 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 27
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 28
    .local v0, "result":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/xiaopeng/xui/utils/XClickableSpan;

    move-result-object v1

    .line 29
    .local v1, "selectedSpan":Lcom/xiaopeng/xui/utils/XClickableSpan;
    iget-object v2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    if-nez v2, :cond_0

    .line 30
    return v0

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 33
    iget-object v2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/utils/XClickableSpan;->setPressed(Z)V

    .line 34
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 35
    .local v2, "spannableString1":Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    iget v4, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->start:I

    iget v5, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->end:I

    iget v6, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->flags:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 36
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 38
    return v0

    .line 40
    .end local v2    # "spannableString1":Landroid/text/SpannableString;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 43
    :pswitch_0
    iget-object v2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XClickableSpan;->getPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    return v0

    .line 46
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/utils/XClickableSpan;->setPressed(Z)V

    .line 47
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    .local v2, "spannableString":Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    iget v4, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->start:I

    iget v5, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->end:I

    iget v6, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->flags:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 49
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 51
    goto :goto_0

    .line 54
    .end local v2    # "spannableString":Landroid/text/SpannableString;
    :cond_3
    :pswitch_1
    iget-object v2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XClickableSpan;->getPressed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 55
    return v0

    .line 57
    :cond_4
    iget-object v2, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/utils/XClickableSpan;->setPressed(Z)V

    .line 58
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 59
    .local v2, "spannableString1":Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->xClickableSpan:Lcom/xiaopeng/xui/utils/XClickableSpan;

    iget v4, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->start:I

    iget v5, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->end:I

    iget v6, p0, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;->flags:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 60
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 63
    .end local v2    # "spannableString1":Landroid/text/SpannableString;
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
