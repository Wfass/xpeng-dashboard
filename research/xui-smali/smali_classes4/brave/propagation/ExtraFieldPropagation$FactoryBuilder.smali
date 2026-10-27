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
    .locals 2
    .param p1, "delegate"    # Lbrave/propagation/Propagation$Factory;

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

    .line 100
    if-eqz p1, :cond_0

    .line 101
    iput-object p1, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->delegate:Lbrave/propagation/Propagation$Factory;

    .line 102
    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addField(Ljava/lang/String;)Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 111
    if-eqz p1, :cond_1

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

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    return-object p0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fieldName is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fieldName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPrefixedFields(Ljava/lang/String;Ljava/util/Collection;)Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
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

    .line 125
    .local p2, "fieldNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    if-eqz p2, :cond_0

    .line 128
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->prefixedNames:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lbrave/propagation/ExtraFieldPropagation;->ensureLowerCase(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-object p0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fieldNames == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefix is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prefix == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .local v0, "validated":[Ljava/lang/String;
    new-instance v1, Lbrave/propagation/ExtraFieldPropagation$Factory;

    iget-object v2, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->delegate:Lbrave/propagation/Propagation$Factory;

    invoke-direct {v1, v2, v0, v0}, Lbrave/propagation/ExtraFieldPropagation$Factory;-><init>(Lbrave/propagation/Propagation$Factory;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1

    .line 137
    .end local v0    # "validated":[Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "keyToFieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->fieldNames:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 140
    iget-object v3, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->fieldNames:Ljava/util/Set;

    invoke-static {v3}, Lbrave/propagation/ExtraFieldPropagation;->ensureLowerCase(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 141
    .local v3, "validated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "length":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 142
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 143
    .local v6, "nextFieldName":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v6    # "nextFieldName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    .end local v3    # "validated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    .end local v5    # "length":I
    :cond_1
    iget-object v3, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->prefixedNames:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 149
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 150
    .local v6, "nextPrefix":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 151
    .local v7, "nextFieldNames":[Ljava/lang/String;
    nop

    .local v5, "i":I
    :goto_2
    array-length v8, v7

    if-ge v5, v8, :cond_3

    .line 152
    aget-object v8, v7, v5

    .line 153
    .local v8, "nextFieldName":Ljava/lang/String;
    invoke-interface {v0, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 154
    .local v9, "index":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 156
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v8    # "nextFieldName":Ljava/lang/String;
    .end local v9    # "index":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 161
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v6    # "nextPrefix":Ljava/lang/String;
    .end local v7    # "nextFieldNames":[Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 162
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 163
    .local v3, "keysLength":I
    new-array v4, v3, [I

    .line 164
    .local v4, "keyToField":[I
    move v6, v5

    .local v6, "i":I
    :goto_3
    if-ge v6, v3, :cond_5

    .line 165
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v6

    .line 164
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 167
    .end local v6    # "i":I
    :cond_5
    new-instance v6, Lbrave/propagation/ExtraFieldPropagation$Factory;

    iget-object v7, p0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;->delegate:Lbrave/propagation/Propagation$Factory;

    new-array v8, v5, [Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-direct {v6, v7, v8, v5, v4}, Lbrave/propagation/ExtraFieldPropagation$Factory;-><init>(Lbrave/propagation/Propagation$Factory;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v6
.end method
