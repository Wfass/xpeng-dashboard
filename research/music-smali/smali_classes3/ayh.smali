.class public Layh;
.super Ljava/lang/Object;
.source "MediaLogoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layh$b;,
        Layh$a;,
        Layh$c;
    }
.end annotation


# instance fields
.field private a:Layh$b;

.field private b:Z

.field private c:Landroid/os/Handler;

.field private d:Layh$a;

.field private e:Ljava/lang/Runnable;

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field private h:Landroid/os/AsyncTask;

.field private i:I

.field private j:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Layh;->c:Landroid/os/Handler;

    .line 285
    new-instance v0, Layh$2;

    invoke-direct {v0, p0}, Layh$2;-><init>(Layh;)V

    iput-object v0, p0, Layh;->e:Ljava/lang/Runnable;

    .line 295
    new-instance v0, Layh$3;

    invoke-direct {v0, p0}, Layh$3;-><init>(Layh;)V

    iput-object v0, p0, Layh;->g:Ljava/lang/Runnable;

    const-string v0, "#FFE1E2E5"

    .line 427
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Layh;->i:I

    const/4 v0, 0x3

    .line 428
    new-array v0, v0, [F

    iput-object v0, p0, Layh;->j:[F

    .line 74
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Layh;I)I
    .locals 0

    .line 57
    iput p1, p0, Layh;->i:I

    return p1
.end method

.method static synthetic a(Layh;)Layh$a;
    .locals 0

    .line 57
    iget-object p0, p0, Layh;->d:Layh$a;

    return-object p0
.end method

.method public static a()Layh;
    .locals 1

    .line 69
    sget-object v0, Layh$c;->a:Layh;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 387
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "/400/"

    const-string v1, "/240/"

    .line 390
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/150/"

    .line 391
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "500x500"

    const-string v2, "(\\d){3}x(\\d){3}"

    .line 392
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(\\d){3}y(\\d){3}"

    .line 393
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeToBigSizeLogo: old = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " new = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MediaLogoManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private a(ILcom/xiaopeng/musicradio/bean/BaseInfo;ILjava/lang/String;I)V
    .locals 9

    .line 269
    new-instance v6, Layh$a;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Layh$a;-><init>(ILcom/xiaopeng/musicradio/bean/BaseInfo;ILjava/lang/String;I)V

    iput-object v6, p0, Layh;->d:Layh$a;

    if-nez p2, :cond_0

    .line 271
    iget-object p1, p0, Layh;->d:Layh$a;

    iget v1, p1, Layh$a;->a:I

    iget-object p1, p0, Layh;->d:Layh$a;

    iget-object v2, p1, Layh$a;->b:Lcom/xiaopeng/musicradio/bean/BaseInfo;

    const/4 v3, 0x0

    iget-object p1, p0, Layh;->d:Layh$a;

    iget v4, p1, Layh$a;->c:I

    iget-object p1, p0, Layh;->d:Layh$a;

    iget-object v6, p1, Layh$a;->d:Ljava/lang/String;

    iget-object p1, p0, Layh;->d:Layh$a;

    iget v7, p1, Layh$a;->e:I

    const/4 v8, 0x0

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Layh;->a(ILcom/xiaopeng/musicradio/bean/BaseInfo;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 274
    :cond_0
    iget-object p1, p0, Layh;->c:Landroid/os/Handler;

    iget-object p2, p0, Layh;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object p1, p0, Layh;->c:Landroid/os/Handler;

    iget-object p2, p0, Layh;->e:Ljava/lang/Runnable;

    const-wide/16 p3, 0x3e8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    iget-boolean p1, p0, Layh;->f:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 279
    iput-boolean p1, p0, Layh;->f:Z

    .line 280
    iget-object p1, p0, Layh;->c:Landroid/os/Handler;

    iget-object p2, p0, Layh;->g:Ljava/lang/Runnable;

    const-wide/16 p3, 0x7d0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private a(ILcom/xiaopeng/musicradio/bean/BaseInfo;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 14

    move-object v0, p0

    move v10, p1

    move-object/from16 v1, p3

    const-string v2, " null"

    const-string v3, " info = "

    const-string v4, " bitmap = "

    const-string v5, "refreshResouce: type = "

    const-string v6, "MediaLogoManager"

    const/4 v11, 0x0

    if-nez v1, :cond_1

    .line 401
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v7, p4

    invoke-static {v1, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v8, 0x1

    .line 402
    iput-boolean v8, v0, Layh;->b:Z

    .line 403
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " defaultByteCount = "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 406
    invoke-virtual/range {p2 .. p2}, Lcom/xiaopeng/musicradio/bean/BaseInfo;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move/from16 v7, p4

    .line 408
    iput-boolean v11, v0, Layh;->b:Z

    .line 409
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bitmapCount = "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    .line 412
    invoke-virtual/range {p2 .. p2}, Lcom/xiaopeng/musicradio/bean/BaseInfo;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v12, v1

    .line 414
    new-instance v13, Layh$b;

    iget-boolean v8, v0, Layh;->b:Z

    move-object v1, v13

    move v2, p1

    move-object/from16 v3, p2

    move-object v4, v12

    move-object/from16 v5, p5

    move/from16 v6, p4

    move v7, v8

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Layh$b;-><init>(ILcom/xiaopeng/musicradio/bean/BaseInfo;Landroid/graphics/Bitmap;Ljava/lang/String;IZLjava/lang/String;I)V

    iput-object v13, v0, Layh;->a:Layh$b;

    .line 415
    invoke-direct {p0, v12, p1}, Layh;->a(Landroid/graphics/Bitmap;I)V

    if-eqz p8, :cond_3

    .line 417
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;

    invoke-direct {v1, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;-><init>(I)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 419
    iput-object v1, v0, Layh;->d:Layh$a;

    .line 420
    iput-boolean v11, v0, Layh;->f:Z

    .line 421
    iget-object v1, v0, Layh;->c:Landroid/os/Handler;

    iget-object v2, v0, Layh;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 422
    iget-object v1, v0, Layh;->c:Landroid/os/Handler;

    iget-object v2, v0, Layh;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private a(ILcom/xiaopeng/musicradio/bean/BaseInfo;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 13

    move-object/from16 v12, p3

    .line 325
    invoke-static/range {p3 .. p3}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    move v6, p1

    if-ne v6, v0, :cond_1

    .line 331
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/BaseInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/BaseInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaLogoManager"

    const-string v2, "transferLogo: "

    .line 333
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v5, p2

    .line 338
    :goto_0
    new-instance v0, Layh$4;

    const/16 v3, 0x230

    const/16 v4, 0x230

    move-object v1, v0

    move-object v2, p0

    move v6, p1

    move-object v7, p2

    move/from16 v8, p4

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Layh$4;-><init>(Layh;IILcom/xiaopeng/musicradio/bean/BaseInfo;ILcom/xiaopeng/musicradio/bean/BaseInfo;ILjava/lang/String;Ljava/lang/String;I)V

    .line 358
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 359
    invoke-static/range {p3 .. p3}, Layh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 360
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v2, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    .line 361
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v2, Layh$5;

    move-object v3, p0

    invoke-direct {v2, p0, v12}, Layh$5;-><init>(Layh;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    const/16 v2, 0x230

    .line 380
    invoke-virtual {v1, v2, v2}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 381
    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 382
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 383
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private a(IZ)V
    .locals 10

    .line 163
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 164
    invoke-direct {p0}, Layh;->g()I

    move-result v5

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-string v6, ""

    const-string v7, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Layh;->a(ILcom/xiaopeng/musicradio/bean/BaseInfo;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    :cond_0
    const-string v0, ""

    if-eqz p1, :cond_12

    const/4 v1, 0x6

    if-eq p1, v1, :cond_f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto/16 :goto_4

    .line 183
    :cond_1
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1, v1}, Laqr;->c(I)Laqt;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 185
    invoke-interface {p1}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    .line 186
    iget-object p2, p0, Layh;->a:Layh$b;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Layh$b;->b()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Layh;->a:Layh$b;

    invoke-virtual {p2}, Layh$b;->b()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p2

    instance-of p2, p2, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    if-eqz p2, :cond_3

    .line 187
    iget-object p2, p0, Layh;->a:Layh$b;

    invoke-virtual {p2}, Layh$b;->b()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 188
    iget-object v1, p0, Layh;->a:Layh$b;

    invoke-virtual {v1}, Layh$b;->b()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v1

    if-eq v1, p1, :cond_2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-nez p2, :cond_3

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 192
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const/4 v2, 0x3

    .line 193
    sget v4, Lcom/xiaopeng/musicradio/common/k$d;->img_epmty_player:I

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Layh;->a(ILcom/xiaopeng/musicradio/bean/BaseInfo;ILjava/lang/String;I)V

    if-eqz p1, :cond_15

    .line 195
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getChannelId()I

    move-result p2

    if-nez p2, :cond_5

    const/4 v2, 0x3

    .line 196
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getLargeLogo()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/xiaopeng/musicradio/common/k$d;->img_epmty_player:I

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Layh;->a(ILcom/xiaopeng/musicradio/bean/BaseInfo;Ljava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_4

    .line 198
    :cond_5
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p2

    const-class v1, Lblp;

    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lblp;

    if-eqz p2, :cond_15

    .line 200
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    :goto_0
    invoke-interface {p2, v1, v2}, Lblp;->getLogo4TodayNews(J)Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v2, 0x3

    .line 202
    sget p2, Lcom/xiaopeng/musicradio/common/k$d;->img_epmty_player:I

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, v5

    move v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Layh;->a(ILcom/xiaopeng/musicradio/bean/BaseInfo;Ljava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_4

    .line 204
    :cond_7
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-lez v0, :cond_8

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v0

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v0

    :goto_1
    invoke-interface {p2, v0, v1}, Lblp;->updateAlbumInfo4TodayNews(J)V

    goto/16 :goto_4

    .line 212
    :cond_9
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1, v1}, Laqr;->c(I)Laqt;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 214
    invoke-interface {p1}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 217
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getLogo()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 219
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v2

    const-class v3, Lbfe;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbfe;

    if-eqz v2, :cond_a

    .line 221
    invoke-interface {v2}, Lbfe;->getPlayingBtInfo()Lcom/xiaopeng/musicradio/music/api/bean/a;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 223
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/music/api/bean/a;->c()Ljava/lang/String;

    move-result-object v1

    :cond_a
    move-object v7, v1

    if-nez p2, :cond_b

    if-eqz p1, :cond_b

    .line 228
    iget-object p2, p0, Layh;->a:Layh$b;

    if-eqz p2, :cond_b

    .line 229
    invoke-virtual {p2}, Layh$b;->b()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p2

    if-ne p2, p1, :cond_b

    if-eqz v7, :cond_b

    iget-object p2, p0, Layh;->a:Layh$b;

    .line 231
    invoke-static {p2}, Layh$b;->a(Layh$b;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    return-void

    :cond_b
    if-eqz p1, :cond_c

    .line 234
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getUuid()Ljava/lang/String;

    move-result-object v0

    :cond_c
    const/4 v2, 0x2

    .line 235
    sget v4, Lcom/xiaopeng/musicradio/common/k$d;->img_epmty_player:I

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Layh;->a(ILcom/xiaopeng/musicradio/bean/BaseInfo;ILjava/lang/String;I)V

    .line 236
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 237
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->x()Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_2

    :cond_d
    if-eqz p1, :cond_15

    const/4 v2, 0x2

    .line 242
    sget v5, Lcom/xiaopeng/musicradio/common/k$d;->img_epmty_player:I

    const/4 p2, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, v7

    move-object v6, v0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Layh;->a(ILcom/xiaopeng/musicradio/bean/BaseInfo;Ljava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_4

    .line 238
    :cond_e
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "refreshLogo: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " musicclose = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->x()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaLogoManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 247
    :cond_f
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1, v1}, Laqr;->c(I)Laqt;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 249
    invoke-interface {p1}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    if-nez p2, :cond_10

    if-eqz p1, :cond_10

    .line 250
    iget-object p2, p0, Layh;->a:Layh$b;

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Layh$b;->b()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p2

    if-ne p2, p1, :cond_10

    return-void

    :cond_10
    if-eqz p1, :cond_11

    .line 255
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 256
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_11
    move-object p2, v0

    :goto_3
    const/4 v2, 0x6

    .line 259
    sget v4, Lcom/xiaopeng/musicradio/common/k$d;->img_epmty_player:I

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Layh;->a(ILcom/xiaopeng/musicradio/bean/BaseInfo;ILjava/lang/String;I)V

    if-eqz p1, :cond_15

    const/4 v2, 0x6

    .line 261
    sget v5, Lcom/xiaopeng/musicradio/common/k$d;->img_epmty_player:I

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Layh;->a(ILcom/xiaopeng/musicradio/bean/BaseInfo;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_4

    .line 169
    :cond_12
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Laqr;->c(I)Laqt;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 171
    invoke-interface {p1}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-nez p2, :cond_13

    if-eqz v1, :cond_13

    .line 172
    iget-object p2, p0, Layh;->a:Layh$b;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Layh$b;->b()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p2

    if-ne p2, v1, :cond_13

    iget-object p2, p0, Layh;->a:Layh$b;

    invoke-static {p2}, Layh$b;->a(Layh$b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_13

    return-void

    :cond_13
    if-eqz v1, :cond_14

    .line 175
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    :cond_14
    const/4 v3, 0x0

    .line 176
    invoke-direct {p0}, Layh;->g()I

    move-result v5

    invoke-interface {p1}, Laqt;->j()I

    move-result v7

    move-object v2, p0

    move-object v4, v1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Layh;->a(ILcom/xiaopeng/musicradio/bean/BaseInfo;ILjava/lang/String;I)V

    if-eqz v1, :cond_15

    const/4 v3, 0x0

    .line 178
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Layh;->g()I

    move-result v6

    invoke-interface {p1}, Laqt;->j()I

    move-result v8

    move-object v2, p0

    move-object v4, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v8}, Layh;->a(ILcom/xiaopeng/musicradio/bean/BaseInfo;Ljava/lang/String;ILjava/lang/String;I)V

    :cond_15
    :goto_4
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Layh;->h:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 435
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 437
    :cond_1
    invoke-static {p1}, Lib;->a(Landroid/graphics/Bitmap;)Lib$a;

    move-result-object p1

    new-instance v0, Layh$6;

    invoke-direct {v0, p0, p2}, Layh$6;-><init>(Layh;I)V

    invoke-virtual {p1, v0}, Lib$a;->a(Lib$c;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Layh;->h:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Layh;ILcom/xiaopeng/musicradio/bean/BaseInfo;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p8}, Layh;->a(ILcom/xiaopeng/musicradio/bean/BaseInfo;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic a(Layh;IZ)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Layh;->a(IZ)V

    return-void
.end method

.method static synthetic a(Layh;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Layh;->f:Z

    return p1
.end method

.method static synthetic b(Layh;)Ljava/lang/Runnable;
    .locals 0

    .line 57
    iget-object p0, p0, Layh;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Layh;)I
    .locals 0

    .line 57
    iget p0, p0, Layh;->i:I

    return p0
.end method

.method static synthetic d(Layh;)[F
    .locals 0

    .line 57
    iget-object p0, p0, Layh;->j:[F

    return-object p0
.end method

.method private g()I
    .locals 1

    .line 316
    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->img_epmty_player:I

    return v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 78
    new-instance v0, Layh$1;

    invoke-direct {v0, p0}, Layh$1;-><init>(Layh;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 305
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0}, Lbfe;->getPlayingInfo()Lcom/xiaopeng/musicradio/music/api/bean/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/api/bean/b;->i()I

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()[F
    .locals 1

    .line 459
    iget-object v0, p0, Layh;->j:[F

    return-object v0
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 105
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealAudioInfo: =========== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaLogoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;->a()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Layh;->a(IZ)V

    :cond_0
    return-void
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$s;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        priority = 0x1
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 93
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Layh;->a(IZ)V

    return-void
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 88
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;->a()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Layh;->a(IZ)V

    return-void
.end method

.method public dealBtConnectState(Lasa$b;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 154
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealBtConnectState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasa$b;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaLogoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p1}, Lasa$b;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 157
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Layh;->a(IZ)V

    :cond_0
    return-void
.end method

.method public e()Layh$b;
    .locals 1

    .line 463
    iget-object v0, p0, Layh;->a:Layh$b;

    return-object v0
.end method

.method public f()I
    .locals 8

    .line 467
    invoke-virtual {p0}, Layh;->d()[F

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 469
    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 470
    aget v2, v0, v1

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x2

    .line 472
    aget v0, v0, v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v0, v6

    const/high16 v7, 0x42b40000    # 90.0f

    .line 473
    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 474
    new-array v3, v3, [F

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v4, v3, v1

    div-float/2addr v0, v6

    aput v0, v3, v5

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    const/16 v1, 0xff

    .line 475
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    :cond_0
    return v1
.end method

.method public onBtPhoneMusicClose(Lasa$d;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MediaLogoManager"

    const-string v0, "onBtPhoneMusicClose: ========"

    .line 147
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Layh;->a(IZ)V

    return-void
.end method

.method public onIGChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 128
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Layh;->a(IZ)V

    :cond_0
    return-void
.end method

.method public onLogoEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$r;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 113
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 114
    invoke-direct {p0, p1, p1}, Layh;->a(IZ)V

    :cond_0
    return-void
.end method

.method public onLogoEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$z;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 98
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 99
    invoke-direct {p0, v0, p1}, Layh;->a(IZ)V

    :cond_0
    return-void
.end method

.method public onLogout(Lasj$ag;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 142
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Layh;->a(IZ)V

    return-void
.end method

.method public onThemeChange(Larv$c;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onThemeChange: ====="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Layh;->b:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaLogoManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-boolean p1, p0, Layh;->b:Z

    if-eqz p1, :cond_0

    .line 122
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Layh;->a(IZ)V

    :cond_0
    return-void
.end method
