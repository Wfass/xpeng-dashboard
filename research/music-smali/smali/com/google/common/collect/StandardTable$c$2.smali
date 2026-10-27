.class Lcom/google/common/collect/StandardTable$c$2;
.super Lcom/google/common/collect/w;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$c;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/w<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/StandardTable$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$c;Ljava/util/Map$Entry;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$c$2;->b:Lcom/google/common/collect/StandardTable$c;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$c$2;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/w;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$c$2;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$c$2;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 385
    invoke-virtual {p0, p1}, Lcom/google/common/collect/StandardTable$c$2;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 379
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/google/common/collect/w;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
