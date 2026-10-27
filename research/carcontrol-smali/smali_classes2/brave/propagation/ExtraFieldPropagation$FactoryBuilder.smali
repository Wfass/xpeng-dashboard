.class public final Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;
.super Ljava/lang/Object;
.source "ExtraFieldPropagation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/ExtraFieldPropagation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FactoryBuilder"
.end annotation


# instance fields
.field final delegate:Lbrave/propagation/Propagation$Factory;

.field final fieldNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final prefixedNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbrave/propagation/Propagation$Factory;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->fieldNames:Ljava/util/Set;

    .line 97
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->prefixedNames:Ljava/util/Map;

    const-string v0, "delegate == null"

    .line 100
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->delegate:Lbrave/propagation/Propagation$Factory;

    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;)Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;
    .locals 2

    const-string v0, "fieldName == null"

    .line 111
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->fieldNames:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fieldName is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addPrefixedFields(Ljava/lang/String;Ljava/util/Collection;)Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;"
        }
    .end annotation

    const-string v0, "prefix == null"

    .line 125
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fieldNames == null"

    .line 127
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->prefixedNames:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lbrave/propagation/ExtraFieldPropagation;->ensureLowerCase(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "prefix is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lbrave/propagation/ExtraFieldPropagation$Factory;
    .locals 11

    .line 133
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->prefixedNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->fieldNames:Ljava/util/Set;

    invoke-static {v0}, Lbrave/propagation/ExtraFieldPropagation;->ensureLowerCase(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Lbrave/propagation/ExtraFieldPropagation$Factory;

    iget-object v2, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->delegate:Lbrave/propagation/Propagation$Factory;

    invoke-direct {v1, v2, v0, v0}, Lbrave/propagation/ExtraFieldPropagation$Factory;-><init>(Lbrave/propagation/Propagation$Factory;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1

    .line 137
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v3, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->fieldNames:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 140
    iget-object v3, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->fieldNames:Ljava/util/Set;

    invoke-static {v3}, Lbrave/propagation/ExtraFieldPropagation;->ensureLowerCase(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 141
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    .line 142
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 143
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 148
    :cond_1
    iget-object v3, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->prefixedNames:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 150
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move v7, v4

    .line 151
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_2

    .line 152
    aget-object v8, v5, v7

    .line 153
    invoke-interface {v0, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 156
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 162
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 163
    new-array v5, v3, [I

    move v6, v4

    :goto_2
    if-ge v6, v3, :cond_5

    .line 165
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 167
    :cond_5
    new-instance v2, Lbrave/propagation/ExtraFieldPropagation$Factory;

    iget-object v3, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->delegate:Lbrave/propagation/Propagation$Factory;

    new-array v6, v4, [Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1, v5}, Lbrave/propagation/ExtraFieldPropagation$Factory;-><init>(Lbrave/propagation/Propagation$Factory;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v2
.end method
