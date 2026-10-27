.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;
.super Landroid/app/Dialog;
.source "XpWifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private Dc:Landroid/widget/ImageButton;

.field private Dd:Landroid/widget/TextView;

.field private Dh:Landroid/widget/LinearLayout;

.field private Di:Landroid/view/View;

.field private Dj:Landroid/view/View;

.field private Dk:Landroid/view/View;

.field private Do:Z

.field private Dt:Ljava/lang/String;

.field private final NA:Z

.field private final Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

.field private OA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;

.field private OB:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;

.field private OC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;

.field private Ov:Landroid/widget/Button;

.field private Ow:Landroid/widget/Button;

.field private Ox:Landroid/widget/Button;

.field private Oy:Landroid/view/View;

.field private Oz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;

.field private context:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;Z)V
    .locals 1

    .line 49
    const v0, 0x7f1102a4

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->mDownX:F

    .line 46
    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->mDownY:F

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->context:Landroid/content/Context;

    .line 52
    iput-boolean p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->NA:Z

    .line 53
    iput-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    .line 55
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->setCancelable(Z)V

    .line 56
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->setCanceledOnTouchOutside(Z)V

    .line 57
    return-void
.end method

.method private Z(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Do:Z

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->mDownX:F

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->mDownY:F

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)Landroid/widget/ImageButton;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dc:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)Landroid/view/View;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dj:Landroid/view/View;

    return-object p0
.end method

.method private confirm()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->OA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->OA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;

    invoke-interface {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->lQ()V

    .line 133
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->lR()V

    return-void
.end method

.method private fe()V
    .locals 2

    .line 111
    const v0, 0x7f090208

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dh:Landroid/widget/LinearLayout;

    .line 112
    const v0, 0x7f090454

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dj:Landroid/view/View;

    .line 113
    const v0, 0x7f0901f4

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dc:Landroid/widget/ImageButton;

    .line 114
    const v0, 0x7f090466

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dd:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dk:Landroid/view/View;

    .line 116
    const v0, 0x7f0901f5

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Ox:Landroid/widget/Button;

    .line 117
    const v0, 0x7f0901f7

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Ow:Landroid/widget/Button;

    .line 118
    const v0, 0x7f0901f6

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Ov:Landroid/widget/Button;

    .line 119
    const v0, 0x7f090455

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Di:Landroid/view/View;

    .line 120
    const v0, 0x7f09017f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Oy:Landroid/view/View;

    .line 121
    return-void
.end method

.method private lR()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Oz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Oz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;

    invoke-interface {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->lQ()V

    .line 149
    :goto_0
    return-void
.end method

.method private lS()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Ov:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Ov:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Ox:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Ox:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Ow:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Ow:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dc:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dc:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dj:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dj:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Di:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Di:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    :cond_5
    return-void
.end method

.method private nq()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->OB:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->OB:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;

    invoke-interface {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->lQ()V

    .line 141
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->OA:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;

    .line 246
    return-void
.end method

.method public aa(Z)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dc:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    if-eqz p1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dc:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dc:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dc:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->clearFocus()V

    .line 217
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dc:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 219
    :goto_0
    return-void
.end method

.method public b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Oz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;

    .line 250
    return-void
.end method

.method public c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->OB:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;

    .line 254
    return-void
.end method

.method public cS(Ljava/lang/String;)V
    .locals 1

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dt:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dd:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dd:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Z(Z)V

    .line 100
    return-void
.end method

.method public dp(Ljava/lang/String;)V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Oy:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Ox:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Ox:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 292
    return-void
.end method

.method public dq(I)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dt:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dd:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Dd:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_0
    return-void
.end method

.method public lQ()V
    .locals 1

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Z(Z)V

    .line 104
    return-void
.end method

.method public nr()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Ox:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Oy:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    return-void
.end method

.method public ns()Z
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Ox:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 303
    const/4 v0, 0x1

    return v0

    .line 305
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nt()Landroid/widget/Button;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Ox:Landroid/widget/Button;

    return-object v0
.end method

.method public nu()Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->OC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 75
    const v1, 0x7f0901f6

    if-ne v0, v1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->confirm()V

    goto :goto_0

    .line 77
    :cond_0
    const v1, 0x7f0901f7

    if-ne v0, v1, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->nq()V

    goto :goto_0

    .line 79
    :cond_1
    const v1, 0x7f0901f4

    if-ne v0, v1, :cond_2

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->lR()V

    goto :goto_0

    .line 81
    :cond_2
    const v1, 0x7f0901f5

    if-ne v0, v1, :cond_4

    .line 82
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 83
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->context:Landroid/content/Context;

    const v1, 0x7f100462

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 85
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->confirm()V

    goto :goto_0

    .line 87
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->nq()V

    .line 91
    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0126

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->setContentView(Landroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->fe()V

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->lS()V

    .line 66
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->Nz:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    iget-boolean v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->NA:Z

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/e;Landroid/view/View;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;Z)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->OC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->OC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;->nc()V

    .line 69
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 95
    return-void
.end method
