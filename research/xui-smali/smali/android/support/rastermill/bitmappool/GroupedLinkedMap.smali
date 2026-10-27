.class Landroid/support/rastermill/bitmappool/GroupedLinkedMap;
.super Ljava/lang/Object;
.source "GroupedLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Landroid/support/rastermill/bitmappool/Poolable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final head:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final keyToEntry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    .local p0, "this":Landroid/support/rastermill/bitmappool/GroupedLinkedMap;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    invoke-direct {v0}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->head:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    return-void
.end method

.method private makeHead(Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Landroid/support/rastermill/bitmappool/GroupedLinkedMap;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap<TK;TV;>;"
    .local p1, "entry":Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    invoke-static {p1}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->removeEntry(Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;)V

    .line 91
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->head:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    iput-object v0, p1, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->prev:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    .line 92
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->head:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    iget-object v0, v0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->next:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    iput-object v0, p1, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->next:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    .line 93
    invoke-static {p1}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->updateEntry(Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;)V

    .line 94
    return-void
.end method

.method private makeTail(Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Landroid/support/rastermill/bitmappool/GroupedLinkedMap;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap<TK;TV;>;"
    .local p1, "entry":Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    invoke-static {p1}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->removeEntry(Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;)V

    .line 99
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->head:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    iget-object v0, v0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->prev:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    iput-object v0, p1, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->prev:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    .line 100
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->head:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    iput-object v0, p1, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->next:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    .line 101
    invoke-static {p1}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->updateEntry(Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;)V

    .line 102
    return-void
.end method

.method private static removeEntry(Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 110
    .local p0, "entry":Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->prev:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    iget-object v1, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->next:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    iput-object v1, v0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->next:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    .line 111
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->next:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    iget-object v1, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->prev:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    iput-object v1, v0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->prev:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    .line 112
    return-void
.end method

.method private static updateEntry(Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 105
    .local p0, "entry":Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->next:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    iput-object p0, v0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->prev:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    .line 106
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->prev:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    iput-object p0, v0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->next:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    .line 107
    return-void
.end method


# virtual methods
.method public get(Landroid/support/rastermill/bitmappool/Poolable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 36
    .local p0, "this":Landroid/support/rastermill/bitmappool/GroupedLinkedMap;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap<TK;TV;>;"
    .local p1, "key":Landroid/support/rastermill/bitmappool/Poolable;, "TK;"
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    .line 37
    .local v0, "entry":Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 38
    new-instance v1, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    invoke-direct {v1, p1}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 39
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p1}, Landroid/support/rastermill/bitmappool/Poolable;->offer()V

    .line 44
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->makeHead(Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;)V

    .line 46
    invoke-virtual {v0}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->removeLast()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public put(Landroid/support/rastermill/bitmappool/Poolable;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 22
    .local p0, "this":Landroid/support/rastermill/bitmappool/GroupedLinkedMap;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap<TK;TV;>;"
    .local p1, "key":Landroid/support/rastermill/bitmappool/Poolable;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    .line 24
    .local v0, "entry":Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 25
    new-instance v1, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    invoke-direct {v1, p1}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 26
    invoke-direct {p0, v0}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->makeTail(Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;)V

    .line 27
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {p1}, Landroid/support/rastermill/bitmappool/Poolable;->offer()V

    .line 32
    :goto_0
    invoke-virtual {v0, p2}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->add(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 50
    .local p0, "this":Landroid/support/rastermill/bitmappool/GroupedLinkedMap;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->head:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    iget-object v0, v0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->prev:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    .line 52
    .local v0, "last":Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->head:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->removeLast()Ljava/lang/Object;

    move-result-object v1

    .line 54
    .local v1, "removed":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    .line 55
    return-object v1

    .line 61
    :cond_0
    invoke-static {v0}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->removeEntry(Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;)V

    .line 62
    iget-object v2, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->keyToEntry:Ljava/util/Map;

    invoke-static {v0}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->access$000(Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v0}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->access$000(Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/rastermill/bitmappool/Poolable;

    invoke-interface {v2}, Landroid/support/rastermill/bitmappool/Poolable;->offer()V

    .line 66
    iget-object v0, v0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->prev:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    .line 67
    .end local v1    # "removed":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 74
    .local p0, "this":Landroid/support/rastermill/bitmappool/GroupedLinkedMap;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->head:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    iget-object v1, v1, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->next:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    .line 76
    .local v1, "current":Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;, "Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry<TK;TV;>;"
    const/4 v2, 0x0

    .line 77
    .local v2, "hadAtLeastOneItem":Z
    :goto_0
    iget-object v3, p0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->head:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    const/4 v2, 0x1

    .line 79
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->access$000(Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, v1, Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;->next:Landroid/support/rastermill/bitmappool/GroupedLinkedMap$LinkedEntry;

    goto :goto_0

    .line 82
    :cond_0
    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
