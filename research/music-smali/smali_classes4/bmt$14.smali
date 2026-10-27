.class Lbmt$14;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbmt;


# direct methods
.method constructor <init>(Lbmt;Ljava/util/List;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lbmt$14;->b:Lbmt;

    iput-object p2, p0, Lbmt$14;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "program_play_list_count"

    const-string v1, "ProgramModel"

    .line 283
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePlayList run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbmt$14;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " currentSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbmt$14;->b:Lbmt;

    invoke-static {v3}, Lbmt;->e(Lbmt;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v2, p0, Lbmt$14;->b:Lbmt;

    invoke-static {v2}, Lbmt;->e(Lbmt;)I

    move-result v2

    iget-object v3, p0, Lbmt$14;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 286
    invoke-static {}, Larg;->a()Larg;

    move-result-object v2

    invoke-virtual {v2, v0}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const-string v5, "program_play_list"

    if-nez v3, :cond_1

    .line 288
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "savePlayList run: ========== lastCount = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_1

    if-nez v3, :cond_0

    .line 292
    invoke-static {}, Larg;->a()Larg;

    move-result-object v6

    invoke-virtual {v6, v5}, Larg;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 294
    :cond_0
    invoke-static {}, Larg;->a()Larg;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Larg;->b(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 299
    :cond_1
    iget-object v2, p0, Lbmt$14;->a:Ljava/util/List;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v6, v3, -0x1

    .line 301
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/high16 v7, 0x80000

    div-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 302
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "savePlayList run: byteCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v6, v7, :cond_3

    .line 304
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lbmt$14;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v6

    :goto_2
    if-ge v4, v6, :cond_4

    .line 307
    iget-object v1, p0, Lbmt$14;->a:Ljava/util/List;

    mul-int v2, v0, v4

    iget-object v3, p0, Lbmt$14;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v7, v4, 0x1

    mul-int v8, v0, v7

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 308
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v4, :cond_2

    .line 310
    invoke-static {}, Larg;->a()Larg;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 312
    :cond_2
    invoke-static {}, Larg;->a()Larg;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v4, v7

    goto :goto_2

    .line 316
    :cond_3
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    invoke-virtual {v1, v5, v2}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    return-void
.end method
