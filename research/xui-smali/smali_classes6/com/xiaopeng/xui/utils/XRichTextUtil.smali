.class public Lcom/xiaopeng/xui/utils/XRichTextUtil;
.super Ljava/lang/Object;
.source "XRichTextUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setClickableLinkTextView(Landroid/widget/TextView;IILcom/xiaopeng/xui/utils/XClickableSpan;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "xClickableSpan"    # Lcom/xiaopeng/xui/utils/XClickableSpan;

    .line 32
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/xiaopeng/xui/utils/XRichTextUtil;->setClickableLinkTextView(Landroid/widget/TextView;Ljava/lang/String;IILcom/xiaopeng/xui/utils/XClickableSpan;)V

    .line 33
    return-void
.end method

.method public static setClickableLinkTextView(Landroid/widget/TextView;Ljava/lang/String;IIILcom/xiaopeng/xui/utils/XClickableSpan;)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I
    .param p5, "xClickableSpan"    # Lcom/xiaopeng/xui/utils/XClickableSpan;

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 21
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    .local v0, "spannableString":Landroid/text/SpannableString;
    invoke-virtual {v0, p5, p2, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    new-instance v1, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;-><init>(IIILcom/xiaopeng/xui/utils/XClickableSpan;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 25
    return-void
.end method

.method public static setClickableLinkTextView(Landroid/widget/TextView;Ljava/lang/String;IILcom/xiaopeng/xui/utils/XClickableSpan;)V
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "xClickableSpan"    # Lcom/xiaopeng/xui/utils/XClickableSpan;

    .line 28
    const/16 v4, 0x11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/xui/utils/XRichTextUtil;->setClickableLinkTextView(Landroid/widget/TextView;Ljava/lang/String;IIILcom/xiaopeng/xui/utils/XClickableSpan;)V

    .line 29
    return-void
.end method
