.class public Lbha;
.super Lbgw;
.source "DolbyZoneSongBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbgw<",
        "Lbhf;",
        "Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;",
        ">;"
    }
.end annotation


# static fields
.field public static b:I = 0x6


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
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

    .line 45
    invoke-direct {p0, p1}, Lbgw;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;)V

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbha;->c:Ljava/util/List;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lbha;->d:I

    .line 35
    iput-boolean p1, p0, Lbha;->f:Z

    .line 36
    iput p1, p0, Lbha;->g:I

    .line 37
    iput p1, p0, Lbha;->h:I

    .line 38
    iput-boolean p1, p0, Lbha;->i:Z

    .line 39
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    .line 42
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lbha;->l:Lcom/xiaopeng/musicradio/widget/k;

    .line 46
    iput-object p2, p0, Lbha;->k:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lbha;I)I
    .locals 0

    .line 30
    iput p1, p0, Lbha;->d:I

    return p1
.end method

.method static synthetic a(Lbha;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lbha;->i()V

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

    .line 204
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lbha;->b:I

    div-int/2addr v0, v1

    .line 205
    iget-boolean v1, p0, Lbha;->i:Z

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v1, :cond_2

    .line 206
    iget v0, p0, Lbha;->h:I

    if-ne p2, v0, :cond_0

    .line 207
    iget-object p2, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lbha;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object p2, p0, Lbha;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 209
    iget-object p2, p0, Lbha;->c:Ljava/util/List;

    iget v0, p0, Lbha;->g:I

    sget v1, Lbha;->b:I

    mul-int v2, v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 210
    :cond_0
    iget-object v0, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    iget v1, p0, Lbha;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lbha;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iput p2, p0, Lbha;->h:I

    .line 213
    iget-object v0, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lbha;->g:I

    .line 214
    iget-object p2, p0, Lbha;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 215
    iget-object p2, p0, Lbha;->c:Ljava/util/List;

    iget v0, p0, Lbha;->g:I

    sget v1, Lbha;->b:I

    mul-int v2, v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 217
    :cond_1
    iget-object v0, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    iget v1, p0, Lbha;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lbha;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iput p2, p0, Lbha;->h:I

    .line 220
    iput v2, p0, Lbha;->g:I

    .line 221
    iget-object p2, p0, Lbha;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 222
    iget-object p2, p0, Lbha;->c:Ljava/util/List;

    iget v0, p0, Lbha;->g:I

    sget v1, Lbha;->b:I

    mul-int v2, v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 225
    :cond_2
    iget v1, p0, Lbha;->h:I

    if-ne v1, p2, :cond_4

    .line 226
    iget v1, p0, Lbha;->g:I

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_3

    .line 227
    iput v2, p0, Lbha;->g:I

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 229
    iput v1, p0, Lbha;->g:I

    .line 231
    :goto_0
    iget-object v0, p0, Lbha;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 232
    iget-object v0, p0, Lbha;->c:Ljava/util/List;

    iget v1, p0, Lbha;->g:I

    sget v3, Lbha;->b:I

    mul-int v4, v1, v3

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v3

    invoke-interface {p1, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    iget-object p1, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Lbha;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 234
    :cond_4
    iget-object v1, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 235
    iget-object v1, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    iget v3, p0, Lbha;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lbha;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v1, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lbha;->g:I

    .line 237
    iput p2, p0, Lbha;->h:I

    .line 238
    iget p2, p0, Lbha;->g:I

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_5

    .line 239
    iput v2, p0, Lbha;->g:I

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 241
    iput p2, p0, Lbha;->g:I

    .line 243
    :goto_1
    iget-object p2, p0, Lbha;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 244
    iget-object p2, p0, Lbha;->c:Ljava/util/List;

    iget v0, p0, Lbha;->g:I

    sget v1, Lbha;->b:I

    mul-int v3, v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    iget-object p1, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    iget p2, p0, Lbha;->h:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Lbha;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 247
    :cond_6
    iget-object v1, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    iget v4, p0, Lbha;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lbha;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lbha;->j:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iput p2, p0, Lbha;->h:I

    .line 250
    iput v2, p0, Lbha;->g:I

    .line 251
    iget p2, p0, Lbha;->g:I

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_7

    add-int/lit8 p2, p2, 0x1

    .line 252
    iput p2, p0, Lbha;->g:I

    .line 254
    :cond_7
    iget-object p2, p0, Lbha;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 255
    iget-object p2, p0, Lbha;->c:Ljava/util/List;

    iget v0, p0, Lbha;->g:I

    sget v1, Lbha;->b:I

    mul-int v3, v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    :goto_2
    iput-boolean v2, p0, Lbha;->i:Z

    :goto_3
    return-void
.end method

.method static synthetic b(Lbha;)I
    .locals 0

    .line 30
    iget p0, p0, Lbha;->g:I

    return p0
.end method

.method private i()V
    .locals 2

    .line 197
    iget-object v0, p0, Lbha;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lbha;->i:Z

    .line 199
    iget-object v0, p0, Lbha;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    iget v1, p0, Lbha;->d:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;->changeBtnClick(I)V

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

    .line 30
    invoke-virtual {p0, p1}, Lbha;->b(Landroid/content/Context;)Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhb;)V
    .locals 0

    .line 30
    check-cast p2, Lbhf;

    invoke-virtual {p0, p1, p2}, Lbha;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhf;)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhf;)V
    .locals 12

    .line 96
    invoke-virtual {p2}, Lbhf;->b()Ljava/util/List;

    move-result-object v0

    const-string v1, "KugouZoneSongBinder"

    if-nez v0, :cond_0

    const-string p1, "onBindViewChild: item result list is null "

    .line 97
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewChild: item result list size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbhf;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p2}, Lbhf;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lbha;->b:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v0, v2, :cond_1

    invoke-virtual {p2}, Lbhf;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 103
    iput-boolean v4, p0, Lbha;->f:Z

    .line 104
    iget-object v0, p0, Lbha;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    iget-object v0, p0, Lbha;->c:Ljava/util/List;

    invoke-virtual {p2}, Lbhf;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 107
    :cond_1
    iput-boolean v5, p0, Lbha;->f:Z

    .line 108
    invoke-virtual {p2}, Lbhf;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lbhf;->d()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lbha;->a(Ljava/util/List;I)V

    .line 111
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nex3z/flowlayout/FlowLayout;->getChildCount()I

    move-result v0

    .line 112
    iget-boolean v2, p0, Lbha;->f:Z

    if-eqz v2, :cond_2

    .line 113
    new-instance v2, Lbha$1;

    invoke-direct {v2, p0, p2}, Lbha$1;-><init>(Lbha;Lbhf;)V

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->setFeelLuckyListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :cond_2
    iget-boolean v2, p0, Lbha;->f:Z

    const/16 v6, 0x8

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v6

    :goto_1
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->setFeelLuckyBtnVisibility(I)V

    .line 122
    invoke-virtual {p2}, Lbhf;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lbhf;->h()I

    move-result v7

    invoke-virtual {p1, v2, v7}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->a(Ljava/lang/String;I)V

    .line 123
    invoke-virtual {p2}, Lbhf;->f()I

    move-result v2

    if-ne v2, v5, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->setClickVisibility(Z)V

    .line 124
    new-instance v2, Lbha$2;

    invoke-direct {v2, p0, p2, p1}, Lbha$2;-><init>(Lbha;Lbhf;Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;)V

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->setPlayAllListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p2}, Lbhf;->f()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 135
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->getTitleTv()Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v2

    new-instance v7, Lbha$3;

    invoke-direct {v7, p0, p1, p2}, Lbha$3;-><init>(Lbha;Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhf;)V

    invoke-virtual {v2, v7}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_5
    iget-object v2, p0, Lbha;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    if-eqz v2, :cond_6

    .line 143
    iget-object v2, p0, Lbha;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    invoke-virtual {p2}, Lbhf;->c()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-1006"

    invoke-interface {v2, v8, v7}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;->getZoneSongPlayState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->setPlayAllBtnState(I)V

    :cond_6
    move v2, v4

    :goto_3
    if-ge v2, v0, :cond_c

    .line 146
    iget-object v7, p0, Lbha;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_a

    .line 147
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 149
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 150
    invoke-virtual {p0}, Lbha;->e()I

    move-result v9

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 151
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v8, p0, Lbha;->c:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {v8}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v8

    .line 153
    instance-of v9, v7, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;

    if-eqz v9, :cond_9

    .line 154
    check-cast v7, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;

    .line 156
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 157
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_7
    const-string v9, ""

    .line 159
    :goto_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 160
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 161
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v9

    .line 164
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onBindViewChild: logo is \uff1a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Lbhf;->a()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v7, v9}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->setIndex(I)V

    .line 167
    invoke-virtual {v7, v8, v3}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 169
    new-instance v9, Lbha$4;

    invoke-direct {v9, p0, p2, v8, v2}, Lbha$4;-><init>(Lbha;Lbhf;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    invoke-virtual {v7, v9}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v9, p0, Lbha;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/e;->getMusicPlayState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 182
    invoke-virtual {p2}, Lbhf;->a()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v10, v8}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->a(IILjava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string v7, "onBindViewChild: musicInfo could be null "

    .line 184
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    if-ne v2, v5, :cond_b

    .line 188
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 190
    :cond_b
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;->getContainerLayout()Lcom/nex3z/flowlayout/FlowLayout;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/nex3z/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

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

.method protected b(Landroid/content/Context;)Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;
    .locals 1

    .line 91
    new-instance v0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;-><init>(Landroid/content/Context;)V

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

    .line 71
    iget-object v0, p0, Lbha;->l:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 73
    iget-object v0, p0, Lbha;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 74
    iget-object v1, p0, Lbha;->l:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lbha;->c()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lbha;->l:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lbha;->c()I

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
