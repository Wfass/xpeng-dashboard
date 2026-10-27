.class public Lbhv;
.super Lbhq;
.source "KugouZoneSongBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbhq<",
        "Lbib;",
        "Lcom/xiaopeng/musicradio/music/kugouzone/view/f;",
        ">;"
    }
.end annotation


# static fields
.field public static d:I = 0x6


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;Landroid/view/View;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lbhq;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/b;)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbhv;->f:Ljava/util/List;

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lbhv;->g:I

    .line 33
    iput-boolean p1, p0, Lbhv;->h:Z

    .line 34
    iput p1, p0, Lbhv;->i:I

    .line 35
    iput p1, p0, Lbhv;->j:I

    .line 36
    iput-boolean p1, p0, Lbhv;->k:Z

    .line 37
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    .line 43
    iput-object p2, p0, Lbhv;->m:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lbhv;I)I
    .locals 0

    .line 28
    iput p1, p0, Lbhv;->g:I

    return p1
.end method

.method static synthetic a(Lbhv;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lbhv;->i()V

    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;I)V"
        }
    .end annotation

    .line 208
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lbhv;->d:I

    div-int/2addr v0, v1

    .line 209
    iget-boolean v1, p0, Lbhv;->k:Z

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v1, :cond_2

    .line 210
    iget v0, p0, Lbhv;->j:I

    if-ne p2, v0, :cond_0

    .line 211
    iget-object p2, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lbhv;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object p2, p0, Lbhv;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 213
    iget-object p2, p0, Lbhv;->f:Ljava/util/List;

    iget v0, p0, Lbhv;->i:I

    sget v1, Lbhv;->d:I

    mul-int v2, v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 214
    :cond_0
    iget-object v0, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    iget v1, p0, Lbhv;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lbhv;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iput p2, p0, Lbhv;->j:I

    .line 217
    iget-object v0, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lbhv;->i:I

    .line 218
    iget-object p2, p0, Lbhv;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 219
    iget-object p2, p0, Lbhv;->f:Ljava/util/List;

    iget v0, p0, Lbhv;->i:I

    sget v1, Lbhv;->d:I

    mul-int v2, v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 221
    :cond_1
    iget-object v0, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    iget v1, p0, Lbhv;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lbhv;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iput p2, p0, Lbhv;->j:I

    .line 224
    iput v2, p0, Lbhv;->i:I

    .line 225
    iget-object p2, p0, Lbhv;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 226
    iget-object p2, p0, Lbhv;->f:Ljava/util/List;

    iget v0, p0, Lbhv;->i:I

    sget v1, Lbhv;->d:I

    mul-int v2, v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 229
    :cond_2
    iget v1, p0, Lbhv;->j:I

    if-ne v1, p2, :cond_4

    .line 230
    iget v1, p0, Lbhv;->i:I

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_3

    .line 231
    iput v2, p0, Lbhv;->i:I

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 233
    iput v1, p0, Lbhv;->i:I

    .line 235
    :goto_0
    iget-object v0, p0, Lbhv;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 236
    iget-object v0, p0, Lbhv;->f:Ljava/util/List;

    iget v1, p0, Lbhv;->i:I

    sget v3, Lbhv;->d:I

    mul-int v4, v1, v3

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v3

    invoke-interface {p1, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    iget-object p1, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Lbhv;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 238
    :cond_4
    iget-object v1, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 239
    iget-object v1, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    iget v3, p0, Lbhv;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lbhv;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v1, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lbhv;->i:I

    .line 241
    iput p2, p0, Lbhv;->j:I

    .line 242
    iget p2, p0, Lbhv;->i:I

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_5

    .line 243
    iput v2, p0, Lbhv;->i:I

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 245
    iput p2, p0, Lbhv;->i:I

    .line 247
    :goto_1
    iget-object p2, p0, Lbhv;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 248
    iget-object p2, p0, Lbhv;->f:Ljava/util/List;

    iget v0, p0, Lbhv;->i:I

    sget v1, Lbhv;->d:I

    mul-int v3, v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    iget-object p1, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    iget p2, p0, Lbhv;->j:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Lbhv;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 251
    :cond_6
    iget-object v1, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    iget v4, p0, Lbhv;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lbhv;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v1, p0, Lbhv;->l:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iput p2, p0, Lbhv;->j:I

    .line 254
    iput v2, p0, Lbhv;->i:I

    .line 255
    iget p2, p0, Lbhv;->i:I

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_7

    add-int/lit8 p2, p2, 0x1

    .line 256
    iput p2, p0, Lbhv;->i:I

    .line 258
    :cond_7
    iget-object p2, p0, Lbhv;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 259
    iget-object p2, p0, Lbhv;->f:Ljava/util/List;

    iget v0, p0, Lbhv;->i:I

    sget v1, Lbhv;->d:I

    mul-int v3, v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    :goto_2
    iput-boolean v2, p0, Lbhv;->k:Z

    :goto_3
    return-void
.end method

.method static synthetic b(Lbhv;)I
    .locals 0

    .line 28
    iget p0, p0, Lbhv;->i:I

    return p0
.end method

.method private i()V
    .locals 2

    .line 201
    iget-object v0, p0, Lbhv;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lbhv;->k:Z

    .line 203
    iget-object v0, p0, Lbhv;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    iget v1, p0, Lbhv;->g:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/b;->changeBtnClick(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected synthetic a(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lbhv;->b(Landroid/content/Context;)Lcom/xiaopeng/musicradio/music/kugouzone/view/f;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbhw;)V
    .locals 0

    .line 28
    check-cast p2, Lbib;

    invoke-virtual {p0, p1, p2}, Lbhv;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbib;)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbib;)V
    .locals 13

    .line 93
    invoke-virtual {p2}, Lbib;->b()Ljava/util/List;

    move-result-object v0

    const-string v1, "KugouZoneSongBinder"

    if-nez v0, :cond_0

    const-string p1, "onBindViewChild: item result list is null "

    .line 94
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewChild: item result list size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbib;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p2}, Lbib;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lbhv;->d:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v2, :cond_1

    invoke-virtual {p2}, Lbib;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 100
    iput-boolean v3, p0, Lbhv;->h:Z

    .line 101
    iget-object v0, p0, Lbhv;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    iget-object v0, p0, Lbhv;->f:Ljava/util/List;

    invoke-virtual {p2}, Lbib;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 104
    :cond_1
    iput-boolean v4, p0, Lbhv;->h:Z

    .line 105
    invoke-virtual {p2}, Lbib;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lbib;->d()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lbhv;->a(Ljava/util/List;I)V

    .line 108
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nex3z/flowlayout/FlowLayout;->getChildCount()I

    move-result v0

    .line 109
    iget-boolean v2, p0, Lbhv;->h:Z

    if-eqz v2, :cond_2

    .line 110
    new-instance v2, Lbhv$1;

    invoke-direct {v2, p0, p2}, Lbhv$1;-><init>(Lbhv;Lbib;)V

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setFeelLuckyListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_2
    iget-boolean v2, p0, Lbhv;->h:Z

    const/16 v5, 0x8

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setFeelLuckyBtnVisibility(I)V

    .line 120
    invoke-virtual {p2}, Lbib;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lbib;->h()I

    move-result v6

    invoke-virtual {p1, v2, v6}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->a(Ljava/lang/String;I)V

    .line 121
    invoke-virtual {p2}, Lbib;->f()I

    move-result v2

    if-ne v2, v4, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setClickVisibility(Z)V

    .line 122
    new-instance v2, Lbhv$2;

    invoke-direct {v2, p0, p2, p1}, Lbhv$2;-><init>(Lbhv;Lbib;Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;)V

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setPlayAllListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {p2}, Lbib;->f()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 136
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getTitleTv()Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v2

    new-instance v6, Lbhv$3;

    invoke-direct {v6, p0, p1, p2}, Lbhv$3;-><init>(Lbhv;Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbib;)V

    invoke-virtual {v2, v6}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_5
    iget-object v2, p0, Lbhv;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    const-string v6, ""

    if-eqz v2, :cond_6

    .line 145
    iget-object v2, p0, Lbhv;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lbib;->d()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lbib;->c()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Lcom/xiaopeng/musicradio/music/kugouzone/view/b;->getZoneSongPlayState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->setPlayAllBtnState(I)V

    :cond_6
    move v2, v3

    :goto_3
    if-ge v2, v0, :cond_c

    .line 148
    iget-object v7, p0, Lbhv;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-ge v2, v7, :cond_a

    .line 149
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 150
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 151
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 152
    invoke-virtual {p0}, Lbhv;->e()I

    move-result v10

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 153
    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v9, p0, Lbhv;->f:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {v9}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v9

    .line 155
    instance-of v10, v7, Lcom/xiaopeng/musicradio/music/kugouzone/view/f;

    if-eqz v10, :cond_9

    .line 156
    check-cast v7, Lcom/xiaopeng/musicradio/music/kugouzone/view/f;

    .line 158
    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 159
    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_7
    move-object v10, v6

    .line 161
    :goto_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 162
    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 163
    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v10

    .line 166
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onBindViewChild: logo is \uff1a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/xiaopeng/musicradio/music/kugouzone/view/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Lbib;->a()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v7, v10}, Lcom/xiaopeng/musicradio/music/kugouzone/view/f;->setIndex(I)V

    .line 169
    invoke-virtual {v7, v9, v8}, Lcom/xiaopeng/musicradio/music/kugouzone/view/f;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 171
    new-instance v8, Lbhv$4;

    invoke-direct {v8, p0, p2, v9, v2}, Lbhv$4;-><init>(Lbhv;Lbib;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    invoke-virtual {v7, v8}, Lcom/xiaopeng/musicradio/music/kugouzone/view/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v8, p0, Lbhv;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Lcom/xiaopeng/musicradio/music/kugouzone/view/b;->getMusicPlayState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 186
    invoke-virtual {p2}, Lbib;->a()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v10, v9}, Lcom/xiaopeng/musicradio/music/kugouzone/view/f;->a(IILjava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string v7, "onBindViewChild: musicInfo could be null "

    .line 188
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    if-ne v2, v4, :cond_b

    .line 192
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 194
    :cond_b
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_c
    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected b(Landroid/content/Context;)Lcom/xiaopeng/musicradio/music/kugouzone/view/f;
    .locals 1

    .line 88
    new-instance v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/f;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected c()I
    .locals 2

    .line 58
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

    .line 68
    iget-object v0, p0, Lbhv;->b:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 70
    iget-object v0, p0, Lbhv;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 71
    iget-object v1, p0, Lbhv;->b:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lbhv;->c()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lbhv;->b:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lbhv;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    :goto_0
    return v0
.end method

.method protected f()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method
