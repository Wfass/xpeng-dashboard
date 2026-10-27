.class public Lcom/xiaopeng/xui/widget/XSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "XSeekBar.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/b;
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;

.field private aeu:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/a;->b(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->abs:Lcom/xiaopeng/xui/view/a;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->init()V

    .line 31
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XSeekBar;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 p1, 0x0

    invoke-static {p0, p2, p3, p1}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->abs:Lcom/xiaopeng/xui/view/a;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->init()V

    .line 38
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XSeekBar;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->aeu:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method private init()V
    .locals 1

    .line 42
    new-instance v0, Lcom/xiaopeng/xui/widget/XSeekBar$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XSeekBar$1;-><init>(Lcom/xiaopeng/xui/widget/XSeekBar;)V

    .line 65
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 105
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->qV()V

    .line 107
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->onAttachedToWindow()V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 87
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDetachedFromWindow()V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 95
    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->aeu:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 71
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setVisibility(I)V

    .line 100
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XSeekBar;->e(Landroid/view/View;I)V

    .line 101
    return-void
.end method
