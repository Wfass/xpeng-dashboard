.class public Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XSwitchText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/widget/XSwitchText$OnInfoClickListener;,
        Lcom/xiaopeng/carcontrol/view/widget/XSwitchText$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mCheckedListener:Lcom/xiaopeng/carcontrol/view/widget/XSwitchText$OnCheckedChangeListener;

.field private mInfo:Landroid/view/View;

.field private mInfoListener:Lcom/xiaopeng/carcontrol/view/widget/XSwitchText$OnInfoClickListener;

.field private mSwitch:Lcom/xiaopeng/xui/widget/XSwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->init()V

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->setOrientation(I)V

    .line 47
    sget-object v1, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XSwitchText:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget p2, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XSwitchText_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 52
    :cond_0
    sget p2, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XSwitchText_android_textColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->setTextColor(I)V

    .line 54
    :goto_0
    sget p2, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XSwitchText_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget p2, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XSwitchText_info_visible:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->setInfoBtnVisibility(Z)V

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$layout;->x_switch_text:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->x_switch:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 63
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->x_info:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mInfo:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setSoundEffectsEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$XSwitchText$SnQqK2cOQFwsqaZeux_oh6JU3Xk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$XSwitchText$SnQqK2cOQFwsqaZeux_oh6JU3Xk;-><init>(Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnInterceptListener(Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mInfo:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$XSwitchText$ZjG2OsfKewn4xnzyvVgrbp3XNVU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$XSwitchText$ZjG2OsfKewn4xnzyvVgrbp3XNVU;-><init>(Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$init$0$XSwitchText(Landroid/view/View;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "view",
            "b"
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mCheckedListener:Lcom/xiaopeng/carcontrol/view/widget/XSwitchText$OnCheckedChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, p2, v1}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText$OnCheckedChangeListener;->onCheckedChanged(ZZ)V

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$init$1$XSwitchText(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mInfoListener:Lcom/xiaopeng/carcontrol/view/widget/XSwitchText$OnInfoClickListener;

    if-eqz p1, :cond_0

    .line 91
    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText$OnInfoClickListener;->onClick()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 99
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onLayout(ZIIII)V

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    if-eqz p1, :cond_0

    .line 101
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 102
    new-instance p2, Landroid/view/TouchDelegate;

    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-direct {p2, p1, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isChecked"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    return-void
.end method

.method public setInfoBtnVisibility(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mInfo:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/xiaopeng/carcontrol/view/widget/XSwitchText$OnCheckedChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mCheckedListener:Lcom/xiaopeng/carcontrol/view/widget/XSwitchText$OnCheckedChangeListener;

    return-void
.end method

.method public setOnInfoClickListener(Lcom/xiaopeng/carcontrol/view/widget/XSwitchText$OnInfoClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mInfoListener:Lcom/xiaopeng/carcontrol/view/widget/XSwitchText$OnInfoClickListener;

    return-void
.end method

.method public setText(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textId"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorId"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorStateList"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;->mSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
