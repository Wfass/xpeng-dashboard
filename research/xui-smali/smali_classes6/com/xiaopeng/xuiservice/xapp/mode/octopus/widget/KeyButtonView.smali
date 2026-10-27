.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyButtonView"


# instance fields
.field private mConfigViewRoot:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/IConfigViewRoot;

.field private mKeyViewInfo:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 0

    .line 35
    return-void
.end method

.method private layoutView(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p2

    .line 76
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->layout(IIII)V

    .line 78
    return-void
.end method


# virtual methods
.method public getKeyViewInfo()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;
    .locals 3

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 47
    .local v0, "positon":[I
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->getPosition([I)V

    .line 48
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->mKeyViewInfo:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mPoint:Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 49
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->mKeyViewInfo:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mPoint:Landroid/graphics/Point;

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 50
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->mKeyViewInfo:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    return-object v1
.end method

.method public getPosition([I)V
    .locals 2
    .param p1, "position"    # [I

    .line 81
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->getLocationOnScreen([I)V

    .line 82
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 83
    .local v0, "x":I
    const/4 v1, 0x1

    aget v1, p1, v1

    .line 84
    .local v1, "y":I
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->mConfigViewRoot:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/IConfigViewRoot;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->mConfigViewRoot:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/IConfigViewRoot;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/IConfigViewRoot;->onKeyViewTouchEvent(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;Landroid/view/MotionEvent;)V

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 61
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 62
    .local v1, "y":I
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->layoutView(II)V

    .line 63
    goto :goto_0

    .line 67
    .end local v0    # "x":I
    .end local v1    # "y":I
    :pswitch_1
    nop

    .line 72
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetLayoutPosition()V
    .locals 3

    .line 87
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 88
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->mKeyViewInfo:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    iget v1, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyCode:I

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyViewHelper;->getDefaultPosition(ILandroid/graphics/Point;)V

    .line 89
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->layoutView(II)V

    .line 90
    return-void
.end method

.method public setConfigViewRoot(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/IConfigViewRoot;)V
    .locals 0
    .param p1, "configViewRoot"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/IConfigViewRoot;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->mConfigViewRoot:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/IConfigViewRoot;

    .line 43
    return-void
.end method

.method public setKeyViewInfo(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;)V
    .locals 0
    .param p1, "ketViewInfo"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyButtonView;->mKeyViewInfo:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    .line 39
    return-void
.end method
