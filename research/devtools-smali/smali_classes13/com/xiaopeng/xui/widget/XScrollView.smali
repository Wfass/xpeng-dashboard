.class public Lcom/xiaopeng/xui/widget/XScrollView;
.super Landroid/widget/ScrollView;
.source "XScrollView.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/b;
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->a(Landroid/util/AttributeSet;II)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->a(Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->a(Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    invoke-direct {p0, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XScrollView;->a(Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method private a(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "extra_global"

    const-string v1, "scrollbarThumbVertical"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->asMaps(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/xui/view/a;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XScrollView;->abs:Lcom/xiaopeng/xui/view/a;

    .line 54
    :cond_0
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 55
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

    .line 101
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XScrollView;->qV()V

    .line 103
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 71
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 63
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 79
    :cond_0
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onViewAdded(Landroid/view/View;)V

    .line 90
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zx:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->a(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 91
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onViewRemoved(Landroid/view/View;)V

    .line 96
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zx:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->a(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    .line 97
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 84
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->e(Landroid/view/View;I)V

    .line 85
    return-void
.end method
