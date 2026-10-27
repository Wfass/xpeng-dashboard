.class public Lcom/xiaopeng/xui/widget/XCheckBox;
.super Lcom/xiaopeng/xui/widget/XCompoundButton;
.source "XCheckBox.java"


# instance fields
.field private pressAnimEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 24
    sget v0, Lcom/xiaopeng/xpui/R$style;->XCheckBox:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    .line 13
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/XCheckBox;->pressAnimEnable:Z

    .line 29
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XCheckBox;->setClickable(Z)V

    .line 30
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 31
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p3

    invoke-interface {p3, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->addLongClickAction(Landroid/view/View;)V

    .line 32
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p3

    invoke-interface {p3, p1, p0, p2}, Lcom/xiaopeng/xui/lang/LangPresenter;->setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->drawableStateChanged()V

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCheckBox;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XCheckBox;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckBox;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XCheckBox;->pressAnimEnable:Z

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCheckBox;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->drawableStateChanged()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->instance()Lcom/xiaopeng/xui/lang/LangPresenter;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/lang/LangPresenter;->handleCustomString(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setPressAnimEnable(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XCheckBox;->pressAnimEnable:Z

    return-void
.end method
