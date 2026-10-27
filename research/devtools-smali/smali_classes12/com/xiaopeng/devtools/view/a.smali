.class public Lcom/xiaopeng/devtools/view/a;
.super Landroid/app/Dialog;
.source "NewConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/a$a;
    }
.end annotation


# instance fields
.field private Dc:Landroid/widget/ImageButton;

.field private Dd:Landroid/widget/TextView;

.field private De:Landroid/widget/TextView;

.field private Df:Landroid/widget/Button;

.field private Dg:Landroid/widget/Button;

.field private Dh:Landroid/widget/LinearLayout;

.field private Di:Landroid/view/View;

.field private Dj:Landroid/view/View;

.field private Dk:Landroid/view/View;

.field private Dl:Landroid/view/animation/AnimationSet;

.field private Dm:Landroid/view/animation/AnimationSet;

.field private Dn:Landroid/view/animation/Animation;

.field private Do:Z

.field private Dp:Lcom/xiaopeng/devtools/view/a$a;

.field private Dq:Lcom/xiaopeng/devtools/view/a$a;

.field private Dr:Ljava/lang/String;

.field private Ds:Ljava/lang/String;

.field private Dt:Ljava/lang/String;

.field private Du:Ljava/lang/String;

.field private Dv:Z

.field private mDownX:F

.field private mDownY:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 53
    const v0, 0x7f11029e

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/view/a;->mDownX:F

    .line 49
    iput v0, p0, Lcom/xiaopeng/devtools/view/a;->mDownY:F

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/a;->Dv:Z

    .line 55
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/a;->setOwnerActivity(Landroid/app/Activity;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/a;->setCancelable(Z)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/a;->setCanceledOnTouchOutside(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010010

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/view/b;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dl:Landroid/view/animation/AnimationSet;

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010011

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/view/b;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dm:Landroid/view/animation/AnimationSet;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dm:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/xiaopeng/devtools/view/a$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/a$1;-><init>(Lcom/xiaopeng/devtools/view/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 87
    new-instance v0, Lcom/xiaopeng/devtools/view/a$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/a$2;-><init>(Lcom/xiaopeng/devtools/view/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dn:Landroid/view/animation/Animation;

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dn:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 99
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/p;->ah(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 101
    return-void
.end method

.method private Z(Z)V
    .locals 1

    .line 175
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/a;->Do:Z

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dg:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dn:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dk:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dm:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 178
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/a;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/xiaopeng/devtools/view/a;->mDownX:F

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/a;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/a;->Dk:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/a;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/a;->aa(Z)V

    return-void
.end method

.method private aa(Z)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dc:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 268
    return-void

    .line 270
    :cond_0
    if-eqz p1, :cond_1

    .line 271
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dc:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 272
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dc:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dc:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->clearFocus()V

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dc:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 277
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/a;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/xiaopeng/devtools/view/a;->mDownY:F

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/a;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/view/a;->Do:Z

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/a;)V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method private confirm()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dq:Lcom/xiaopeng/devtools/view/a$a;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dq:Lcom/xiaopeng/devtools/view/a$a;

    invoke-interface {v0, p0}, Lcom/xiaopeng/devtools/view/a$a;->onClick(Lcom/xiaopeng/devtools/view/a;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/a;->lQ()V

    .line 205
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/a;)V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/view/a;)Landroid/widget/ImageButton;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/a;->Dc:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/view/a;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/xiaopeng/devtools/view/a;->mDownX:F

    return p0
.end method

.method private fe()V
    .locals 2

    .line 181
    const v0, 0x7f090453

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dh:Landroid/widget/LinearLayout;

    .line 182
    const v0, 0x7f0901f4

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dc:Landroid/widget/ImageButton;

    .line 183
    const v0, 0x7f0903bb

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dd:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0903b9

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/a;->De:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0900ce

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Df:Landroid/widget/Button;

    .line 186
    const v0, 0x7f0900d3

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dg:Landroid/widget/Button;

    .line 187
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dk:Landroid/view/View;

    .line 188
    const v0, 0x7f090455

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Di:Landroid/view/View;

    .line 189
    const v0, 0x7f090454

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dj:Landroid/view/View;

    .line 190
    return-void
.end method

.method static synthetic g(Lcom/xiaopeng/devtools/view/a;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/xiaopeng/devtools/view/a;->mDownY:F

    return p0
.end method

.method static synthetic h(Lcom/xiaopeng/devtools/view/a;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/a;->lR()V

    return-void
.end method

.method private lJ()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dd:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/a;->Dt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->De:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/a;->Du:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Df:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/a;->Dr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dg:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/a;->Ds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method private lR()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dp:Lcom/xiaopeng/devtools/view/a$a;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dp:Lcom/xiaopeng/devtools/view/a$a;

    invoke-interface {v0, p0}, Lcom/xiaopeng/devtools/view/a$a;->onClick(Lcom/xiaopeng/devtools/view/a;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/a;->lQ()V

    .line 213
    :goto_0
    return-void
.end method

.method private lS()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Df:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Df:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dg:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dg:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dc:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dc:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dj:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dj:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Di:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Di:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/devtools/view/a$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/a$3;-><init>(Lcom/xiaopeng/devtools/view/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/view/a$a;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dp:Lcom/xiaopeng/devtools/view/a$a;

    .line 360
    return-void
.end method

.method public b(Lcom/xiaopeng/devtools/view/a$a;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dq:Lcom/xiaopeng/devtools/view/a$a;

    .line 364
    return-void
.end method

.method public cH(I)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 353
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 354
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/a;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 355
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dj:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    return-void
.end method

.method public cQ(Ljava/lang/String;)V
    .locals 2

    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dr:Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Df:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Df:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Df:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Ds:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 288
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dg:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Df:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 293
    :cond_2
    :goto_0
    return-void
.end method

.method public cR(Ljava/lang/String;)V
    .locals 2

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Ds:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dg:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dg:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dg:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 304
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Df:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dg:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 309
    :cond_2
    :goto_0
    return-void
.end method

.method public cS(Ljava/lang/String;)V
    .locals 1

    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Dt:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dd:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dd:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_0
    return-void
.end method

.method public cT(Ljava/lang/String;)V
    .locals 1

    .line 321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/a;->Du:Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->De:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->De:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 167
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/a;->Z(Z)V

    .line 168
    return-void
.end method

.method public lQ()V
    .locals 1

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/a;->Z(Z)V

    .line 172
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 149
    const v0, 0x7f0900d3

    if-ne p1, v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/a;->confirm()V

    goto :goto_0

    .line 151
    :cond_0
    const v0, 0x7f0900ce

    if-ne p1, v0, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/a;->lR()V

    goto :goto_0

    .line 153
    :cond_1
    const v0, 0x7f0901f4

    if-ne p1, v0, :cond_2

    .line 154
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/a;->lR()V

    .line 156
    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const p1, 0x7f0c007f

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/a;->setContentView(I)V

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/a;->fe()V

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/a;->lJ()V

    .line 143
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/a;->lS()V

    .line 144
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 160
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/a;->Dv:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/a;->Dk:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/a;->Dl:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    :cond_0
    return-void
.end method
