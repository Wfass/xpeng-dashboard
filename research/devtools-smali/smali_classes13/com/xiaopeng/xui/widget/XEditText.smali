.class public Lcom/xiaopeng/xui/widget/XEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "XEditText.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XEditText;->a(Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/xui/widget/XEditText;->a(Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xui/widget/XEditText;->a(Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XEditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    const-string v1, "extra_global"

    const-string v2, "scrollbarThumbVertical"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->asMaps(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;IILjava/lang/Object;)Lcom/xiaopeng/xui/view/a;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XEditText;->abs:Lcom/xiaopeng/xui/view/a;

    .line 44
    :cond_0
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XEditText;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XEditText;->rh()V

    .line 46
    return-void
.end method

.method private rh()V
    .locals 1

    .line 49
    new-instance v0, Lcom/xiaopeng/xui/widget/XEditText$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XEditText$1;-><init>(Lcom/xiaopeng/xui/widget/XEditText;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 70
    new-instance v0, Lcom/xiaopeng/xui/widget/XEditText$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XEditText$2;-><init>(Lcom/xiaopeng/xui/widget/XEditText;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XEditText;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 92
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

    .line 126
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XEditText;->qV()V

    .line 128
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onAttachedToWindow()V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 108
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 112
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onDetachedFromWindow()V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XEditText;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 116
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setVisibility(I)V

    .line 121
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XEditText;->e(Landroid/view/View;I)V

    .line 122
    return-void
.end method
