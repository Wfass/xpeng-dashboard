.class Lcom/google/common/collect/StandardTable$Column$a$a;
.super Lcom/google/common/collect/c;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$Column$a;->c()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/StandardTable$Column$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Column$a;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 514
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column$a$a;->b:Lcom/google/common/collect/StandardTable$Column$a;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$Column$a$a;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$a$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$a$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$a$a;->b:Lcom/google/common/collect/StandardTable$Column$a;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column$a;->b:Lcom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$a$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$a$a;->b:Lcom/google/common/collect/StandardTable$Column$a;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column$a;->b:Lcom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column;->a:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
