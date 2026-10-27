.class public Lbhu;
.super Lbhq;
.source "KugouZoneCollectBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbhq<",
        "Lbia;",
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

.field private l:Landroid/view/View;

.field private m:Lcom/xiaopeng/musicradio/widget/k;

.field private n:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lbhq;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbhu;->f:Ljava/util/List;

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lbhu;->g:I

    .line 33
    iput-boolean p1, p0, Lbhu;->h:Z

    .line 34
    iput p1, p0, Lbhu;->i:I

    .line 35
    iput p1, p0, Lbhu;->j:I

    .line 36
    iput-boolean p1, p0, Lbhu;->k:Z

    .line 40
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lbhu;->m:Lcom/xiaopeng/musicradio/widget/k;

    .line 42
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    .line 45
    iput-object p2, p0, Lbhu;->l:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lbhu;I)I
    .locals 0

    .line 28
    iput p1, p0, Lbhu;->g:I

    return p1
.end method

.method static synthetic a(Lbhu;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lbhu;->i()V

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

    .line 206
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lbhu;->b()I

    move-result v1

    div-int/2addr v0, v1

    .line 207
    iget-boolean v1, p0, Lbhu;->k:Z

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v1, :cond_2

    .line 208
    iget v0, p0, Lbhu;->j:I

    if-ne p2, v0, :cond_0

    .line 209
    iget-object p2, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lbhu;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object p2, p0, Lbhu;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 211
    iget-object p2, p0, Lbhu;->f:Ljava/util/List;

    iget v0, p0, Lbhu;->i:I

    invoke-virtual {p0}, Lbhu;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbhu;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbhu;->b()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 212
    :cond_0
    iget-object v0, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    iget v1, p0, Lbhu;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lbhu;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iput p2, p0, Lbhu;->j:I

    .line 215
    iget-object v0, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lbhu;->i:I

    .line 216
    iget-object p2, p0, Lbhu;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 217
    iget-object p2, p0, Lbhu;->f:Ljava/util/List;

    iget v0, p0, Lbhu;->i:I

    invoke-virtual {p0}, Lbhu;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbhu;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbhu;->b()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 219
    :cond_1
    iget-object v0, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    iget v1, p0, Lbhu;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lbhu;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iput p2, p0, Lbhu;->j:I

    .line 222
    iput v2, p0, Lbhu;->i:I

    .line 223
    iget-object p2, p0, Lbhu;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 224
    iget-object p2, p0, Lbhu;->f:Ljava/util/List;

    iget v0, p0, Lbhu;->i:I

    invoke-virtual {p0}, Lbhu;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbhu;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbhu;->b()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 227
    :cond_2
    iget v1, p0, Lbhu;->j:I

    if-ne v1, p2, :cond_4

    .line 228
    iget v1, p0, Lbhu;->i:I

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_3

    .line 229
    iput v2, p0, Lbhu;->i:I

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 231
    iput v1, p0, Lbhu;->i:I

    .line 233
    :goto_0
    iget-object v0, p0, Lbhu;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    iget-object v0, p0, Lbhu;->f:Ljava/util/List;

    iget v1, p0, Lbhu;->i:I

    invoke-virtual {p0}, Lbhu;->b()I

    move-result v3

    mul-int/2addr v1, v3

    iget v3, p0, Lbhu;->i:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lbhu;->b()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    iget-object p1, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Lbhu;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 236
    :cond_4
    iget-object v1, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 237
    iget-object v1, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    iget v3, p0, Lbhu;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lbhu;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lbhu;->i:I

    .line 239
    iput p2, p0, Lbhu;->j:I

    .line 240
    iget p2, p0, Lbhu;->i:I

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_5

    .line 241
    iput v2, p0, Lbhu;->i:I

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 243
    iput p2, p0, Lbhu;->i:I

    .line 245
    :goto_1
    iget-object p2, p0, Lbhu;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 246
    iget-object p2, p0, Lbhu;->f:Ljava/util/List;

    iget v0, p0, Lbhu;->i:I

    invoke-virtual {p0}, Lbhu;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbhu;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbhu;->b()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    iget-object p1, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    iget p2, p0, Lbhu;->j:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Lbhu;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 249
    :cond_6
    iget-object v1, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    iget v4, p0, Lbhu;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lbhu;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Lbhu;->n:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iput p2, p0, Lbhu;->j:I

    .line 252
    iput v2, p0, Lbhu;->i:I

    .line 253
    iget p2, p0, Lbhu;->i:I

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_7

    add-int/lit8 p2, p2, 0x1

    .line 254
    iput p2, p0, Lbhu;->i:I

    .line 256
    :cond_7
    iget-object p2, p0, Lbhu;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 257
    iget-object p2, p0, Lbhu;->f:Ljava/util/List;

    iget v0, p0, Lbhu;->i:I

    invoke-virtual {p0}, Lbhu;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbhu;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbhu;->b()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    :goto_2
    iput-boolean v2, p0, Lbhu;->k:Z

    :goto_3
    return-void
.end method

.method private i()V
    .locals 2

    .line 200
    iget-object v0, p0, Lbhu;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lbhu;->k:Z

    .line 202
    iget-object v0, p0, Lbhu;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    iget v1, p0, Lbhu;->g:I

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

    .line 28
    invoke-virtual {p0, p1}, Lbhu;->b(Landroid/content/Context;)Lcom/xiaopeng/musicradio/music/kugouzone/view/e;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbhw;)V
    .locals 0

    .line 28
    check-cast p2, Lbia;

    invoke-virtual {p0, p1, p2}, Lbhu;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbia;)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbia;)V
    .locals 12

    .line 106
    invoke-virtual {p2}, Lbia;->b()Ljava/util/List;

    move-result-object v0

    const-string v1, "KugouZoneCollectBinder"

    if-nez v0, :cond_0

    const-string p1, "onBindViewChild: item result list is null "

    .line 107
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lbhu;->b()I

    move-result v0

    invoke-virtual {p0}, Lbhu;->a()I

    move-result v2

    div-int/2addr v0, v2

    .line 111
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setColumn(I)V

    .line 114
    invoke-virtual {p0}, Lbhu;->b()I

    move-result v0

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 116
    :goto_0
    invoke-virtual {p0}, Lbhu;->b()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbhu;->b(Landroid/content/Context;)Lcom/xiaopeng/musicradio/music/kugouzone/view/e;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lbhu;->f()I

    move-result v4

    invoke-virtual {p0}, Lbhu;->e()I

    move-result v5

    invoke-virtual {p1, v2, v4, v5}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a(Ljava/util/List;II)V

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewChild: item result list size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbia;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p2}, Lbia;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lbhu;->b()I

    move-result v2

    const/4 v4, 0x2

    mul-int/2addr v2, v4

    const/4 v5, 0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {p2}, Lbia;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 124
    iput-boolean v3, p0, Lbhu;->h:Z

    .line 125
    iget-object v1, p0, Lbhu;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 126
    iget-object v1, p0, Lbhu;->f:Ljava/util/List;

    invoke-virtual {p2}, Lbia;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 128
    :cond_2
    iput-boolean v5, p0, Lbhu;->h:Z

    .line 129
    invoke-virtual {p2}, Lbia;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lbia;->d()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lbhu;->a(Ljava/util/List;I)V

    .line 133
    :goto_1
    iget-boolean v1, p0, Lbhu;->h:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    .line 134
    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setFeelLuckyBtnVisibility(I)V

    .line 135
    new-instance v1, Lbhu$1;

    invoke-direct {v1, p0, p2}, Lbhu$1;-><init>(Lbhu;Lbia;)V

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setFeelLuckyListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 144
    :cond_3
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setFeelLuckyBtnVisibility(I)V

    .line 146
    :goto_2
    invoke-virtual {p2}, Lbia;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lbia;->h()I

    move-result v6

    invoke-virtual {p1, v1, v6}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a(Ljava/lang/String;I)V

    .line 147
    invoke-virtual {p2}, Lbia;->f()I

    move-result v1

    if-ne v1, v5, :cond_4

    move v1, v5

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setClickVisibility(Z)V

    .line 148
    invoke-virtual {p2}, Lbia;->f()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 149
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getTitleTv()Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    new-instance v6, Lbhu$2;

    invoke-direct {v6, p0, p2, p1}, Lbhu$2;-><init>(Lbhu;Lbia;Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;)V

    invoke-virtual {v1, v6}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    move v1, v3

    :goto_4
    if-ge v1, v0, :cond_9

    .line 158
    iget-object v6, p0, Lbhu;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 159
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 160
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 161
    iget-object v7, p0, Lbhu;->f:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 162
    instance-of v8, v6, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;

    if-eqz v8, :cond_8

    .line 163
    check-cast v6, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;

    .line 164
    iget-object v8, p0, Lbhu;->f:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v6, v8}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->setMusicRadioItem(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 165
    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Lbia;->h()I

    move-result v8

    invoke-virtual {p0, v1, v8}, Lbhu;->a(II)I

    move-result v8

    .line 168
    iget-object v9, p0, Lbhu;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/xiaopeng/musicradio/music/kugouzone/view/b;->isMusicCollectPlaying(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 169
    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v4, v8, v9}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->a(IILjava/lang/String;)V

    move v9, v5

    goto :goto_5

    :cond_6
    const/4 v9, 0x3

    .line 172
    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v8, v10}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->a(IILjava/lang/String;)V

    move v9, v3

    .line 174
    :goto_5
    invoke-virtual {v6, v8}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->setPosition(I)V

    .line 175
    new-instance v10, Lbhu$3;

    invoke-direct {v10, p0, v7, p2}, Lbhu$3;-><init>(Lbhu;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lbia;)V

    invoke-virtual {v6, v10}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->setOnPlayControlListener(Landroid/view/View$OnClickListener;)V

    .line 183
    new-instance v10, Lbhu$4;

    invoke-direct {v10, p0, v7, p2}, Lbhu$4;-><init>(Lbhu;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lbia;)V

    invoke-virtual {v6, v10}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7, v9}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->a(ILjava/lang/String;Z)V

    goto :goto_6

    .line 194
    :cond_7
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_9
    return-void
.end method

.method protected b()I
    .locals 1

    .line 56
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 59
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

    .line 98
    new-instance v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 99
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->setVisibility(I)V

    return-object v0
.end method

.method protected c()I
    .locals 2

    .line 68
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

    .line 82
    iget-object v0, p0, Lbhu;->m:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 84
    iget-object v0, p0, Lbhu;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 85
    iget-object v1, p0, Lbhu;->m:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lbhu;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p0, Lbhu;->m:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {p0}, Lbhu;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lbhu;->c()I

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
