.class public Lbly;
.super Lcom/xiaopeng/musicradio/widget/c;
.source "RdAlbumDetailAdapter.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbly$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/c<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;",
        "Lbly$a;",
        ">;",
        "Lcom/xiaopeng/musicradio/common/f;"
    }
.end annotation


# static fields
.field public static d:I = 0x0

.field public static e:I = 0x1

.field public static f:I = 0x2

.field public static g:I = 0x4


# instance fields
.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/content/Context;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/xiaopeng/xui/widget/XLoading;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 6

    .line 72
    sget v2, Lcom/xiaopeng/musicradio/program/b$f;->item_album_tracklist_new:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/c;-><init>(Landroid/content/Context;ILjava/util/List;ZZ)V

    const/4 p2, 0x0

    .line 57
    iput p2, p0, Lbly;->j:I

    const/4 p2, -0x1

    .line 58
    iput p2, p0, Lbly;->k:I

    const/4 p2, 0x1

    .line 59
    iput p2, p0, Lbly;->l:I

    .line 73
    iput-object p1, p0, Lbly;->m:Landroid/content/Context;

    .line 74
    iget-object p1, p0, Lbly;->m:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/xiaopeng/musicradio/program/b$b;->xmly_payment_type_default:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lbly;->p:I

    return-void
.end method

.method static synthetic a(Lbly;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 47
    iget-object p0, p0, Lbly;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method

.method private a(Lbly$a;I)V
    .locals 9

    .line 224
    iget-object v0, p0, Lbly;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 225
    invoke-static {p1}, Lbly$a;->a(Lbly$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-static {p1}, Lbly$a;->b(Lbly$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getOrderNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getCreateTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getCreateTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getUpdateTime()J

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/bs;->h(J)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {p1}, Lbly$a;->c(Lbly$a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-static {p1}, Lbly$a;->d(Lbly$a;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 235
    invoke-static {p1}, Lbly$a;->d(Lbly$a;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-static {p1}, Lbly$a;->d(Lbly$a;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 237
    invoke-static {p1}, Lbly$a;->d(Lbly$a;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 238
    new-instance v1, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-direct {v1}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;-><init>()V

    .line 239
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setType(I)V

    .line 240
    invoke-static {p1}, Lbly$a;->e(Lbly$a;)Lcom/xiaopeng/xui/widget/XLinearLayout;

    move-result-object v1

    new-instance v3, Lbly$2;

    invoke-direct {v3, p0, p1, p2}, Lbly$2;-><init>(Lbly;Lbly$a;I)V

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v1

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    .line 256
    invoke-static {p1}, Lbly$a;->f(Lbly$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    .line 257
    invoke-static {p1}, Lbly$a;->f(Lbly$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getOrderNum()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setText(I)V

    .line 258
    invoke-static {p1}, Lbly$a;->b(Lbly$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Lbly$a;->b(Lbly$a;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/xiaopeng/musicradio/program/b$a;->reading_index_color:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 259
    invoke-static {p1}, Lbly$a;->b(Lbly$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 262
    :cond_1
    invoke-static {p1}, Lbly$a;->f(Lbly$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    .line 263
    invoke-static {p1}, Lbly$a;->b(Lbly$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Lbly$a;->b(Lbly$a;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/xiaopeng/musicradio/program/b$a;->reading_index_color:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 264
    invoke-static {p1}, Lbly$a;->b(Lbly$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    :goto_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getPaymentType()I

    move-result v1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v1, :cond_2

    .line 267
    invoke-static {p1}, Lbly$a;->g(Lbly$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_2

    .line 269
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getPaymentType()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 270
    invoke-static {p1}, Lbly$a;->g(Lbly$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 271
    invoke-static {p1}, Lbly$a;->g(Lbly$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    sget v7, Lcom/xiaopeng/musicradio/program/b$c;->ic_reading_vip:I

    invoke-virtual {v1, v7}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_2

    .line 273
    :cond_3
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getPaymentType()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 274
    invoke-static {p1}, Lbly$a;->g(Lbly$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 276
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1}, Lbea;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 277
    invoke-static {p1}, Lbly$a;->g(Lbly$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    sget v7, Lcom/xiaopeng/musicradio/program/b$c;->ic_reading_paid:I

    invoke-virtual {v1, v7}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_2

    .line 279
    :cond_4
    invoke-static {p1}, Lbly$a;->g(Lbly$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    sget v7, Lcom/xiaopeng/musicradio/program/b$c;->ic_reading_payment:I

    invoke-virtual {v1, v7}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_2

    .line 283
    :cond_5
    invoke-static {p1}, Lbly$a;->g(Lbly$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 285
    :goto_2
    iget v1, p0, Lbly;->k:I

    const/4 v7, 0x3

    if-ne p2, v1, :cond_b

    .line 287
    invoke-static {p1}, Lbly$a;->a(Lbly$a;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1}, Lbly$a;->a(Lbly$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v8, Lcom/xiaopeng/musicradio/program/b$a;->x_color_primary:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    invoke-static {p1}, Lbly$a;->b(Lbly$a;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 289
    invoke-static {p1}, Lbly$a;->f(Lbly$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setSelected(Z)V

    .line 291
    iget p2, p0, Lbly;->l:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_a

    if-ne p2, v3, :cond_6

    goto :goto_4

    :cond_6
    if-ne v6, p2, :cond_7

    .line 297
    invoke-static {p1}, Lbly$a;->h(Lbly$a;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 298
    invoke-static {p1}, Lbly$a;->i(Lbly$a;)Lcom/xiaopeng/xui/widget/XLoading;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    :goto_3
    move p2, v6

    goto/16 :goto_6

    :cond_7
    if-ne v5, p2, :cond_8

    .line 301
    invoke-static {p1}, Lbly$a;->h(Lbly$a;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToShow()V

    .line 302
    invoke-static {p1}, Lbly$a;->i(Lbly$a;)Lcom/xiaopeng/xui/widget/XLoading;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_3

    :cond_8
    if-eq v7, p2, :cond_9

    const/4 v1, 0x5

    if-ne v1, p2, :cond_c

    .line 304
    :cond_9
    invoke-static {p1}, Lbly$a;->h(Lbly$a;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    .line 305
    invoke-static {p1}, Lbly$a;->h(Lbly$a;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 306
    invoke-static {p1}, Lbly$a;->i(Lbly$a;)Lcom/xiaopeng/xui/widget/XLoading;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_5

    .line 292
    :cond_a
    :goto_4
    invoke-static {p1}, Lbly$a;->a(Lbly$a;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1}, Lbly$a;->a(Lbly$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v8, Lcom/xiaopeng/musicradio/program/b$a;->color_19181D:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    invoke-static {p1}, Lbly$a;->h(Lbly$a;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 294
    invoke-static {p1}, Lbly$a;->i(Lbly$a;)Lcom/xiaopeng/xui/widget/XLoading;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_5

    .line 309
    :cond_b
    invoke-static {p1}, Lbly$a;->a(Lbly$a;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1}, Lbly$a;->a(Lbly$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/xiaopeng/musicradio/program/b$a;->x_color_text_1:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    invoke-static {p1}, Lbly$a;->b(Lbly$a;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 311
    invoke-static {p1}, Lbly$a;->f(Lbly$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setSelected(Z)V

    .line 313
    invoke-static {p1}, Lbly$a;->h(Lbly$a;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 315
    invoke-static {p1}, Lbly$a;->i(Lbly$a;)Lcom/xiaopeng/xui/widget/XLoading;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    :cond_c
    :goto_5
    move p2, v2

    .line 318
    :goto_6
    invoke-static {p1}, Lbly$a;->e(Lbly$a;)Lcom/xiaopeng/xui/widget/XLinearLayout;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getOrderNum()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiPosition(I)V

    .line 319
    invoke-static {p1}, Lbly$a;->e(Lbly$a;)Lcom/xiaopeng/xui/widget/XLinearLayout;

    move-result-object v1

    invoke-static {p1}, Lbly$a;->j(Lbly$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/xiaopeng/musicradio/program/b$g;->vui_play_position:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 320
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaopeng/musicradio/vui/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getOrderNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getOrderNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    .line 319
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 321
    invoke-static {p1}, Lbly$a;->e(Lbly$a;)Lcom/xiaopeng/xui/widget/XLinearLayout;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lbly$a;->j(Lbly$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getOrderNum()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 322
    invoke-static {p1}, Lbly$a;->e(Lbly$a;)Lcom/xiaopeng/xui/widget/XLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lbly$a;->e(Lbly$a;)Lcom/xiaopeng/xui/widget/XLinearLayout;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 323
    invoke-static {p1}, Lbly$a;->e(Lbly$a;)Lcom/xiaopeng/xui/widget/XLinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    invoke-static {p1}, Lbly$a;->e(Lbly$a;)Lcom/xiaopeng/xui/widget/XLinearLayout;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setExecuteVirtualTag(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lbly;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 47
    iget-object p0, p0, Lbly;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method

.method static synthetic c(Lbly;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 47
    iget-object p0, p0, Lbly;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method

.method static synthetic d(Lbly;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 47
    iget-object p0, p0, Lbly;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method

.method static synthetic e(Lbly;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 47
    iget-object p0, p0, Lbly;->i:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic f(Lbly;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 47
    iget-object p0, p0, Lbly;->i:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private l()V
    .locals 5

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 89
    iget-object v2, p0, Lbly;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 90
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lbly;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 95
    iget-object v1, p0, Lbly;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbly$a;
    .locals 2

    .line 194
    invoke-virtual {p0}, Lbly;->c()Landroid/view/View;

    move-result-object p1

    .line 195
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 196
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/xiaopeng/musicradio/program/b$b;->playlist_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 v1, -0x1

    invoke-direct {v0, v1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance p2, Lbly$a;

    invoke-direct {p2, p0, p1}, Lbly$a;-><init>(Lbly;Landroid/view/View;)V

    return-object p2
.end method

.method public a(II)V
    .locals 2

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayState: position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RdAlbumDetailAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iput p2, p0, Lbly;->k:I

    .line 354
    iput p1, p0, Lbly;->l:I

    .line 355
    sget p2, Lbly;->d:I

    if-eq p1, p2, :cond_0

    .line 356
    invoke-virtual {p0}, Lbly;->notifyDataSetChanged()V

    .line 358
    :cond_0
    iget-object p1, p0, Lbly;->i:Landroidx/recyclerview/widget/RecyclerView;

    instance-of p1, p1, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    if-eqz p1, :cond_1

    .line 359
    iget-object p1, p0, Lbly;->i:Landroidx/recyclerview/widget/RecyclerView;

    check-cast p1, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->b()V

    :cond_1
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 331
    iput p1, p0, Lbly;->j:I

    if-eqz p2, :cond_2

    .line 333
    iget-object p1, p0, Lbly;->i:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbly;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lbly;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isInLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 334
    :cond_0
    iget-object p1, p0, Lbly;->i:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lbly$3;

    invoke-direct {p2, p0}, Lbly$3;-><init>(Lbly;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p0}, Lbly;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lbly;->notifyItemChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(JZ)V
    .locals 4

    .line 364
    iget-object v0, p0, Lbly;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 365
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getId()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 366
    invoke-virtual {v1, p3}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setAuthorized(Z)V

    .line 370
    :cond_1
    invoke-virtual {p0}, Lbly;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lbly;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-direct {p0}, Lbly;->l()V

    .line 101
    invoke-virtual {p0}, Lbly;->notifyDataSetChanged()V

    return-void
.end method

.method protected b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    .line 327
    invoke-virtual {p0, p1, v0}, Lbly;->a(IZ)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lbly;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    invoke-virtual {p0, p1}, Lbly;->a(Ljava/util/List;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 120
    iget-object v0, p0, Lbly;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lbly;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 208
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->item_tracks_foot_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 209
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->tv_track_foot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbly;->n:Landroid/widget/TextView;

    .line 210
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->foot_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lbly;->o:Lcom/xiaopeng/xui/widget/XLoading;

    .line 211
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iget-object v2, p0, Lbly;->n:Landroid/widget/TextView;

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    .line 212
    iget-object p2, p0, Lbly;->n:Landroid/widget/TextView;

    new-instance v0, Lbly$1;

    invoke-direct {v0, p0}, Lbly$1;-><init>(Lbly;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lbly;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 111
    invoke-direct {p0}, Lbly;->l()V

    .line 112
    invoke-virtual {p0}, Lbly;->notifyDataSetChanged()V

    return-void
.end method

.method protected synthetic d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lbly;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbly$a;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lbly;->h:Ljava/util/List;

    return-object v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, v0}, Lbly;->b(Z)V

    return-void
.end method

.method public i()I
    .locals 1

    .line 347
    iget v0, p0, Lbly;->k:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 374
    iget v0, p0, Lbly;->j:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 132
    instance-of v0, p1, Lbly$a;

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Lbly$a;

    invoke-direct {p0, p1, p2}, Lbly;->a(Lbly$a;I)V

    goto :goto_1

    .line 134
    :cond_0
    instance-of p2, p1, Lcom/xiaopeng/musicradio/widget/c$a;

    if-eqz p2, :cond_6

    .line 135
    iget-object p1, p0, Lbly;->n:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 136
    iget p2, p0, Lbly;->j:I

    sget v0, Lbly;->d:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p2, v0, :cond_1

    .line 137
    sget p2, Lcom/xiaopeng/musicradio/program/b$g;->loading_string:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object p1, p0, Lbly;->o:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    .line 139
    :cond_1
    sget v0, Lbly;->e:I

    if-ne p2, v0, :cond_2

    .line 140
    sget p2, Lcom/xiaopeng/musicradio/program/b$g;->load_more_string:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object p1, p0, Lbly;->o:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    .line 142
    :cond_2
    sget v0, Lbly;->f:I

    if-ne p2, v0, :cond_3

    const-string p2, ""

    .line 143
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object p1, p0, Lbly;->o:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    .line 145
    :cond_3
    sget v0, Lbly;->g:I

    if-ne p2, v0, :cond_4

    .line 146
    sget p2, Lcom/xiaopeng/musicradio/program/b$g;->load_error_string:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object p1, p0, Lbly;->o:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 150
    :cond_4
    :goto_0
    iget-object p1, p0, Lbly;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x6

    if-gt p1, p2, :cond_5

    .line 151
    iget-object p1, p0, Lbly;->n:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lbly;->o:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_1

    .line 154
    :cond_5
    iget-object p1, p0, Lbly;->n:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 157
    :cond_6
    instance-of p1, p1, Lcom/xiaopeng/musicradio/widget/c$b;

    :cond_7
    :goto_1
    return-void
.end method
