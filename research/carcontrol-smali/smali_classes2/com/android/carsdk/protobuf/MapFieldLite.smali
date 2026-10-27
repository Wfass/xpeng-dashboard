.class public final Lcom/android/carsdk/protobuf/MapFieldLite;
.super Ljava/lang/Object;
.source "MapFieldLite.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/MutabilityOracle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareIterator;,
        Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareSet;,
        Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareCollection;,
        Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/carsdk/protobuf/MutabilityOracle;"
    }
.end annotation


# static fields
.field private static final EMPTY_MAP_FIELD:Lcom/android/carsdk/protobuf/MapFieldLite;


# instance fields
.field private isMutable:Z

.field private mapData:Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/android/carsdk/protobuf/MapFieldLite;

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/carsdk/protobuf/MapFieldLite;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/carsdk/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/android/carsdk/protobuf/MapFieldLite;

    .line 62
    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/MapFieldLite;->makeImmutable()V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;

    invoke-direct {v0, p0, p1}, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;-><init>(Lcom/android/carsdk/protobuf/MutabilityOracle;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite;->mapData:Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/android/carsdk/protobuf/MapFieldLite;->isMutable:Z

    return-void
.end method

.method static calculateHashCodeForMap(Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 155
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/carsdk/protobuf/MapFieldLite;->calculateHashCodeForObject(Ljava/lang/Object;)I

    move-result v2

    .line 157
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/carsdk/protobuf/MapFieldLite;->calculateHashCodeForObject(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static calculateHashCodeForObject(Ljava/lang/Object;)I
    .locals 1

    .line 138
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 139
    check-cast p0, [B

    invoke-static {p0}, Lcom/android/carsdk/protobuf/Internal;->hashCode([B)I

    move-result p0

    return p0

    .line 142
    :cond_0
    instance-of v0, p0, Lcom/android/carsdk/protobuf/Internal$EnumLite;

    if-nez v0, :cond_1

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    .line 143
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method private static copy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 168
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 169
    check-cast p0, [B

    .line 170
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static copy(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 183
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/carsdk/protobuf/MapFieldLite;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static emptyMapField()Lcom/android/carsdk/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/carsdk/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/android/carsdk/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/android/carsdk/protobuf/MapFieldLite;

    return-object v0
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 95
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 96
    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static equals(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 110
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    .line 113
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    .line 117
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/MapFieldLite;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_4
    return v0
.end method

.method public static newMapField()Lcom/android/carsdk/protobuf/MapFieldLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/carsdk/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/android/carsdk/protobuf/MapFieldLite;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/carsdk/protobuf/MapFieldLite;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite;->mapData:Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->clear()V

    return-void
.end method

.method public copy()Lcom/android/carsdk/protobuf/MapFieldLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/android/carsdk/protobuf/MapFieldLite;

    iget-object v1, p0, Lcom/android/carsdk/protobuf/MapFieldLite;->mapData:Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;

    invoke-static {v1}, Lcom/android/carsdk/protobuf/MapFieldLite;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/carsdk/protobuf/MapFieldLite;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public ensureMutable()V
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 130
    instance-of v0, p1, Lcom/android/carsdk/protobuf/MapFieldLite;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 133
    :cond_0
    check-cast p1, Lcom/android/carsdk/protobuf/MapFieldLite;

    .line 134
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite;->mapData:Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;

    iget-object p1, p1, Lcom/android/carsdk/protobuf/MapFieldLite;->mapData:Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;

    invoke-static {v0, p1}, Lcom/android/carsdk/protobuf/MapFieldLite;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite;->mapData:Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMutableMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite;->mapData:Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite;->mapData:Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/MapFieldLite;->calculateHashCodeForMap(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public isMutable()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite;->isMutable:Z

    return v0
.end method

.method public makeImmutable()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite;->isMutable:Z

    return-void
.end method

.method public mergeFrom(Lcom/android/carsdk/protobuf/MapFieldLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/MapFieldLite<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite;->mapData:Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;

    iget-object p1, p1, Lcom/android/carsdk/protobuf/MapFieldLite;->mapData:Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;

    invoke-static {p1}, Lcom/android/carsdk/protobuf/MapFieldLite;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareMap;->putAll(Ljava/util/Map;)V

    return-void
.end method
