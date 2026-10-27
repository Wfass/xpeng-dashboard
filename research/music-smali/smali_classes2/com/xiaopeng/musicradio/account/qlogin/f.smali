.class public Lcom/xiaopeng/musicradio/account/qlogin/f;
.super Landroid/widget/LinearLayout;
.source "QLoginFlowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:I = 0x64

.field public static b:I = 0xa0

.field public static c:I = 0xdc


# instance fields
.field protected d:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/xiaopeng/xui/widget/XLoading;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/xiaopeng/musicradio/account/qlogin/h;

.field private q:Lcom/xiaopeng/musicradio/account/qlogin/e;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Lcom/xiaopeng/xui/widget/XTextView;

.field private w:Lcom/xiaopeng/xui/widget/XButton;

.field private final x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure;)V
    .locals 3

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "http://y.qq.com/y/static/protocol/car_privacy.html"

    .line 63
    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->r:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->s:Ljava/lang/String;

    const-string v0, "http://y.qq.com/y/static/protocol/car_service.html"

    .line 65
    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->t:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->u:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->x:Ljava/util/HashMap;

    .line 74
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->y:Lcom/xiaopeng/musicradio/widget/k;

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->e:Landroid/content/Context;

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->dialog_qr_login:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->configuration_changed_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->d:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->d:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->a()V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->d:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    new-instance v1, Lcom/xiaopeng/musicradio/account/qlogin/f$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/account/qlogin/f$1;-><init>(Lcom/xiaopeng/musicradio/account/qlogin/f;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->setOnLayoutChangedListener(Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;)V

    .line 101
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->v:Lcom/xiaopeng/xui/widget/XTextView;

    .line 102
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_qr_code_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->l:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_qr_account_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->m:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_qq_privacy:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->o:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_qq_service_agreement:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->n:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_code_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->f:Landroid/widget/ImageView;

    .line 108
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_code_overlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->g:Landroid/widget/ImageView;

    .line 109
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_code:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->h:Landroid/widget/ImageView;

    .line 110
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->i:Landroid/widget/ImageView;

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->v_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->j:Lcom/xiaopeng/xui/widget/XLoading;

    .line 113
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_code_fail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->k:Landroid/widget/ImageView;

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->cancle_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->w:Lcom/xiaopeng/xui/widget/XButton;

    .line 118
    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bF:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->setVuiSceneId(Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->setVuiEngine(Lbxu;)V

    .line 120
    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/app/XDialogPure;->setContentView(Landroid/view/View;)V

    .line 121
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/f;->f()V

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->y:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/f;->a()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/account/qlogin/f;)Lcom/xiaopeng/musicradio/widget/k;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->y:Lcom/xiaopeng/musicradio/widget/k;

    return-object p0
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 6

    const/16 v0, 0x5dc

    .line 278
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->x:Ljava/util/HashMap;

    sget v0, Lcom/xiaopeng/musicradio/account/qlogin/f;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 280
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/xiaopeng/musicradio/account/qlogin/f;->a:I

    :goto_0
    move v5, p1

    .line 281
    new-instance p1, Lcom/xiaopeng/musicradio/web/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->e:Landroid/content/Context;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->u:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->s:Ljava/lang/String;

    :goto_1
    move-object v3, p3

    const/4 v4, -0x1

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/web/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 282
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/web/b;->d()V

    :cond_2
    return-void
.end method

.method private e()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->v:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->x:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/account/qlogin/f;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "http://y.qq.com/y/static/protocol/car_service.html"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->x:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/account/qlogin/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "https://st.music.163.com/official-terms/service"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->x:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/account/qlogin/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "https://activity.kugou.com/privacy/v-c9ea856f/index.html"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->x:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/account/qlogin/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "http://y.qq.com/y/static/protocol/car_privacy.html"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->x:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/account/qlogin/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "https://st.music.163.com/official-terms/privacy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->x:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/musicradio/account/qlogin/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "https://activity.kugou.com/privacy/v-076606f5/index.html"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/f;->e()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "LoginFlowFragment"

    const-string v1, "showQrLoginDialog"

    .line 230
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->i:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->j:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    if-nez p2, :cond_1

    const-string p2, "wx"

    .line 194
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->h:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/f;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/common/k$c;->qr_code_size_wx:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 197
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 199
    iget-object p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->h:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "LoginFlowFragment"

    const-string v1, "showRequestQrDialog"

    .line 218
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->p:Lcom/xiaopeng/musicradio/account/qlogin/h;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/account/qlogin/h;->c()V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->j:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "LoginFlowFragment"

    const-string v1, "showQrLoginFailDialog"

    .line 242
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->i:Landroid/widget/ImageView;

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_qr_login_refresh:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->i:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->j:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "LoginFlowFragment"

    const-string v1, "showQrLoginOvertimeDialog"

    .line 254
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->i:Landroid/widget/ImageView;

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_qr_login_refresh_for_overtime:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->j:Lcom/xiaopeng/xui/widget/XLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginFlowFragment"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_retry:I

    if-ne v0, v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/account/qlogin/f;->b()V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->tv_qq_service_agreement:I

    if-ne v0, v1, :cond_1

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->t:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/f;->a(ILjava/lang/String;Z)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->tv_qq_privacy:I

    if-ne v0, v1, :cond_2

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->r:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/account/qlogin/f;->a(ILjava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/account/qlogin/f;->e()V

    return-void
.end method

.method public setCancleListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->w:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setQLoginFlowDialog(Lcom/xiaopeng/musicradio/account/qlogin/e;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->q:Lcom/xiaopeng/musicradio/account/qlogin/e;

    return-void
.end method

.method public setQrCodePresenter(Lcom/xiaopeng/musicradio/account/qlogin/h;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->p:Lcom/xiaopeng/musicradio/account/qlogin/h;

    return-void
.end method

.method public setQrCodeType(Ljava/lang/String;)V
    .locals 8

    .line 157
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->vip_qr_code_tips_wx:I

    .line 158
    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->vip_login_account_tips_1:I

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xd5c

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0xe20

    if-eq v2, v3, :cond_2

    const v3, 0x32353d

    if-eq v2, v3, :cond_1

    const v3, 0x6dd8f70b

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "netease"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v6

    goto :goto_1

    :cond_1
    const-string v2, "kgwx"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_1

    :cond_2
    const-string v2, "qq"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const-string v2, "kg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v5

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_8

    if-eq p1, v6, :cond_7

    const-string v2, "https://activity.kugou.com/privacy/v-d3a5bcce/index.html"

    const-string v3, "https://activity.kugou.com/privacy/v-c9ea856f/index.html"

    const-string v6, "https://activity.kugou.com/privacy/v-1009cb3d/index.html"

    const-string v7, "https://activity.kugou.com/privacy/v-076606f5/index.html"

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    goto :goto_2

    .line 180
    :cond_5
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->vip_qr_code_tips_wx:I

    .line 181
    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->vip_login_account_netease_tips:I

    .line 182
    iput-object v7, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->r:Ljava/lang/String;

    .line 183
    iput-object v6, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->s:Ljava/lang/String;

    .line 184
    iput-object v3, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->t:Ljava/lang/String;

    .line 185
    iput-object v2, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->u:Ljava/lang/String;

    goto :goto_2

    .line 172
    :cond_6
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->vip_qr_code_tips_kugou:I

    .line 173
    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->vip_login_account_netease_tips:I

    .line 174
    iput-object v7, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->r:Ljava/lang/String;

    .line 175
    iput-object v6, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->s:Ljava/lang/String;

    .line 176
    iput-object v3, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->t:Ljava/lang/String;

    .line 177
    iput-object v2, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->u:Ljava/lang/String;

    goto :goto_2

    .line 164
    :cond_7
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->vip_qr_code_tips_netease:I

    .line 165
    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->vip_login_account_netease_tips:I

    const-string p1, "https://st.music.163.com/official-terms/privacy"

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->r:Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->s:Ljava/lang/String;

    const-string p1, "https://st.music.163.com/official-terms/service"

    .line 168
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->t:Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->u:Ljava/lang/String;

    goto :goto_2

    .line 161
    :cond_8
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->vip_qr_code_tips_qq:I

    .line 188
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitleRes(I)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f;->v:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    return-void
.end method
