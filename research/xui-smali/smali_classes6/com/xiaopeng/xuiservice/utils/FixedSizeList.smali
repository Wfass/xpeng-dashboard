.class public Lcom/xiaopeng/xuiservice/utils/FixedSizeList;
.super Ljava/util/LinkedList;
.source "FixedSizeList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private volatile capacity:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 13
    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/FixedSizeList;, "Lcom/xiaopeng/xuiservice/utils/FixedSizeList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 14
    iput p1, p0, Lcom/xiaopeng/xuiservice/utils/FixedSizeList;->capacity:I

    .line 15
    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;I)V
    .locals 0
    .param p2, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;I)V"
        }
    .end annotation

    .line 18
    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/FixedSizeList;, "Lcom/xiaopeng/xuiservice/utils/FixedSizeList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/FixedSizeList;-><init>(I)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/utils/FixedSizeList;->addAll(Ljava/util/Collection;)Z

    .line 20
    return-void
.end method

.method public static create(I)Ljava/util/List;
    .locals 1
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/FixedSizeList;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/utils/FixedSizeList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Collection;I)Ljava/util/List;
    .locals 1
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 27
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/FixedSizeList;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/utils/FixedSizeList;-><init>(Ljava/util/Collection;I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/FixedSizeList;, "Lcom/xiaopeng/xuiservice/utils/FixedSizeList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/utils/FixedSizeList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/xiaopeng/xuiservice/utils/FixedSizeList;->capacity:I

    if-le v0, v1, :cond_0

    .line 55
    invoke-super {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 57
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 32
    .local p0, "this":Lcom/xiaopeng/xuiservice/utils/FixedSizeList;, "Lcom/xiaopeng/xuiservice/utils/FixedSizeList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/utils/FixedSizeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 33
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 34
    .local v1, "addIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/utils/FixedSizeList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 41
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    iget v3, p0, Lcom/xiaopeng/xuiservice/utils/FixedSizeList;->capacity:I

    if-le v2, v3, :cond_2

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 47
    :cond_2
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method
