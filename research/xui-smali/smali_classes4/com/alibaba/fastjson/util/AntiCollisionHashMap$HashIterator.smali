.class abstract Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;
.super Ljava/lang/Object;
.source "AntiCollisionHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field index:I

.field next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V
    .locals 2

    .line 705
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.HashIterator<TE;>;"
    iput-object p1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iget v0, p1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->expectedModCount:I

    .line 707
    iget v0, p1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-lez v0, :cond_0

    .line 708
    iget-object p1, p1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 709
    .local p1, "t":[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-nez v0, :cond_0

    .line 710
    goto :goto_0

    .line 712
    .end local p1    # "t":[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    :cond_0
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 715
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.HashIterator<TE;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final nextEntry()Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 719
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.HashIterator<TE;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_2

    .line 721
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 722
    .local v0, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 725
    iget-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-nez v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 727
    .local v1, "t":[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    array-length v3, v1

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->index:I

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-nez v2, :cond_0

    .line 728
    goto :goto_0

    .line 730
    .end local v1    # "t":[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    :cond_0
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 731
    return-object v0

    .line 723
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 720
    .end local v0    # "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 735
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>.HashIterator<TE;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 739
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    .line 740
    .local v0, "k":Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->current:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 741
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->removeEntryForKey(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 742
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->this$0:Lcom/alibaba/fastjson/util/AntiCollisionHashMap;

    iget v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;->expectedModCount:I

    .line 743
    return-void

    .line 738
    .end local v0    # "k":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 736
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
