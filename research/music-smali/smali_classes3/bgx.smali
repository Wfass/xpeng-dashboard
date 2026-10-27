.class public Lbgx;
.super Lbgw;
.source "DolbyZoneAlbumBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbgw<",
        "Lbhc;",
        "Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;",
        ">;"
    }
.end annotation


# static fields
.field public static b:I = 0x8


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:Z

.field private j:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/view/View;

.field private l:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;Landroid/view/View;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lbgw;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbgx;->c:Ljava/util/List;

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lbgx;->d:I

    .line 33
    iput-boolean p1, p0, Lbgx;->f:Z

    .line 34
    iput p1, p0, Lbgx;->g:I

    .line 35
    iput p1, p0, Lbgx;->h:I

    .line 36
    iput-boolean p1, p0, Lbgx;->i:Z

    .line 37
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    .line 40
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lbgx;->l:Lcom/xiaopeng/musicradio/widget/k;

    .line 198
    iput-object p2, p0, Lbgx;->k:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lbgx;I)I
    .locals 0

    .line 28
    iput p1, p0, Lbgx;->d:I

    return p1
.end method

.method static synthetic a(Lbgx;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lbgx;->i()V

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

    .line 209
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lbgx;->b()I

    move-result v1

    div-int/2addr v0, v1

    .line 210
    iget-boolean v1, p0, Lbgx;->i:Z

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v1, :cond_2

    .line 211
    iget v0, p0, Lbgx;->h:I

    if-ne p2, v0, :cond_0

    .line 212
    iget-object p2, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lbgx;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object p2, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 214
    iget-object p2, p0, Lbgx;->c:Ljava/util/List;

    iget v0, p0, Lbgx;->g:I

    invoke-virtual {p0}, Lbgx;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbgx;->g:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbgx;->b()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 215
    :cond_0
    iget-object v0, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    iget v1, p0, Lbgx;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lbgx;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iput p2, p0, Lbgx;->h:I

    .line 218
    iget-object v0, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lbgx;->g:I

    .line 219
    iget-object p2, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 220
    iget-object p2, p0, Lbgx;->c:Ljava/util/List;

    iget v0, p0, Lbgx;->g:I

    invoke-virtual {p0}, Lbgx;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbgx;->g:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbgx;->b()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 222
    :cond_1
    iget-object v0, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    iget v1, p0, Lbgx;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lbgx;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iput p2, p0, Lbgx;->h:I

    .line 225
    iput v2, p0, Lbgx;->g:I

    .line 226
    iget-object p2, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 227
    iget-object p2, p0, Lbgx;->c:Ljava/util/List;

    iget v0, p0, Lbgx;->g:I

    invoke-virtual {p0}, Lbgx;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbgx;->g:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbgx;->b()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 230
    :cond_2
    iget v1, p0, Lbgx;->h:I

    if-ne v1, p2, :cond_4

    .line 231
    iget v1, p0, Lbgx;->g:I

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_3

    .line 232
    iput v2, p0, Lbgx;->g:I

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 234
    iput v1, p0, Lbgx;->g:I

    .line 236
    :goto_0
    iget-object v0, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
    iget-object v0, p0, Lbgx;->c:Ljava/util/List;

    iget v1, p0, Lbgx;->g:I

    invoke-virtual {p0}, Lbgx;->b()I

    move-result v3

    mul-int/2addr v1, v3

    iget v3, p0, Lbgx;->g:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lbgx;->b()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    iget-object p1, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Lbgx;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 239
    :cond_4
    iget-object v1, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 240
    iget-object v1, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    iget v3, p0, Lbgx;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lbgx;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lbgx;->g:I

    .line 242
    iput p2, p0, Lbgx;->h:I

    .line 243
    iget p2, p0, Lbgx;->g:I

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_5

    .line 244
    iput v2, p0, Lbgx;->g:I

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 246
    iput p2, p0, Lbgx;->g:I

    .line 248
    :goto_1
    iget-object p2, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 249
    iget-object p2, p0, Lbgx;->c:Ljava/util/List;

    iget v0, p0, Lbgx;->g:I

    invoke-virtual {p0}, Lbgx;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbgx;->g:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbgx;->b()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    iget-object p1, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    iget p2, p0, Lbgx;->h:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Lbgx;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 252
    :cond_6
    iget-object v1, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    iget v4, p0, Lbgx;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lbgx;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v1, p0, Lbgx;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iput p2, p0, Lbgx;->h:I

    .line 255
    iput v2, p0, Lbgx;->g:I

    .line 256
    iget p2, p0, Lbgx;->g:I

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_7

    add-int/lit8 p2, p2, 0x1

    .line 257
    iput p2, p0, Lbgx;->g:I

    .line 259
    :cond_7
    iget-object p2, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 260
    iget-object p2, p0, Lbgx;->c:Ljava/util/List;

    iget v0, p0, Lbgx;->g:I

    invoke-virtual {p0}, Lbgx;->b()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lbgx;->g:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lbgx;->b()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    :goto_2
    iput-boolean v2, p0, Lbgx;->i:Z

    :goto_3
    return-void
.end method

.method static synthetic b(Lbgx;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lbgx;->c:Ljava/util/List;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 202
    iget-object v0, p0, Lbgx;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lbgx;->i:Z

    .line 204
    iget-object v0, p0, Lbgx;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    iget v1, p0, Lbgx;->d:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;->changeBtnClick(I)V

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
    invoke-virtual {p0, p1}, Lbgx;->b(Landroid/content/Context;)Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhb;)V
    .locals 0

    .line 28
    check-cast p2, Lbhc;

    invoke-virtual {p0, p1, p2}, Lbgx;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhc;)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhc;)V
    .locals 11

    .line 99
    invoke-virtual {p2}, Lbhc;->b()Ljava/util/List;

    move-result-object v0

    const-string v1, "KugouZoneAlbumBinder"

    if-nez v0, :cond_0

    const-string p1, "onBindViewChild: item result list is null "

    .line 100
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lbgx;->b()I

    move-result v0

    invoke-virtual {p0}, Lbgx;->a()I

    move-result v2

    div-int/2addr v0, v2

    .line 105
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->setColumn(I)V

    .line 106
    invoke-virtual {p0}, Lbgx;->b()I

    move-result v0

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 108
    :goto_0
    invoke-virtual {p0}, Lbgx;->b()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 109
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbgx;->b(Landroid/content/Context;)Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lbgx;->f()I

    move-result v4

    invoke-virtual {p0}, Lbgx;->e()I

    move-result v5

    invoke-virtual {p1, v2, v4, v5}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->a(Ljava/util/List;II)V

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewChild: item result list size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbhc;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p2}, Lbhc;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lbgx;->b()I

    move-result v4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    const/4 v6, 0x1

    if-ge v2, v4, :cond_2

    invoke-virtual {p2}, Lbhc;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 116
    iput-boolean v3, p0, Lbgx;->f:Z

    .line 117
    iget-object v2, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 118
    iget-object v2, p0, Lbgx;->c:Ljava/util/List;

    invoke-virtual {p2}, Lbhc;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 120
    :cond_2
    iput-boolean v6, p0, Lbgx;->f:Z

    .line 121
    invoke-virtual {p2}, Lbhc;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lbhc;->d()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lbgx;->a(Ljava/util/List;I)V

    .line 123
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewChild: listsize is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewChild: ChildCount is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-boolean v1, p0, Lbgx;->f:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    .line 127
    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->setFeelLuckyBtnVisibility(I)V

    .line 128
    new-instance v1, Lbgx$1;

    invoke-direct {v1, p0, p2}, Lbgx$1;-><init>(Lbgx;Lbhc;)V

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->setFeelLuckyListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 136
    :cond_3
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->setFeelLuckyBtnVisibility(I)V

    .line 138
    :goto_2
    invoke-virtual {p2}, Lbhc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lbhc;->h()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->a(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {p2}, Lbhc;->f()I

    move-result v1

    if-ne v1, v6, :cond_4

    move v1, v6

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->setClickVisibility(Z)V

    .line 140
    invoke-virtual {p2}, Lbhc;->f()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 141
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->getTitleTv()Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    new-instance v4, Lbgx$2;

    invoke-direct {v4, p0, p1, p2}, Lbgx$2;-><init>(Lbgx;Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhc;)V

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    move v1, v3

    :goto_4
    if-ge v1, v0, :cond_9

    .line 150
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 151
    iget-object v7, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_8

    .line 152
    instance-of v7, v4, Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;

    if-eqz v7, :cond_7

    .line 153
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    check-cast v4, Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;

    iget-object v7, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v4, v7}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;->setMusicRadioItem(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 155
    iget-object v7, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v7, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;->setItemTitle(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Lbhc;->h()I

    move-result v7

    invoke-virtual {p0, v1, v7}, Lbgx;->a(II)I

    move-result v7

    .line 159
    iget-object v8, p0, Lbgx;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    iget-object v9, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;->isMusicAlbumPlaying(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 160
    iget-object v8, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v7, v8}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;->a(IILjava/lang/String;)V

    move v8, v6

    goto :goto_5

    :cond_6
    const/4 v8, 0x3

    .line 163
    iget-object v9, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v7, v9}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;->a(IILjava/lang/String;)V

    move v8, v3

    .line 165
    :goto_5
    invoke-virtual {v4, v7}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;->setPosition(I)V

    .line 167
    new-instance v9, Lbgx$3;

    invoke-direct {v9, p0, v1}, Lbgx$3;-><init>(Lbgx;I)V

    invoke-virtual {v4, v9}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;->setOnPlayControlListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v9, Lbgx$4;

    invoke-direct {v9, p0, v1}, Lbgx$4;-><init>(Lbgx;I)V

    invoke-virtual {v4, v9}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v9, p0, Lbgx;->c:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v7, v9, v8}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;->a(ILjava/lang/String;Z)V

    goto :goto_6

    :cond_7
    if-eqz v4, :cond_8

    .line 188
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

    .line 49
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 52
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

.method protected b(Landroid/content/Context;)Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;
    .locals 1

    .line 92
    new-instance v0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 93
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/c;->setVisibility(I)V

    return-object v0
.end method

.method protected c()I
    .locals 2

    .line 61
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

    .line 76
    iget-object v0, p0, Lbgx;->l:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 78
    iget-object v0, p0, Lbgx;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 79
    iget-object v1, p0, Lbgx;->l:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lbgx;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p0, Lbgx;->l:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lbgx;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lbgx;->c()I

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
