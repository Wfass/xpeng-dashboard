.class Lcom/google/common/collect/StandardTable$b;
.super Lcom/google/common/collect/b;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$b;->d:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V

    .line 694
    iget-object p1, p0, Lcom/google/common/collect/StandardTable$b;->d:Lcom/google/common/collect/StandardTable;

    iget-object p1, p1, Lcom/google/common/collect/StandardTable;->b:Lcom/google/common/base/v;

    invoke-interface {p1}, Lcom/google/common/base/v;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$b;->a:Ljava/util/Map;

    .line 695
    iget-object p1, p0, Lcom/google/common/collect/StandardTable$b;->d:Lcom/google/common/collect/StandardTable;

    iget-object p1, p1, Lcom/google/common/collect/StandardTable;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$b;->b:Ljava/util/Iterator;

    .line 696
    invoke-static {}, Lcom/google/common/collect/ah;->a()Lcom/google/common/collect/bk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$b;->c:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V
    .locals 0

    .line 691
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$b;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 701
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 703
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$b;->c:Ljava/util/Iterator;

    goto :goto_0

    .line 710
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
