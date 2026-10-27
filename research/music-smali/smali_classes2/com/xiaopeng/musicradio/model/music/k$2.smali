.class Lcom/xiaopeng/musicradio/model/music/k$2;
.super Ljava/lang/Object;
.source "NormalDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/k;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/music/k;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/k;Ljava/util/List;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, ","

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sl run1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/model/music/k;->b(Lcom/xiaopeng/musicradio/model/music/k;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/model/music/k;->b(Lcom/xiaopeng/musicradio/model/music/k;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 310
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/k;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 312
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 313
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sl run2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/k;->b(Lcom/xiaopeng/musicradio/model/music/k;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_0
    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 316
    invoke-static {}, Larg;->a()Larg;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/model/music/k;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Larg;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :cond_0
    invoke-static {}, Larg;->a()Larg;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/model/music/k;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Larg;->b(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x32

    .line 325
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sl run3:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 327
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/k;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v1, v0

    :goto_2
    if-ge v3, v0, :cond_4

    .line 330
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->a:Ljava/util/List;

    mul-int v4, v1, v3

    iget-object v5, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    mul-int v7, v1, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v2, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 331
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_2

    .line 333
    invoke-static {}, Larg;->a()Larg;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/model/music/k;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 335
    :cond_2
    invoke-static {}, Larg;->a()Larg;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/model/music/k;->w()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v3, v6

    goto :goto_2

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/k;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/k;->x()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "savePlayList run: end = "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 346
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k$2;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "savePlayList run: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    return-void
.end method
