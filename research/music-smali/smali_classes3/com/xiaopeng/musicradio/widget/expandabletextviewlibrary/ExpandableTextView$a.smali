.class public Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$a;
.super Landroid/text/method/LinkMovementMethod;
.source "ExpandableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1045
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$a;
    .locals 1

    .line 1050
    sget-object v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$a;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$a;

    if-nez v0, :cond_0

    .line 1051
    new-instance v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$a;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$a;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$a;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$a;

    .line 1053
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$a;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$a;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1059
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1098
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1063
    :cond_1
    :goto_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 1064
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 1066
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 1067
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1069
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    .line 1070
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 1072
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 1073
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    int-to-float v2, v2

    .line 1074
    invoke-virtual {v4, v3, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 1076
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v2, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 1079
    array-length v3, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    if-ne v0, v1, :cond_2

    .line 1081
    aget-object p2, v2, v4

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 1083
    aget-object p3, v2, v4

    .line 1084
    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p3

    aget-object v0, v2, v4

    .line 1085
    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 1083
    invoke-static {p2, p3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1088
    :cond_3
    :goto_1
    instance-of p2, p1, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    if-eqz p2, :cond_4

    .line 1089
    check-cast p1, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    iput-boolean v1, p1, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->f:Z

    :cond_4
    return v1

    .line 1093
    :cond_5
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 1094
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    return v4
.end method
