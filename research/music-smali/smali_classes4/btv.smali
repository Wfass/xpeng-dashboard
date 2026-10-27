.class public Lbtv;
.super Lcom/xiaopeng/xui/widget/XTextView;
.source "FontScaleTextView.java"


# instance fields
.field private a:Lbtu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0}, Lbtv;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0}, Lbtv;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0}, Lbtv;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 29
    iget-object v0, p0, Lbtv;->a:Lbtu;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lbtu;

    invoke-virtual {p0}, Lbtv;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-direct {v0, p0, v1}, Lbtu;-><init>(Landroid/widget/TextView;F)V

    iput-object v0, p0, Lbtv;->a:Lbtu;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37
    iget-object p1, p0, Lbtv;->a:Lbtu;

    invoke-virtual {p1}, Lbtu;->a()V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 42
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    .line 43
    iget-object v0, p0, Lbtv;->a:Lbtu;

    invoke-virtual {v0, p1, p2}, Lbtu;->a(IF)V

    return-void
.end method
