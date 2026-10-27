.class public Lcom/google/common/collect/aj;
.super Lcom/google/common/collect/AbstractMultimap;
.source "LinkedListMultimap.java"

# interfaces
.implements Lcom/google/common/collect/ak;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/aj$e;,
        Lcom/google/common/collect/aj$a;,
        Lcom/google/common/collect/aj$d;,
        Lcom/google/common/collect/aj$b;,
        Lcom/google/common/collect/aj$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultimap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/ak<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient head:Lcom/google/common/collect/aj$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keyToKeyList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcom/google/common/collect/aj$b<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private transient size:I

.field private transient tail:Lcom/google/common/collect/aj$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/google/common/collect/aj;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/google/common/collect/aj;->modCount:I

    return p0
.end method

.method static synthetic a(Lcom/google/common/collect/aj;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/aj$c;)Lcom/google/common/collect/aj$c;
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/aj;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/aj$c;)Lcom/google/common/collect/aj$c;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/aj$c;)Lcom/google/common/collect/aj$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 212
    new-instance v0, Lcom/google/common/collect/aj$c;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/aj$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    iget-object p2, p0, Lcom/google/common/collect/aj;->head:Lcom/google/common/collect/aj$c;

    if-nez p2, :cond_0

    .line 214
    iput-object v0, p0, Lcom/google/common/collect/aj;->tail:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj;->head:Lcom/google/common/collect/aj$c;

    .line 215
    iget-object p2, p0, Lcom/google/common/collect/aj;->keyToKeyList:Ljava/util/Map;

    new-instance p3, Lcom/google/common/collect/aj$b;

    invoke-direct {p3, v0}, Lcom/google/common/collect/aj$b;-><init>(Lcom/google/common/collect/aj$c;)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget p1, p0, Lcom/google/common/collect/aj;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/aj;->modCount:I

    goto :goto_2

    :cond_0
    if-nez p3, :cond_2

    .line 218
    iget-object p2, p0, Lcom/google/common/collect/aj;->tail:Lcom/google/common/collect/aj$c;

    iput-object v0, p2, Lcom/google/common/collect/aj$c;->c:Lcom/google/common/collect/aj$c;

    .line 219
    iput-object p2, v0, Lcom/google/common/collect/aj$c;->d:Lcom/google/common/collect/aj$c;

    .line 220
    iput-object v0, p0, Lcom/google/common/collect/aj;->tail:Lcom/google/common/collect/aj$c;

    .line 221
    iget-object p2, p0, Lcom/google/common/collect/aj;->keyToKeyList:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/collect/aj$b;

    if-nez p2, :cond_1

    .line 223
    iget-object p2, p0, Lcom/google/common/collect/aj;->keyToKeyList:Ljava/util/Map;

    new-instance p3, Lcom/google/common/collect/aj$b;

    invoke-direct {p3, v0}, Lcom/google/common/collect/aj$b;-><init>(Lcom/google/common/collect/aj$c;)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget p1, p0, Lcom/google/common/collect/aj;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/aj;->modCount:I

    goto :goto_2

    .line 226
    :cond_1
    iget p1, p2, Lcom/google/common/collect/aj$b;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lcom/google/common/collect/aj$b;->c:I

    .line 227
    iget-object p1, p2, Lcom/google/common/collect/aj$b;->b:Lcom/google/common/collect/aj$c;

    .line 228
    iput-object v0, p1, Lcom/google/common/collect/aj$c;->e:Lcom/google/common/collect/aj$c;

    .line 229
    iput-object p1, v0, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    .line 230
    iput-object v0, p2, Lcom/google/common/collect/aj$b;->b:Lcom/google/common/collect/aj$c;

    goto :goto_2

    .line 233
    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/aj;->keyToKeyList:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/collect/aj$b;

    .line 234
    iget v1, p2, Lcom/google/common/collect/aj$b;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/google/common/collect/aj$b;->c:I

    .line 235
    iget-object p2, p3, Lcom/google/common/collect/aj$c;->d:Lcom/google/common/collect/aj$c;

    iput-object p2, v0, Lcom/google/common/collect/aj$c;->d:Lcom/google/common/collect/aj$c;

    .line 236
    iget-object p2, p3, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    iput-object p2, v0, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    .line 237
    iput-object p3, v0, Lcom/google/common/collect/aj$c;->c:Lcom/google/common/collect/aj$c;

    .line 238
    iput-object p3, v0, Lcom/google/common/collect/aj$c;->e:Lcom/google/common/collect/aj$c;

    .line 239
    iget-object p2, p3, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    if-nez p2, :cond_3

    .line 240
    iget-object p2, p0, Lcom/google/common/collect/aj;->keyToKeyList:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/aj$b;

    iput-object v0, p1, Lcom/google/common/collect/aj$b;->a:Lcom/google/common/collect/aj$c;

    goto :goto_0

    .line 242
    :cond_3
    iget-object p1, p3, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    iput-object v0, p1, Lcom/google/common/collect/aj$c;->e:Lcom/google/common/collect/aj$c;

    .line 244
    :goto_0
    iget-object p1, p3, Lcom/google/common/collect/aj$c;->d:Lcom/google/common/collect/aj$c;

    if-nez p1, :cond_4

    .line 245
    iput-object v0, p0, Lcom/google/common/collect/aj;->head:Lcom/google/common/collect/aj$c;

    goto :goto_1

    .line 247
    :cond_4
    iget-object p1, p3, Lcom/google/common/collect/aj$c;->d:Lcom/google/common/collect/aj$c;

    iput-object v0, p1, Lcom/google/common/collect/aj$c;->c:Lcom/google/common/collect/aj$c;

    .line 249
    :goto_1
    iput-object v0, p3, Lcom/google/common/collect/aj$c;->d:Lcom/google/common/collect/aj$c;

    .line 250
    iput-object v0, p3, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    .line 252
    :goto_2
    iget p1, p0, Lcom/google/common/collect/aj;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/aj;->size:I

    return-object v0
.end method

.method private a(Lcom/google/common/collect/aj$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 261
    iget-object v0, p1, Lcom/google/common/collect/aj$c;->d:Lcom/google/common/collect/aj$c;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p1, Lcom/google/common/collect/aj$c;->d:Lcom/google/common/collect/aj$c;

    iget-object v1, p1, Lcom/google/common/collect/aj$c;->c:Lcom/google/common/collect/aj$c;

    iput-object v1, v0, Lcom/google/common/collect/aj$c;->c:Lcom/google/common/collect/aj$c;

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/aj$c;->c:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj;->head:Lcom/google/common/collect/aj$c;

    .line 266
    :goto_0
    iget-object v0, p1, Lcom/google/common/collect/aj$c;->c:Lcom/google/common/collect/aj$c;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p1, Lcom/google/common/collect/aj$c;->c:Lcom/google/common/collect/aj$c;

    iget-object v1, p1, Lcom/google/common/collect/aj$c;->d:Lcom/google/common/collect/aj$c;

    iput-object v1, v0, Lcom/google/common/collect/aj$c;->d:Lcom/google/common/collect/aj$c;

    goto :goto_1

    .line 269
    :cond_1
    iget-object v0, p1, Lcom/google/common/collect/aj$c;->d:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj;->tail:Lcom/google/common/collect/aj$c;

    .line 271
    :goto_1
    iget-object v0, p1, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/common/collect/aj$c;->e:Lcom/google/common/collect/aj$c;

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/google/common/collect/aj;->keyToKeyList:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/common/collect/aj$c;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/aj$b;

    const/4 v0, 0x0

    .line 273
    iput v0, p1, Lcom/google/common/collect/aj$b;->c:I

    .line 274
    iget p1, p0, Lcom/google/common/collect/aj;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/aj;->modCount:I

    goto :goto_3

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/aj;->keyToKeyList:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/aj$c;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/aj$b;

    .line 277
    iget v1, v0, Lcom/google/common/collect/aj$b;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/aj$b;->c:I

    .line 279
    iget-object v1, p1, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    if-nez v1, :cond_3

    .line 280
    iget-object v1, p1, Lcom/google/common/collect/aj$c;->e:Lcom/google/common/collect/aj$c;

    iput-object v1, v0, Lcom/google/common/collect/aj$b;->a:Lcom/google/common/collect/aj$c;

    goto :goto_2

    .line 282
    :cond_3
    iget-object v1, p1, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    iget-object v2, p1, Lcom/google/common/collect/aj$c;->e:Lcom/google/common/collect/aj$c;

    iput-object v2, v1, Lcom/google/common/collect/aj$c;->e:Lcom/google/common/collect/aj$c;

    .line 285
    :goto_2
    iget-object v1, p1, Lcom/google/common/collect/aj$c;->e:Lcom/google/common/collect/aj$c;

    if-nez v1, :cond_4

    .line 286
    iget-object p1, p1, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    iput-object p1, v0, Lcom/google/common/collect/aj$b;->b:Lcom/google/common/collect/aj$c;

    goto :goto_3

    .line 288
    :cond_4
    iget-object v0, p1, Lcom/google/common/collect/aj$c;->e:Lcom/google/common/collect/aj$c;

    iget-object p1, p1, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    iput-object p1, v0, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    .line 291
    :goto_3
    iget p1, p0, Lcom/google/common/collect/aj;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/aj;->size:I

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/aj;Lcom/google/common/collect/aj$c;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/common/collect/aj;->a(Lcom/google/common/collect/aj$c;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/aj;Ljava/lang/Object;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/common/collect/aj;->h(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/google/common/collect/aj;)Lcom/google/common/collect/aj$c;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/google/common/collect/aj;->tail:Lcom/google/common/collect/aj$c;

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/collect/aj;)Lcom/google/common/collect/aj$c;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/google/common/collect/aj;->head:Lcom/google/common/collect/aj$c;

    return-object p0
.end method

.method static synthetic d(Lcom/google/common/collect/aj;)Ljava/util/Map;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/google/common/collect/aj;->keyToKeyList:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e(Lcom/google/common/collect/aj;)I
    .locals 0

    .line 97
    iget p0, p0, Lcom/google/common/collect/aj;->size:I

    return p0
.end method

.method static synthetic g(Ljava/lang/Object;)V
    .locals 0

    .line 97
    invoke-static {p0}, Lcom/google/common/collect/aj;->i(Ljava/lang/Object;)V

    return-void
.end method

.method private h(Ljava/lang/Object;)V
    .locals 1

    .line 296
    new-instance v0, Lcom/google/common/collect/aj$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/aj$e;-><init>(Lcom/google/common/collect/aj;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/ah;->i(Ljava/util/Iterator;)V

    return-void
.end method

.method private static i(Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 302
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method private j(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 641
    new-instance v0, Lcom/google/common/collect/aj$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/aj$e;-><init>(Lcom/google/common/collect/aj;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 735
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->f()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 652
    invoke-direct {p0, p1}, Lcom/google/common/collect/aj;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 653
    invoke-direct {p0, p1}, Lcom/google/common/collect/aj;->h(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 763
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl;-><init>(Lcom/google/common/collect/aj;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/google/common/collect/aj;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    .line 569
    iget v0, p0, Lcom/google/common/collect/aj;->size:I

    return v0
.end method

.method public synthetic c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/common/collect/aj;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/common/collect/aj;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 659
    iput-object v0, p0, Lcom/google/common/collect/aj;->head:Lcom/google/common/collect/aj$c;

    .line 660
    iput-object v0, p0, Lcom/google/common/collect/aj;->tail:Lcom/google/common/collect/aj$c;

    .line 661
    iget-object v0, p0, Lcom/google/common/collect/aj;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 662
    iput v0, p0, Lcom/google/common/collect/aj;->size:I

    .line 663
    iget v0, p0, Lcom/google/common/collect/aj;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/aj;->modCount:I

    return-void
.end method

.method e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 717
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$1KeySetImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$1KeySetImpl;-><init>(Lcom/google/common/collect/aj;)V

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 1

    .line 584
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic f()Ljava/util/Collection;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 679
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$1;-><init>(Lcom/google/common/collect/aj;Ljava/lang/Object;)V

    return-object v0
.end method

.method synthetic g()Ljava/util/Collection;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic i()Ljava/util/Collection;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->p()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method synthetic j()Ljava/util/Collection;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/google/common/collect/aj;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method k()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 806
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 811
    new-instance v0, Lcom/google/common/collect/Multimaps$AsMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$AsMap;-><init>(Lcom/google/common/collect/al;)V

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/google/common/collect/aj;->head:Lcom/google/common/collect/aj$c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic n()Ljava/util/Set;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->n()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Ljava/util/Map;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->o()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 784
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->i()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 801
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$1EntriesImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$1EntriesImpl;-><init>(Lcom/google/common/collect/aj;)V

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
