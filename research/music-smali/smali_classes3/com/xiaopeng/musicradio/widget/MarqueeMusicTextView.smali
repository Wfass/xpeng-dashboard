.class public Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;
.super Landroid/widget/TextView;
.source "MarqueeMusicTextView.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->a:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->b:Z

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->a:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->b:Z

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->a:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->b:Z

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 39
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, -0x1

    .line 40
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->setMarqueeRepeatLimit(I)V

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->setSingleLine(Z)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->setLines(I)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->setMaxLines(I)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->setSelected(Z)V

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->setFocusable(Z)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->setFocusableInTouchMode(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->b:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 61
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->b:Z

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 84
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->c:Ljava/lang/CharSequence;

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/MarqueeMusicTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
