.class public Lcom/xiaopeng/musicradio/widget/MarqueeTextView;
.super Lbtv;
.source "MarqueeTextView.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Ljava/lang/CharSequence;

.field private e:Z

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lbtv;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->a:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->b:Z

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->e:Z

    .line 141
    new-instance p1, Lcom/xiaopeng/musicradio/widget/-$$Lambda$MarqueeTextView$yNIAWOO0pnCmfXpIqWfnpTQReJA;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/-$$Lambda$MarqueeTextView$yNIAWOO0pnCmfXpIqWfnpTQReJA;-><init>(Lcom/xiaopeng/musicradio/widget/MarqueeTextView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->f:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Lbtv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->a:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->b:Z

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->e:Z

    .line 141
    new-instance p1, Lcom/xiaopeng/musicradio/widget/-$$Lambda$MarqueeTextView$yNIAWOO0pnCmfXpIqWfnpTQReJA;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/-$$Lambda$MarqueeTextView$yNIAWOO0pnCmfXpIqWfnpTQReJA;-><init>(Lcom/xiaopeng/musicradio/widget/MarqueeTextView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->f:Ljava/lang/Runnable;

    .line 37
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lbtv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->a:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->b:Z

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->e:Z

    .line 141
    new-instance p1, Lcom/xiaopeng/musicradio/widget/-$$Lambda$MarqueeTextView$yNIAWOO0pnCmfXpIqWfnpTQReJA;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/-$$Lambda$MarqueeTextView$yNIAWOO0pnCmfXpIqWfnpTQReJA;-><init>(Lcom/xiaopeng/musicradio/widget/MarqueeTextView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->f:Ljava/lang/Runnable;

    .line 42
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .line 46
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setTextLocales(Landroid/os/LocaleList;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/musicradio/common/k$i;->MarqueeTextView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget v1, Lcom/xiaopeng/musicradio/common/k$i;->MarqueeTextView_mtv_auto_resume_marquee:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->e:Z

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    :cond_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 53
    invoke-static {}, Laqz;->a()Laqz;

    move-result-object v1

    invoke-virtual {v1}, Laqz;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 56
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, -0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setMarqueeRepeatLimit(I)V

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setSingleLine(Z)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setLines(I)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setMaxLines(I)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setSelected(Z)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setFocusable(Z)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setFocusableInTouchMode(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 66
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 67
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 142
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setSelected(Z)V

    const/4 v0, 0x1

    .line 146
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setSelected(Z)V

    return-void
.end method

.method public static synthetic lambda$yNIAWOO0pnCmfXpIqWfnpTQReJA(Lcom/xiaopeng/musicradio/widget/MarqueeTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->f:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isFocused()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->b:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 78
    invoke-super {p0}, Lbtv;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 111
    invoke-super {p0}, Lbtv;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->b:Z

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 101
    invoke-super/range {p0 .. p5}, Lbtv;->onLayout(ZIIII)V

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->c:Ljava/lang/CharSequence;

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Lbtv;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_1

    .line 128
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->e:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_1

    .line 129
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeTextView;->a()V

    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 118
    invoke-static {}, Laqz;->a()Laqz;

    move-result-object v0

    invoke-virtual {v0}, Laqz;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 119
    invoke-super {p0, p1}, Lbtv;->setSelected(Z)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-super {p0, p1}, Lbtv;->setSelected(Z)V

    :goto_0
    return-void
.end method
