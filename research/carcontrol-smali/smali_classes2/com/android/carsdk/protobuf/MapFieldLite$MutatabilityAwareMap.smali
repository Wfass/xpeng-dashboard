.class Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;
.super Ljava/lang/Object;
.source "MapFieldLite.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/MapFieldLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MutatabilityAwareMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final mutabilityOracle:Lcom/android/carsdk/protobuf/MutabilityOracle;


# direct methods
.method constructor <init>(Lcom/android/carsdk/protobuf/MutabilityOracle;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/MutabilityOracle;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->mutabilityOracle:Lcom/android/carsdk/protobuf/MutabilityOracle;

    .line 225
    iput-object p2, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->mutabilityOracle:Lcom/android/carsdk/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/MutabilityOracle;->ensureMutable()V

    .line 274
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 289
    new-instance v0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareSet;

    iget-object v1, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->mutabilityOracle:Lcom/android/carsdk/protobuf/MutabilityOracle;

    iget-object v2, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareSet;-><init>(Lcom/android/carsdk/protobuf/MutabilityOracle;Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 279
    new-instance v0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareSet;

    iget-object v1, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->mutabilityOracle:Lcom/android/carsdk/protobuf/MutabilityOracle;

    iget-object v2, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareSet;-><init>(Lcom/android/carsdk/protobuf/MutabilityOracle;Ljava/util/Set;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->mutabilityOracle:Lcom/android/carsdk/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/MutabilityOracle;->ensureMutable()V

    .line 256
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->mutabilityOracle:Lcom/android/carsdk/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/MutabilityOracle;->ensureMutable()V

    .line 268
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->mutabilityOracle:Lcom/android/carsdk/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/MutabilityOracle;->ensureMutable()V

    .line 262
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 284
    new-instance v0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareCollection;

    iget-object v1, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->mutabilityOracle:Lcom/android/carsdk/protobuf/MutabilityOracle;

    iget-object v2, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->delegate:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareCollection;-><init>(Lcom/android/carsdk/protobuf/MutabilityOracle;Ljava/util/Collection;)V

    return-object v0
.end method
