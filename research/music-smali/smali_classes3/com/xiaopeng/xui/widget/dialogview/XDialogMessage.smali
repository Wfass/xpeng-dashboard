.class Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "XDialogMessage.java"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mTextMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lbyg$j;->x_dialog_message:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->initView()V

    return-void
.end method

.method private _checkLines()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mTextMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mTextMessage:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mTextMessage:Landroid/widget/TextView;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mTextMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mTextMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->_checkLines()V

    return-void
.end method

.method private checkLines()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mTextMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->_checkLines()V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mTextMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage$1;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 1

    .line 49
    sget v0, Lbyg$h;->x_dialog_message:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mTextMessage:Landroid/widget/TextView;

    .line 50
    sget v0, Lbyg$h;->x_dialog_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mImageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setIcon(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mTextMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->checkLines()V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->mTextMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->checkLines()V

    return-void
.end method
