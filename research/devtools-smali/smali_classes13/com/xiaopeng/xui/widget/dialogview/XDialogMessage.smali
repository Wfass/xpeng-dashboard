.class Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "XDialogMessage.java"


# instance fields
.field private PC:Landroid/widget/ImageView;

.field private aiu:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/xiaopeng/xpui/R$layout;->x_dialog_message:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->nL()V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->aiu:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->rN()V

    return-void
.end method

.method private nL()V
    .locals 1

    .line 49
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_message:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->aiu:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->PC:Landroid/widget/ImageView;

    .line 51
    return-void
.end method

.method private rM()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->aiu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->rN()V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->aiu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage$1;-><init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 76
    :goto_0
    return-void
.end method

.method private rN()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->aiu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 80
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->aiu:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->aiu:Landroid/widget/TextView;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->aiu:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    return-void
.end method


# virtual methods
.method public eP(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->aiu:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->rM()V

    .line 56
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->aiu:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->rM()V

    .line 61
    return-void
.end method
