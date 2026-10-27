.class Lcom/xiaopeng/musicradio/service/MusicMineService$11;
.super Ljava/lang/Object;
.source "MusicMineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicMineService;->getUserAlbumList(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/datalist/f;

.field final synthetic b:Landroidx/lifecycle/r;

.field final synthetic c:Lcom/xiaopeng/musicradio/service/MusicMineService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Lcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/r;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$11;->c:Lcom/xiaopeng/musicradio/service/MusicMineService;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$11;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$11;->b:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 269
    invoke-static {}, Lbac;->a()Lbac;

    move-result-object v0

    invoke-virtual {v0}, Lbac;->b()Lbab;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$11;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v1, v1, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$11;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget-wide v2, v2, Lcom/xiaopeng/musicradio/datalist/f;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lbab;->a(IJ)Ljava/util/List;

    move-result-object v0

    .line 271
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    .line 273
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 274
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$11;->a:Lcom/xiaopeng/musicradio/datalist/f;

    iget v2, v2, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 278
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getCacheTime()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x0

    :goto_2
    move-wide v3, v0

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$11;->b:Landroidx/lifecycle/r;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicMineService$11;->a:Lcom/xiaopeng/musicradio/datalist/f;

    const-string v6, "getUserAlbumList"

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;ZJLjava/util/List;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-void
.end method
