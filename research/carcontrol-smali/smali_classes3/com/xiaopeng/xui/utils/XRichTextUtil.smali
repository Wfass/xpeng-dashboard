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

    .line 32
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/xiaopeng/xui/utils/XRichTextUtil;->setClickableLinkTextView(Landroid/widget/TextView;Ljava/lang/String;IILcom/xiaopeng/xui/utils/XClickableSpan;)V

    return-void
.end method

.method public static setClickableLinkTextView(Landroid/widget/TextView;Ljava/lang/String;IIILcom/xiaopeng/xui/utils/XClickableSpan;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 21
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v0, p5, p2, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    new-instance p1, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/xiaopeng/xui/utils/XLinkMovementMethod;-><init>(IIILcom/xiaopeng/xui/utils/XClickableSpan;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public static setClickableLinkTextView(Landroid/widget/TextView;Ljava/lang/String;IILcom/xiaopeng/xui/utils/XClickableSpan;)V
    .locals 6

    const/16 v4, 0x11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 28
    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/xui/utils/XRichTextUtil;->setClickableLinkTextView(Landroid/widget/TextView;Ljava/lang/String;IIILcom/xiaopeng/xui/utils/XClickableSpan;)V

    return-void
.end method
