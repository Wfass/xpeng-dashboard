.class public Lcom/xiaopeng/musicradio/utils/ac;
.super Ljava/lang/Object;
.source "GlideUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/utils/ac$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaopeng/musicradio/utils/ac$a;


# direct methods
.method public static a()Lcom/bumptech/glide/request/RequestListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 525
    new-instance v0, Lcom/xiaopeng/musicradio/utils/ac$2;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/utils/ac$2;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 44
    new-instance v0, Lcom/xiaopeng/musicradio/utils/ac$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/utils/ac$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IIIILandroid/widget/ImageView;)V
    .locals 1

    .line 347
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-virtual {p0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 351
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->e(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 352
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 353
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ac;->a()Lcom/bumptech/glide/request/RequestListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    const/4 p1, 0x1

    .line 354
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 355
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    new-instance p1, Lbyx;

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Lbyx;-><init>(II)V

    .line 356
    invoke-static {p1}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    div-int/2addr p4, p3

    mul-int/lit8 p4, p4, 0x2

    div-int/2addr p5, p3

    mul-int/lit8 p5, p5, 0x2

    .line 357
    invoke-virtual {p0, p4, p5}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 358
    invoke-virtual {p0, p6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 2

    .line 111
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->e(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 117
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 124
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 125
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 126
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ac;->a()Lcom/bumptech/glide/request/RequestListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 127
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)V
    .locals 1

    .line 303
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 309
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->e(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 310
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 311
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ac;->a()Lcom/bumptech/glide/request/RequestListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 312
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/bumptech/glide/load/Transformation;

    const/4 p2, 0x0

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>()V

    aput-object v0, p1, p2

    const/4 p2, 0x1

    aput-object p4, p1, p2

    .line 313
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 314
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 316
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 1

    .line 91
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 96
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->e(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 97
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 98
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ac;->a()Lcom/bumptech/glide/request/RequestListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 99
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 100
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;I)V
    .locals 1

    .line 397
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 402
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->e(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 403
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 404
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ac;->a()Lcom/bumptech/glide/request/RequestListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 405
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    new-instance p1, Lbyy;

    const/4 p2, 0x0

    invoke-direct {p1, p4, p2}, Lbyy;-><init>(II)V

    .line 406
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 407
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 409
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/widget/ImageView;",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 380
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 385
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->e(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 386
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    if-eqz p4, :cond_1

    goto :goto_0

    .line 387
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ac;->a()Lcom/bumptech/glide/request/RequestListener;

    move-result-object p4

    :goto_0
    invoke-virtual {p0, p4}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 388
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 389
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 391
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 451
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ac;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 456
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 458
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/utils/ac$a;)V
    .locals 0

    .line 550
    sput-object p0, Lcom/xiaopeng/musicradio/utils/ac;->a:Lcom/xiaopeng/musicradio/utils/ac$a;

    return-void
.end method

.method public static a(Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 1

    .line 107
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic b()Lcom/xiaopeng/musicradio/utils/ac$a;
    .locals 1

    .line 40
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ac;->a:Lcom/xiaopeng/musicradio/utils/ac$a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 463
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 468
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 470
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 1

    .line 149
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 156
    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 158
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->e(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 159
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 160
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ac;->a()Lcom/bumptech/glide/request/RequestListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 161
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 162
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 1

    .line 169
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 177
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->e(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 178
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 179
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ac;->a()Lcom/bumptech/glide/request/RequestListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 180
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 181
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    .line 475
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 480
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 484
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 1

    .line 235
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 240
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ac;->e(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 241
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 242
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ac;->a()Lcom/bumptech/glide/request/RequestListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 243
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 244
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 1

    .line 53
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static e(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 2

    .line 414
    instance-of v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b;

    if-eqz v0, :cond_0

    .line 415
    check-cast p0, Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/b;->a()Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0

    .line 417
    :cond_0
    instance-of v0, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_1

    .line 418
    move-object v0, p0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    .line 419
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/musicradio/commonui/base/a;

    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/musicradio/commonui/base/a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/a;->a()Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0

    .line 423
    :cond_1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method
