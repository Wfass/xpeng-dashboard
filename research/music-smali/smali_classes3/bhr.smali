.class public Lbhr;
.super Lbhq;
.source "KugouZoneAlbumBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbhq<",
        "Lbhx;",
        "Lcom/xiaopeng/musicradio/music/kugouzone/view/e;",
        ">;"
    }
.end annotation


# static fields
.field public static d:I = 0x8


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/view/View;

.field private n:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;Landroid/view/View;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lbhq;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbhr;->f:Ljava/util/List;

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lbhr;->g:I

    .line 34
    iput-boolean p1, p0, Lbhr;->h:Z

    .line 35
    iput p1, p0, Lbhr;->i:I

    .line 36
    iput p1, p0, Lbhr;->j:I

    .line 37
    iput-boolean p1, p0, Lbhr;->k:Z

    .line 38
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    .line 41
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lbhr;->n:Lcom/xiaopeng/musicradio/widget/k;

    .line 202
    iput-object p2, p0, Lbhr;->m:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lbhr;I)I
    .locals 0

    .line 29
    iput p1, p0, Lbhr;->g:I

    return p1
.end method

.method static synthetic a(Lbhr;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lbhr;->i()V

    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;I)V"
        }
    .end annotation

    .line 213
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lbhr;->b()I

    move-result v1

    div-int/2addr v0, v1

    .line 214
    iget-boolean v1, p0, Lbhr;->k:Z

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v1, :cond_2

    .line 215
    iget v0, p0, Lbhr;->j:I

    if-ne p2, v0, :cond_0

    .line 216
    iget-object p2, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lbhr;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object p2, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 218
    iget-object p2, p0, Lbhr;->f:Ljava/util/List;

    iget v0, p0, Lbhr;->i:I

    invoke-virtual {p0}, Lbhr;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbhr;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbhr;->b()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 219
    :cond_0
    iget-object v0, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    iget v1, p0, Lbhr;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lbhr;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iput p2, p0, Lbhr;->j:I

    .line 222
    iget-object v0, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lbhr;->i:I

    .line 223
    iget-object p2, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 224
    iget-object p2, p0, Lbhr;->f:Ljava/util/List;

    iget v0, p0, Lbhr;->i:I

    invoke-virtual {p0}, Lbhr;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbhr;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbhr;->b()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 226
    :cond_1
    iget-object v0, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    iget v1, p0, Lbhr;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lbhr;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iput p2, p0, Lbhr;->j:I

    .line 229
    iput v2, p0, Lbhr;->i:I

    .line 230
    iget-object p2, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 231
    iget-object p2, p0, Lbhr;->f:Ljava/util/List;

    iget v0, p0, Lbhr;->i:I

    invoke-virtual {p0}, Lbhr;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbhr;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbhr;->b()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 234
    :cond_2
    iget v1, p0, Lbhr;->j:I

    if-ne v1, p2, :cond_4

    .line 235
    iget v1, p0, Lbhr;->i:I

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_3

    .line 236
    iput v2, p0, Lbhr;->i:I

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 238
    iput v1, p0, Lbhr;->i:I

    .line 240
    :goto_0
    iget-object v0, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 241
    iget-object v0, p0, Lbhr;->f:Ljava/util/List;

    iget v1, p0, Lbhr;->i:I

    invoke-virtual {p0}, Lbhr;->b()I

    move-result v3

    mul-int/2addr v1, v3

    iget v3, p0, Lbhr;->i:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lbhr;->b()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-object p1, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Lbhr;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 243
    :cond_4
    iget-object v1, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 244
    iget-object v1, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    iget v3, p0, Lbhr;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lbhr;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lbhr;->i:I

    .line 246
    iput p2, p0, Lbhr;->j:I

    .line 247
    iget p2, p0, Lbhr;->i:I

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_5

    .line 248
    iput v2, p0, Lbhr;->i:I

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 250
    iput p2, p0, Lbhr;->i:I

    .line 252
    :goto_1
    iget-object p2, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 253
    iget-object p2, p0, Lbhr;->f:Ljava/util/List;

    iget v0, p0, Lbhr;->i:I

    invoke-virtual {p0}, Lbhr;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbhr;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbhr;->b()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    iget-object p1, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    iget p2, p0, Lbhr;->j:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Lbhr;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 256
    :cond_6
    iget-object v1, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    iget v4, p0, Lbhr;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lbhr;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lbhr;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iput p2, p0, Lbhr;->j:I

    .line 259
    iput v2, p0, Lbhr;->i:I

    .line 260
    iget p2, p0, Lbhr;->i:I

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_7

    add-int/lit8 p2, p2, 0x1

    .line 261
    iput p2, p0, Lbhr;->i:I

    .line 263
    :cond_7
    iget-object p2, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 264
    iget-object p2, p0, Lbhr;->f:Ljava/util/List;

    iget v0, p0, Lbhr;->i:I

    invoke-virtual {p0}, Lbhr;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbhr;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbhr;->b()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    :goto_2
    iput-boolean v2, p0, Lbhr;->k:Z

    :goto_3
    return-void
.end method

.method static synthetic b(Lbhr;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lbhr;->f:Ljava/util/List;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 206
    iget-object v0, p0, Lbhr;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lbhr;->k:Z

    .line 208
    iget-object v0, p0, Lbhr;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    iget v1, p0, Lbhr;->g:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/b;->changeBtnClick(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected synthetic a(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lbhr;->b(Landroid/content/Context;)Lcom/xiaopeng/musicradio/music/kugouzone/view/e;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbhw;)V
    .locals 0

    .line 29
    check-cast p2, Lbhx;

    invoke-virtual {p0, p1, p2}, Lbhr;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbhx;)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbhx;)V
    .locals 11

    .line 101
    invoke-virtual {p2}, Lbhx;->b()Ljava/util/List;

    move-result-object v0

    const-string v1, "KugouZoneAlbumBinder"

    if-nez v0, :cond_0

    const-string p1, "onBindViewChild: item result list is null "

    .line 102
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lbhr;->b()I

    move-result v0

    invoke-virtual {p0}, Lbhr;->a()I

    move-result v2

    div-int/2addr v0, v2

    .line 107
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setColumn(I)V

    .line 108
    invoke-virtual {p0}, Lbhr;->b()I

    move-result v0

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 110
    :goto_0
    invoke-virtual {p0}, Lbhr;->b()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 111
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbhr;->b(Landroid/content/Context;)Lcom/xiaopeng/musicradio/music/kugouzone/view/e;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lbhr;->f()I

    move-result v4

    invoke-virtual {p0}, Lbhr;->e()I

    move-result v5

    invoke-virtual {p1, v2, v4, v5}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a(Ljava/util/List;II)V

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewChild: item result list size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbhx;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p2}, Lbhx;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lbhr;->b()I

    move-result v4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    const/4 v6, 0x1

    if-ge v2, v4, :cond_2

    invoke-virtual {p2}, Lbhx;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 118
    iput-boolean v3, p0, Lbhr;->h:Z

    .line 119
    iget-object v2, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 120
    iget-object v2, p0, Lbhr;->f:Ljava/util/List;

    invoke-virtual {p2}, Lbhx;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 122
    :cond_2
    iput-boolean v6, p0, Lbhr;->h:Z

    .line 123
    invoke-virtual {p2}, Lbhx;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lbhx;->d()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lbhr;->a(Ljava/util/List;I)V

    .line 125
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewChild: listsize is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewChild: ChildCount is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-boolean v1, p0, Lbhr;->h:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setFeelLuckyBtnVisibility(I)V

    .line 130
    new-instance v1, Lbhr$1;

    invoke-direct {v1, p0, p2}, Lbhr$1;-><init>(Lbhr;Lbhx;)V

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setFeelLuckyListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 139
    :cond_3
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setFeelLuckyBtnVisibility(I)V

    .line 141
    :goto_2
    invoke-virtual {p2}, Lbhx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lbhx;->h()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a(Ljava/lang/String;I)V

    .line 142
    invoke-virtual {p2}, Lbhx;->f()I

    move-result v1

    if-ne v1, v6, :cond_4

    move v1, v6

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setClickVisibility(Z)V

    .line 143
    invoke-virtual {p2}, Lbhx;->f()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 144
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getTitleTv()Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    new-instance v4, Lbhr$2;

    invoke-direct {v4, p0, p2, p1}, Lbhr$2;-><init>(Lbhr;Lbhx;Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;)V

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    move v1, v3

    :goto_4
    if-ge v1, v0, :cond_9

    .line 154
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 155
    iget-object v7, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_8

    .line 156
    instance-of v7, v4, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;

    if-eqz v7, :cond_7

    .line 157
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    check-cast v4, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;

    iget-object v7, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v4, v7}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->setMusicRadioItem(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 159
    iget-object v7, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v7, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->setItemTitle(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Lbhx;->h()I

    move-result v7

    invoke-virtual {p0, v1, v7}, Lbhr;->a(II)I

    move-result v7

    .line 163
    iget-object v8, p0, Lbhr;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    iget-object v9, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/xiaopeng/musicradio/music/kugouzone/view/b;->isMusicAlbumPlaying(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 164
    iget-object v8, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v7, v8}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->a(IILjava/lang/String;)V

    move v8, v6

    goto :goto_5

    :cond_6
    const/4 v8, 0x3

    .line 167
    iget-object v9, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v7, v9}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->a(IILjava/lang/String;)V

    move v8, v3

    .line 169
    :goto_5
    invoke-virtual {v4, v7}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->setPosition(I)V

    .line 171
    new-instance v9, Lbhr$3;

    invoke-direct {v9, p0, v1, p2}, Lbhr$3;-><init>(Lbhr;ILbhx;)V

    invoke-virtual {v4, v9}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->setOnPlayControlListener(Landroid/view/View$OnClickListener;)V

    .line 180
    new-instance v9, Lbhr$4;

    invoke-direct {v9, p0, v1, p2}, Lbhr$4;-><init>(Lbhr;ILbhx;)V

    invoke-virtual {v4, v9}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v9, p0, Lbhr;->f:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v7, v9, v8}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->a(ILjava/lang/String;Z)V

    goto :goto_6

    :cond_7
    if-eqz v4, :cond_8

    .line 192
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_9
    return-void
.end method

.method protected b()I
    .locals 1

    .line 50
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    :goto_0
    return v0
.end method

.method protected b(Landroid/content/Context;)Lcom/xiaopeng/musicradio/music/kugouzone/view/e;
    .locals 1

    .line 94
    new-instance v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 95
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->setVisibility(I)V

    return-object v0
.end method

.method protected c()I
    .locals 2

    .line 63
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v0, v1}, Lapf;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method protected d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected e()I
    .locals 2

    .line 78
    iget-object v0, p0, Lbhr;->n:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 80
    iget-object v0, p0, Lbhr;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 81
    iget-object v1, p0, Lbhr;->n:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lbhr;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lbhr;->n:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p0}, Lbhr;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lbhr;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    :goto_0
    return v0
.end method

.method protected f()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method
