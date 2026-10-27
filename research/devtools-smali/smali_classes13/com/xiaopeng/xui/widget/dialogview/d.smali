.class Lcom/xiaopeng/xui/widget/dialogview/d;
.super Lcom/xiaopeng/xui/widget/dialogview/c;
.source "XDialogViewDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/dialogview/d$a;,
        Lcom/xiaopeng/xui/widget/dialogview/d$b;
    }
.end annotation


# instance fields
.field private aiA:Landroid/widget/TextView;

.field private aiB:Lcom/xiaopeng/xui/widget/XButton;

.field private aiC:Lcom/xiaopeng/xui/widget/XButton;

.field private aiD:Landroid/view/View;

.field private aiE:Landroid/view/View;

.field private aiF:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

.field private aiG:Lcom/xiaopeng/xui/widget/XScrollView;

.field private aiH:Lcom/xiaopeng/xui/widget/dialogview/e$b;

.field private aiI:Lcom/xiaopeng/xui/widget/dialogview/e$c;

.field private aiJ:Lcom/xiaopeng/xui/widget/dialogview/e$d;

.field private aiK:Lcom/xiaopeng/xui/widget/dialogview/e$a;

.field private aiL:Lcom/xiaopeng/xui/widget/dialogview/e$a;

.field private aiM:Z

.field private aiN:Z

.field private aiO:Lcom/xiaopeng/xui/widget/dialogview/a;

.field private aiy:Lcom/xiaopeng/xui/widget/dialogview/d$a;

.field private aiz:Landroid/view/ViewGroup;

.field private mContentView:Landroid/view/ViewGroup;

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/b;Landroid/content/Context;I)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/dialogview/c;-><init>(Lcom/xiaopeng/xui/widget/dialogview/b;Landroid/content/Context;I)V

    .line 110
    new-instance p1, Lcom/xiaopeng/xui/widget/dialogview/d$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/dialogview/d$2;-><init>(Lcom/xiaopeng/xui/widget/dialogview/d;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/d;->init()V

    .line 63
    return-void
.end method

.method private a(Lcom/xiaopeng/xui/widget/XButton;Z)V
    .locals 3

    .line 369
    const/4 v0, 0x0

    .line 370
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->qW()Lorg/json/JSONObject;

    move-result-object v1

    .line 371
    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 372
    if-eqz v1, :cond_2

    const-string p2, "hasFeedback"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 373
    const-string p2, "hasFeedback"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 374
    nop

    .line 386
    :goto_0
    move v0, v2

    goto :goto_1

    .line 377
    :cond_0
    if-nez v1, :cond_1

    .line 378
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 380
    :cond_1
    const-string p2, "hasFeedback"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 381
    const-string p2, "hasFeedback"

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 382
    goto :goto_0

    .line 386
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 387
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->i(Lorg/json/JSONObject;)V

    .line 388
    invoke-virtual {p1, p1}, Lcom/xiaopeng/xui/widget/XButton;->l(Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :cond_3
    goto :goto_2

    .line 390
    :catch_0
    move-exception p1

    .line 393
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/dialogview/d;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/d;->rP()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/dialogview/d;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->fj(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/dialogview/d;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->bp(Z)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiO:Lcom/xiaopeng/xui/widget/dialogview/a;

    return-object p0
.end method

.method private bp(Z)V
    .locals 6

    .line 263
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiD:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 265
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_dialog_close_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 266
    nop

    .line 267
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiA:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 268
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    .line 269
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 271
    :cond_0
    move v2, v0

    :goto_0
    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p1

    sub-int/2addr v3, v2

    .line 272
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiA:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 273
    const-string v4, "resetTitlePadding closeWidth: %s ,closeMargin: %s ,textMargin: %s ,padding: %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    const/4 p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v5, v0

    const/4 p1, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, p1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->fj(Ljava/lang/String;)V

    .line 274
    goto :goto_1

    .line 275
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiA:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 277
    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/xui/widget/dialogview/d;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiM:Z

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/xui/widget/dialogview/d;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiN:Z

    return p0
.end method

.method private dismiss()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiJ:Lcom/xiaopeng/xui/widget/dialogview/e$d;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiJ:Lcom/xiaopeng/xui/widget/dialogview/e$d;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aix:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/e$d;->onDismiss(Lcom/xiaopeng/xui/widget/dialogview/b;)V

    .line 157
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/e$a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiK:Lcom/xiaopeng/xui/widget/dialogview/e$a;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/e$a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiL:Lcom/xiaopeng/xui/widget/dialogview/e$a;

    return-object p0
.end method

.method private fj(Ljava/lang/String;)V
    .locals 2

    .line 660
    const-string v0, "xpui-XDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "--hashcode "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aix:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/d/f;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method static synthetic g(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/e$b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiH:Lcom/xiaopeng/xui/widget/dialogview/e$b;

    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/xiaopeng/xui/widget/dialogview/d;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/d;->dismiss()V

    return-void
.end method

.method static synthetic i(Lcom/xiaopeng/xui/widget/dialogview/d;)Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiD:Landroid/view/View;

    return-object p0
.end method

.method private init()V
    .locals 6

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XDialog:[I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XDialog_dialog_max_height:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 68
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XDialog_dialog_width:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    .line 69
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XDialog_dialog_height:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/d$a;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4}, Lcom/xiaopeng/xui/widget/dialogview/d$a;-><init>(Lcom/xiaopeng/xui/widget/dialogview/d;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiy:Lcom/xiaopeng/xui/widget/dialogview/d$a;

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiy:Lcom/xiaopeng/xui/widget/dialogview/d$a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/d$a;->setMaxHeight(I)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiy:Lcom/xiaopeng/xui/widget/dialogview/d$a;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/xiaopeng/xpui/R$dimen;->x_dialog_min_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/dialogview/d$a;->setMinimumHeight(I)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiy:Lcom/xiaopeng/xui/widget/dialogview/d$a;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/dialogview/d$a;->setWidth(I)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiy:Lcom/xiaopeng/xui/widget/dialogview/d$a;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/dialogview/d$a;->setHeight(I)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxHeight:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/d;->fj(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_dialog:I

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiy:Lcom/xiaopeng/xui/widget/dialogview/d$a;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiy:Lcom/xiaopeng/xui/widget/dialogview/d$a;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/d;->p(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method static synthetic j(Lcom/xiaopeng/xui/widget/dialogview/d;)Landroid/content/Context;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/d;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/e$c;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiI:Lcom/xiaopeng/xui/widget/dialogview/e$c;

    return-object p0
.end method

.method static synthetic l(Lcom/xiaopeng/xui/widget/dialogview/d;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private p(Landroid/view/View;)V
    .locals 1

    .line 82
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_title_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiz:Landroid/view/ViewGroup;

    .line 83
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiD:Landroid/view/View;

    .line 84
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiA:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContentView:Landroid/view/ViewGroup;

    .line 87
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_button1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiB:Lcom/xiaopeng/xui/widget/XButton;

    .line 88
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_button2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiC:Lcom/xiaopeng/xui/widget/XButton;

    .line 89
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_has_buttons:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiE:Landroid/view/View;

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiD:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiB:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiC:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiy:Lcom/xiaopeng/xui/widget/dialogview/d$a;

    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/d$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/dialogview/d$1;-><init>(Lcom/xiaopeng/xui/widget/dialogview/d;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/d$a;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 108
    return-void
.end method

.method private rO()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiF:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiF:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiF:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 197
    return-void
.end method

.method private rP()V
    .locals 4

    .line 482
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 483
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiB:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiy:Lcom/xiaopeng/xui/widget/dialogview/d$a;

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xui/d/g;->a(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 484
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiC:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiy:Lcom/xiaopeng/xui/widget/dialogview/d$a;

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xui/d/g;->a(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 485
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiD:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_dialog_close_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 486
    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 487
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiD:Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiy:Lcom/xiaopeng/xui/widget/dialogview/d$a;

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xui/d/g;->a(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 488
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x14
        0x0
        0x0
    .end array-data
.end method

.method private rQ()V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiB:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiC:Lcom/xiaopeng/xui/widget/XButton;

    .line 496
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiE:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 497
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiE:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 503
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiy:Lcom/xiaopeng/xui/widget/dialogview/d$a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/d$a;->a(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 453
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 477
    const/4 p1, 0x0

    return p1
.end method

.method public ab(Z)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiB:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiB:Lcom/xiaopeng/xui/widget/XButton;

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->a(Lcom/xiaopeng/xui/widget/XButton;Z)V

    .line 365
    return-void
.end method

.method public b(Lcom/xiaopeng/xui/widget/dialogview/e$b;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiH:Lcom/xiaopeng/xui/widget/dialogview/e$b;

    .line 438
    return-void
.end method

.method public b(Lcom/xiaopeng/xui/widget/dialogview/e$d;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiJ:Lcom/xiaopeng/xui/widget/dialogview/e$d;

    .line 448
    return-void
.end method

.method public bn(Z)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiD:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiD:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 245
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->bp(Z)V

    goto :goto_1

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiD:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/widget/dialogview/d$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/d$3;-><init>(Lcom/xiaopeng/xui/widget/dialogview/d;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 256
    :goto_1
    return-void
.end method

.method public bo(Z)V
    .locals 0

    .line 355
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiM:Z

    .line 356
    return-void
.end method

.method public c(Lcom/xiaopeng/xui/widget/dialogview/e$a;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiK:Lcom/xiaopeng/xui/widget/dialogview/e$a;

    .line 310
    return-void
.end method

.method public d(Lcom/xiaopeng/xui/widget/dialogview/e$a;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiL:Lcom/xiaopeng/xui/widget/dialogview/e$a;

    .line 341
    return-void
.end method

.method public eP(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 187
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/d;->rO()V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiF:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->eP(I)V

    .line 189
    return-void
.end method

.method public eS(I)V
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiO:Lcom/xiaopeng/xui/widget/dialogview/a;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiO:Lcom/xiaopeng/xui/widget/dialogview/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/a;->stop()V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiB:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    .line 421
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/a;

    new-instance v1, Lcom/xiaopeng/xui/widget/dialogview/d$b;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiB:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/xiaopeng/xui/widget/dialogview/d$b;-><init>(Lcom/xiaopeng/xui/widget/dialogview/d;Landroid/widget/TextView;I)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/a;-><init>(Lcom/xiaopeng/xui/widget/dialogview/a$a;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiO:Lcom/xiaopeng/xui/widget/dialogview/a;

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiO:Lcom/xiaopeng/xui/widget/dialogview/a;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiB:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xui/widget/dialogview/a;->F(Ljava/lang/String;I)V

    .line 424
    :cond_1
    return-void
.end method

.method public eT(I)V
    .locals 4

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiO:Lcom/xiaopeng/xui/widget/dialogview/a;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiO:Lcom/xiaopeng/xui/widget/dialogview/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/a;->stop()V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiC:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    .line 431
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/a;

    new-instance v1, Lcom/xiaopeng/xui/widget/dialogview/d$b;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiC:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v3, -0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/xiaopeng/xui/widget/dialogview/d$b;-><init>(Lcom/xiaopeng/xui/widget/dialogview/d;Landroid/widget/TextView;I)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/a;-><init>(Lcom/xiaopeng/xui/widget/dialogview/a$a;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiO:Lcom/xiaopeng/xui/widget/dialogview/a;

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiO:Lcom/xiaopeng/xui/widget/dialogview/a;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiC:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xui/widget/dialogview/a;->F(Ljava/lang/String;I)V

    .line 434
    :cond_1
    return-void
.end method

.method public h(Landroid/view/View;Z)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 205
    if-eqz p2, :cond_1

    .line 206
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiG:Lcom/xiaopeng/xui/widget/XScrollView;

    if-nez p2, :cond_0

    .line 207
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_dialog_scroll:I

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContentView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XScrollView;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiG:Lcom/xiaopeng/xui/widget/XScrollView;

    .line 209
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiG:Lcom/xiaopeng/xui/widget/XScrollView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XScrollView;->removeAllViews()V

    .line 210
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiG:Lcom/xiaopeng/xui/widget/XScrollView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 211
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiG:Lcom/xiaopeng/xui/widget/XScrollView;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XScrollView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 213
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    :goto_0
    return-void
.end method

.method public qs()Landroid/view/ViewGroup;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiy:Lcom/xiaopeng/xui/widget/dialogview/d$a;

    return-object v0
.end method

.method public r(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiB:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiB:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 304
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/d;->rQ()V

    .line 305
    return-void
.end method

.method public s(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiC:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiC:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/d;->rQ()V

    .line 336
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 182
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/d;->rO()V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiF:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->setMessage(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiA:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 169
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d;->aiA:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method
