.class Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;
.super Lcom/google/common/collect/Maps$KeySet;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/FilteredEntryMultimap$a;->b()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1KeySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$KeySet<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/FilteredEntryMultimap$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap$a;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$a;

    .line 221
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$a;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$a;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$a;->a:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lcom/google/common/base/q;->a(Ljava/util/Collection;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/FilteredEntryMultimap;->a(Lcom/google/common/base/p;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1KeySetImpl;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$a;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$a;->a:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lcom/google/common/base/q;->a(Ljava/util/Collection;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/q;->a(Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/FilteredEntryMultimap;->a(Lcom/google/common/base/p;)Z

    move-result p1

    return p1
.end method
