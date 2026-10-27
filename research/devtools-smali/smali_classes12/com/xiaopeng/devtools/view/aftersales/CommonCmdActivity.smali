.class public Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "CommonCmdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/aftersales/b;


# instance fields
.field private DE:Landroid/widget/EditText;

.field private DF:Landroid/widget/EditText;

.field private DG:Landroid/widget/EditText;

.field private DH:Landroid/widget/EditText;

.field private DI:Landroid/widget/EditText;

.field private DJ:Landroid/widget/Button;

.field private DK:Landroid/widget/Button;

.field private DL:Landroid/widget/Button;

.field private DM:Landroid/widget/Button;

.field private DN:Landroid/widget/Button;

.field private DO:Landroid/widget/Button;

.field private DQ:Landroid/widget/Button;

.field private DR:Landroid/widget/Button;

.field private DS:Landroid/widget/Button;

.field private DT:Lcom/xiaopeng/xui/app/c;

.field private DU:Lcom/xiaopeng/devtools/presenter/aftersales/b;

.field private DV:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private synthetic b(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic c(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic cV(Ljava/lang/String;)V
    .locals 5

    .line 194
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 195
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 196
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#FF8800"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 197
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 196
    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 198
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 199
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 198
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 200
    const-string v1, "\r\n\r\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 201
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->f(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    .line 203
    return-void
.end method

.method private synthetic d(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic e(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic f(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic g(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic h(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic i(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic j(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$HPT7Pun7FfDjGmLZoYkb3WS_4ls(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->c(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$X3tkOEvlquMBrjmGlnZfNVokB2k(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->e(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$YbPzcbNT7RyAFu_mHM8i9ZqQJfg(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->i(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$eT7hRZeMEGKg4AyxQhstV7CZVzc(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->f(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$jk_KSDJHhBLZRcXsF07HnSc59pU(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->b(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$lcjbviMFyktD1UG9LvDLaIzc-lA(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->h(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$ndqeXtO50A8Yk4fxc2xTmv1xrGA(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->cV(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$oaiLcXnLjQJcK721g7ZZSutWGCQ(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->j(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$wHolMx-koL_JzfXyd86VtD0-0Gw(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->d(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$xNjU_sNzVOzSs_zieMOnk_91Iyo(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->g(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method


# virtual methods
.method public cU(Ljava/lang/String;)V
    .locals 1

    .line 193
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$ndqeXtO50A8Yk4fxc2xTmv1xrGA;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$ndqeXtO50A8Yk4fxc2xTmv1xrGA;-><init>(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public fd()V
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 34
    const v0, 0x7f0c0032

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->setContentView(I)V

    .line 35
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/b;-><init>(Lcom/xiaopeng/devtools/view/aftersales/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DU:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    .line 36
    return-void
.end method

.method public fe()V
    .locals 2

    .line 40
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 41
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    const v1, 0x7f110233

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    .line 42
    const v0, 0x7f0900ac

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DJ:Landroid/widget/Button;

    .line 43
    const v0, 0x7f0901c9

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DE:Landroid/widget/EditText;

    .line 44
    const v0, 0x7f0900b3

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DK:Landroid/widget/Button;

    .line 45
    const v0, 0x7f0901ca

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DF:Landroid/widget/EditText;

    .line 46
    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DL:Landroid/widget/Button;

    .line 47
    const v0, 0x7f0900b2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DM:Landroid/widget/Button;

    .line 48
    const v0, 0x7f0901c0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DG:Landroid/widget/EditText;

    .line 49
    const v0, 0x7f0900a4

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DN:Landroid/widget/Button;

    .line 50
    const v0, 0x7f0901bf

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DH:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DO:Landroid/widget/Button;

    .line 52
    const v0, 0x7f0900b1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DQ:Landroid/widget/Button;

    .line 53
    const v0, 0x7f0901c3

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DI:Landroid/widget/EditText;

    .line 54
    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DR:Landroid/widget/Button;

    .line 55
    const v0, 0x7f0900ae

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DS:Landroid/widget/Button;

    .line 56
    return-void
.end method

.method public ff()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DJ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DL:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DM:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DN:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DO:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DQ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DR:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DS:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f10011d

    const v3, 0x7f100403

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 113
    :sswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DF:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 115
    const v4, 0x7f100280

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, v4, v1}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->e(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/app/c;->dW(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$lcjbviMFyktD1UG9LvDLaIzc-lA;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$lcjbviMFyktD1UG9LvDLaIzc-lA;-><init>(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    const-string v1, ""

    .line 119
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DU:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->bR(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_0
    const p1, 0x7f1003f3

    invoke-static {p1}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 125
    goto/16 :goto_0

    .line 136
    :sswitch_1
    const p1, 0x7f1001d7

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->e(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 138
    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/app/c;->dW(I)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 139
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$eT7hRZeMEGKg4AyxQhstV7CZVzc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$eT7hRZeMEGKg4AyxQhstV7CZVzc;-><init>(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const-string v0, ""

    .line 140
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DU:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->hZ()V

    .line 143
    goto/16 :goto_0

    .line 171
    :sswitch_2
    const p1, 0x7f1001d3

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->e(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 173
    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/app/c;->dW(I)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 174
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$HPT7Pun7FfDjGmLZoYkb3WS_4ls;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$HPT7Pun7FfDjGmLZoYkb3WS_4ls;-><init>(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const-string v0, ""

    .line 175
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DU:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->ia()V

    .line 178
    goto/16 :goto_0

    .line 100
    :sswitch_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DI:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 102
    :cond_1
    const-string p1, ""

    .line 104
    :cond_2
    const v4, 0x7f1001c5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, v4, v1}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->e(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/app/c;->dW(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$YbPzcbNT7RyAFu_mHM8i9ZqQJfg;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$YbPzcbNT7RyAFu_mHM8i9ZqQJfg;-><init>(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    const-string v1, ""

    .line 108
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DU:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->bU(Ljava/lang/String;)V

    .line 111
    goto/16 :goto_0

    .line 180
    :sswitch_4
    const p1, 0x7f1001a7

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->e(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 182
    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/app/c;->dW(I)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 183
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$jk_KSDJHhBLZRcXsF07HnSc59pU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$jk_KSDJHhBLZRcXsF07HnSc59pU;-><init>(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const-string v0, ""

    .line 184
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DU:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->ib()V

    goto/16 :goto_0

    .line 86
    :sswitch_5
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DE:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 87
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 88
    const v4, 0x7f100168

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, v4, v1}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->e(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/app/c;->dW(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$oaiLcXnLjQJcK721g7ZZSutWGCQ;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$oaiLcXnLjQJcK721g7ZZSutWGCQ;-><init>(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    const-string v1, ""

    .line 92
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DU:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->bQ(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_3
    const p1, 0x7f1003f2

    invoke-static {p1}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 98
    goto/16 :goto_0

    .line 145
    :sswitch_6
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DG:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    .line 147
    :cond_4
    const-string p1, ""

    .line 149
    :cond_5
    const v4, 0x7f100123

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, v4, v1}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->e(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/app/c;->dW(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 152
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$X3tkOEvlquMBrjmGlnZfNVokB2k;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$X3tkOEvlquMBrjmGlnZfNVokB2k;-><init>(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    const-string v1, ""

    .line 153
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DU:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->bS(Ljava/lang/String;)V

    .line 156
    goto/16 :goto_0

    .line 158
    :sswitch_7
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DH:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_7

    .line 160
    :cond_6
    const-string p1, ""

    .line 162
    :cond_7
    const v4, 0x7f1000ef

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, v4, v1}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->e(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/app/c;->dW(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 165
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$wHolMx-koL_JzfXyd86VtD0-0Gw;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$wHolMx-koL_JzfXyd86VtD0-0Gw;-><init>(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    const-string v1, ""

    .line 166
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DU:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->bT(Ljava/lang/String;)V

    .line 169
    goto :goto_0

    .line 127
    :sswitch_8
    const p1, 0x7f10007a

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->e(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 129
    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/app/c;->dW(I)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 130
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$xNjU_sNzVOzSs_zieMOnk_91Iyo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$CommonCmdActivity$xNjU_sNzVOzSs_zieMOnk_91Iyo;-><init>(Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const-string v0, ""

    .line 131
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DU:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->hY()V

    .line 134
    nop

    .line 189
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09009a -> :sswitch_8
        0x7f0900a3 -> :sswitch_7
        0x7f0900a4 -> :sswitch_6
        0x7f0900ac -> :sswitch_5
        0x7f0900ae -> :sswitch_4
        0x7f0900b0 -> :sswitch_3
        0x7f0900b1 -> :sswitch_2
        0x7f0900b2 -> :sswitch_1
        0x7f0900b3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .line 208
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/CommonCmdActivity;->DU:Lcom/xiaopeng/devtools/presenter/aftersales/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/b;->onDestroy()V

    .line 210
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 79
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 80
    return-void
.end method
