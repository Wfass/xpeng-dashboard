.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field protected beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

.field protected final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field private volatile transient hashArray:[J

.field private volatile transient hashArrayMapping:[S

.field protected final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V
    .locals 7
    .param p1, "beanInfo"    # Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 82
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 85
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 86
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    new-instance v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    iget-object v5, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v5, v5, v1

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    aput-object v3, v2, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-ne v1, v2, :cond_1

    .line 91
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_3

    .line 93
    :cond_1
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "hashNotMatch":Z
    move v2, v0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 96
    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v3

    .line 97
    .local v3, "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-nez v3, :cond_2

    .line 98
    const/4 v1, 0x1

    .line 99
    goto :goto_2

    .line 101
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aput-object v3, v4, v2

    .line 95
    .end local v3    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    .end local v2    # "i":I
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 104
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v4, v4

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    .end local v1    # "hashNotMatch":Z
    :cond_4
    :goto_3
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v1, :cond_5

    .line 109
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFilters()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_4
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 111
    .local v4, "filterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/fastjson/serializer/SerializeFilter;>;"
    :try_start_0
    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 112
    .local v5, "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v5    # "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    goto :goto_5

    .line 113
    :catch_0
    move-exception v5

    .line 109
    .end local v4    # "filterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/fastjson/serializer/SerializeFilter;>;"
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 118
    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 55
    .local p1, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    .line 80
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .param p2, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 59
    .local p1, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createAliasMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 60
    return-void
.end method

.method static varargs createAliasMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 65
    .local v3, "alias":Ljava/lang/String;
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v3    # "alias":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z
    .locals 4
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "label"    # Ljava/lang/String;

    .line 848
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->labelFilters:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->labelFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 850
    .local v2, "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    invoke-interface {v2, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 851
    return v1

    .line 853
    .end local v2    # "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    :cond_0
    goto :goto_0

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->labelFilters:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 857
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->labelFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 858
    .restart local v2    # "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    invoke-interface {v2, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 859
    return v1

    .line 861
    .end local v2    # "propertyFilter":Lcom/alibaba/fastjson/serializer/LabelFilter;
    :cond_2
    goto :goto_1

    .line 864
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected getBeanContext(I)Lcom/alibaba/fastjson/serializer/BeanContext;
    .locals 1
    .param p1, "orinal"    # I

    .line 805
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    return-object v0
.end method

.method public getFieldNames(Ljava/lang/Object;)Ljava/util/Set;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 765
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 766
    .local v0, "fieldNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 767
    .local v4, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 768
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 769
    iget-object v6, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 766
    .end local v4    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 772
    :cond_1
    return-object v0
.end method

.method public getFieldSerializer(J)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 16
    .param p1, "hash"    # J

    move-object/from16 v0, p0

    .line 650
    const/4 v1, 0x0

    .line 651
    .local v1, "namingStrategies":[Lcom/alibaba/fastjson/PropertyNamingStrategy;
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 652
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v1

    .line 654
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    array-length v4, v1

    mul-int/2addr v2, v4

    new-array v2, v2, [J

    .line 655
    .local v2, "hashArray":[J
    const/4 v4, 0x0

    .line 656
    .local v4, "index":I
    move v5, v4

    move v4, v3

    .local v4, "i":I
    .local v5, "index":I
    :goto_0
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v6, v6

    if-ge v4, v6, :cond_2

    .line 657
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 658
    .local v6, "name":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    .local v7, "index":I
    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v2, v5

    .line 660
    .end local v5    # "index":I
    move v5, v3

    .local v5, "j":I
    :goto_1
    array-length v8, v1

    if-ge v5, v8, :cond_1

    .line 661
    aget-object v8, v1, v5

    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 662
    .local v8, "name_t":Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 663
    goto :goto_2

    .line 665
    :cond_0
    add-int/lit8 v9, v7, 0x1

    .local v9, "index":I
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v2, v7

    .line 660
    .end local v7    # "index":I
    .end local v8    # "name_t":Ljava/lang/String;
    move v7, v9

    .end local v9    # "index":I
    .restart local v7    # "index":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 656
    .end local v5    # "j":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    .line 668
    .end local v4    # "i":I
    .end local v7    # "index":I
    .local v5, "index":I
    :cond_2
    invoke-static {v2, v3, v5}, Ljava/util/Arrays;->sort([JII)V

    .line 670
    new-array v4, v5, [J

    iput-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 671
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    .end local v2    # "hashArray":[J
    .end local v5    # "index":I
    :cond_3
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    move-wide/from16 v4, p1

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    .line 675
    .local v2, "pos":I
    const/4 v6, 0x0

    if-gez v2, :cond_4

    .line 676
    return-object v6

    .line 679
    :cond_4
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    const/4 v8, -0x1

    if-nez v7, :cond_b

    .line 680
    if-nez v1, :cond_5

    .line 681
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v1

    .line 684
    :cond_5
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    array-length v7, v7

    new-array v7, v7, [S

    .line 685
    .local v7, "mapping":[S
    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([SS)V

    .line 686
    move v9, v3

    .local v9, "i":I
    :goto_3
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v10, v10

    if-ge v9, v10, :cond_a

    .line 687
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v10, v10, v9

    iget-object v10, v10, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 689
    .local v10, "name":Ljava/lang/String;
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 690
    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v12

    .line 689
    invoke-static {v11, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v11

    .line 691
    .local v11, "p":I
    if-ltz v11, :cond_6

    .line 692
    int-to-short v12, v9

    aput-short v12, v7, v11

    .line 695
    :cond_6
    move v12, v3

    .local v12, "j":I
    :goto_4
    array-length v13, v1

    if-ge v12, v13, :cond_9

    .line 696
    aget-object v13, v1, v12

    invoke-virtual {v13, v10}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 697
    .local v13, "name_t":Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 698
    goto :goto_5

    .line 701
    :cond_7
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 702
    invoke-static {v13}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v3

    .line 701
    invoke-static {v14, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 703
    .local v3, "p_t":I
    if-ltz v3, :cond_8

    .line 704
    int-to-short v4, v9

    aput-short v4, v7, v3

    .line 695
    .end local v3    # "p_t":I
    .end local v13    # "name_t":Ljava/lang/String;
    :cond_8
    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    move-wide/from16 v4, p1

    goto :goto_4

    .line 686
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "p":I
    .end local v12    # "j":I
    :cond_9
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    move-wide/from16 v4, p1

    goto :goto_3

    .line 708
    .end local v9    # "i":I
    :cond_a
    iput-object v7, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    .line 711
    .end local v7    # "mapping":[S
    :cond_b
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    aget-short v3, v3, v2

    .line 712
    .local v3, "getterIndex":I
    if-eq v3, v8, :cond_c

    .line 713
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v4, v4, v3

    return-object v4

    .line 716
    :cond_c
    return-object v6
.end method

.method public getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 623
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 624
    return-object v0

    .line 627
    :cond_0
    const/4 v1, 0x0

    .line 628
    .local v1, "low":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 630
    .local v2, "high":I
    :goto_0
    if-gt v1, v2, :cond_3

    .line 631
    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 633
    .local v3, "mid":I
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 635
    .local v4, "fieldName":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 637
    .local v5, "cmp":I
    if-gez v5, :cond_1

    .line 638
    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    .line 639
    :cond_1
    if-lez v5, :cond_2

    .line 640
    add-int/lit8 v2, v3, -0x1

    .line 644
    .end local v3    # "mid":I
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "cmp":I
    :goto_1
    goto :goto_0

    .line 642
    .restart local v3    # "mid":I
    .restart local v4    # "fieldName":Ljava/lang/String;
    .restart local v5    # "cmp":I
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v0, v0, v3

    return-object v0

    .line 646
    .end local v3    # "mid":I
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "cmp":I
    :cond_3
    return-object v0
.end method

.method protected getFieldType(I)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "ordinal"    # I

    .line 809
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .line 590
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v0

    .line 591
    .local v0, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-eqz v0, :cond_0

    .line 596
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 599
    :catch_0
    move-exception v1

    .line 600
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFieldValue error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 597
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 598
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFieldValue error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 592
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "field not found. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "keyHash"    # J
    .param p5, "throwFieldNotFoundException"    # Z

    .line 605
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(J)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v0

    .line 606
    .local v0, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-nez v0, :cond_1

    .line 607
    if-nez p5, :cond_0

    .line 610
    const/4 v1, 0x0

    return-object v1

    .line 608
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "field not found. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 614
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 617
    :catch_0
    move-exception v1

    .line 618
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFieldValue error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 615
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 616
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFieldValue error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFieldValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 721
    .local v0, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 722
    .local v4, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    .end local v4    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 725
    :cond_0
    return-object v0
.end method

.method public getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 776
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 777
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    .line 778
    .local v1, "skipTransient":Z
    const/4 v2, 0x0

    .line 780
    .local v2, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 781
    .local v6, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget v7, v6, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v7, v8}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    .line 782
    iget-object v2, v6, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 784
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v7, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    if-eqz v7, :cond_0

    .line 785
    goto :goto_2

    .line 788
    :cond_0
    iget-object v7, v6, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-boolean v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v7, :cond_2

    .line 789
    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 790
    .local v7, "unwrappedValue":Ljava/lang/Object;
    invoke-static {v7}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 791
    .local v8, "map1":Ljava/lang/Object;
    instance-of v9, v8, Ljava/util/Map;

    if-eqz v9, :cond_1

    .line 792
    move-object v9, v8

    check-cast v9, Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 794
    :cond_1
    iget-object v9, v6, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .end local v7    # "unwrappedValue":Ljava/lang/Object;
    .end local v8    # "map1":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 797
    :cond_2
    iget-object v7, v6, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    .end local v6    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 801
    :cond_3
    return-object v0
.end method

.method public getObjectFieldValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 731
    .local v0, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 732
    .local v4, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 733
    .local v5, "fieldClass":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 734
    goto :goto_1

    .line 736
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 737
    goto :goto_1

    .line 739
    :cond_1
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    .end local v4    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "fieldClass":Ljava/lang/Class;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 742
    :cond_2
    return-object v0
.end method

.method public getSize(Ljava/lang/Object;)I
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "size":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 748
    .local v4, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 749
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 750
    add-int/lit8 v0, v0, 0x1

    .line 747
    .end local v4    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 753
    :cond_1
    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    return-object v0
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z
    .locals 1
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;

    .line 579
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result v0

    return v0
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z
    .locals 2
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "fieldFeatrues"    # I

    .line 583
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 584
    .local v0, "mask":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean v1, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez v1, :cond_1

    and-int v1, p2, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 150
    return-void
.end method

.method protected write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .locals 42
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .param p6, "unwrapped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    .line 167
    iget-object v15, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 169
    .local v15, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez v10, :cond_0

    .line 170
    invoke-virtual {v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 171
    return-void

    .line 174
    :cond_0
    invoke-virtual {v8, v9, v10, v13}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    return-void

    .line 180
    :cond_1
    iget-boolean v0, v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .local v0, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto :goto_0

    .line 183
    .end local v0    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :cond_2
    iget-object v0, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .restart local v0    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_0
    move-object v7, v0

    .line 186
    .end local v0    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v7, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v6, v9, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 187
    .local v6, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    iget-object v0, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_3

    .line 188
    iget-object v0, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    move-object v1, v9

    move-object v2, v6

    move-object v3, v10

    move-object v4, v11

    move-object v11, v6

    move v6, v13

    .end local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v11, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_1

    .line 191
    .end local v11    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :cond_3
    move-object v11, v6

    .end local v6    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v11    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :goto_1
    invoke-virtual {v8, v9, v13}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result v16

    .line 193
    .local v16, "writeAsArray":Z
    const/4 v0, 0x0

    move-object v1, v0

    .line 195
    .local v1, "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-eqz v16, :cond_4

    const/16 v0, 0x5b

    goto :goto_2

    :cond_4
    const/16 v0, 0x7b

    :goto_2
    move v6, v0

    .line 196
    .local v6, "startSeperator":C
    if-eqz v16, :cond_5

    const/16 v0, 0x5d

    goto :goto_3

    :cond_5
    const/16 v0, 0x7d

    :goto_3
    move v5, v0

    .line 197
    .local v5, "endSeperator":C
    if-nez p6, :cond_6

    .line 198
    :try_start_0
    invoke-virtual {v15, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 541
    .end local v5    # "endSeperator":C
    .end local v6    # "startSeperator":C
    :catchall_0
    move-exception v0

    move-object/from16 v29, v1

    move-object v3, v7

    move-object v2, v9

    move-object v7, v11

    .end local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v11    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v3, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v7, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v29, "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_4
    move-object/from16 v5, p3

    goto/16 :goto_2f

    .line 512
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v7, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v11    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catch_0
    move-exception v0

    move-object v3, v7

    move-object v2, v9

    move-object v5, v11

    goto/16 :goto_2c

    .line 201
    .restart local v5    # "endSeperator":C
    .restart local v6    # "startSeperator":C
    :cond_6
    :goto_5
    :try_start_1
    array-length v0, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    if-lez v0, :cond_7

    :try_start_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :cond_7
    const/4 v0, 0x0

    .line 208
    .local v0, "commaFlag":Z
    :try_start_3
    iget-object v2, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    and-int/2addr v2, v3

    if-nez v2, :cond_8

    :try_start_4
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v13

    if-nez v2, :cond_8

    .line 210
    invoke-virtual {v9, v12, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_a

    .line 211
    :cond_8
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    .line 214
    .local v2, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v2, v12, :cond_9

    :try_start_6
    instance-of v3, v12, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_9

    .line 215
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .local v3, "type":Ljava/lang/reflect/Type;
    goto :goto_6

    .line 217
    .end local v3    # "type":Ljava/lang/reflect/Type;
    :cond_9
    move-object v3, v12

    .line 220
    .restart local v3    # "type":Ljava/lang/reflect/Type;
    :goto_6
    if-eq v2, v3, :cond_a

    .line 221
    iget-object v4, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    invoke-virtual {v8, v9, v4, v10}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 222
    const/4 v0, 0x1

    .line 226
    .end local v2    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "type":Ljava/lang/reflect/Type;
    :cond_a
    const/16 v4, 0x2c

    if-eqz v0, :cond_b

    move v2, v4

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    .line 228
    .local v2, "seperator":C
    :goto_7
    :try_start_7
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v15, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    move/from16 v18, v3

    .line 229
    .local v18, "writeClassName":Z
    invoke-virtual {v8, v9, v10, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_e

    .line 230
    .local v3, "newSeperator":C
    move-object/from16 v19, v11

    .end local v11    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v19, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    if-ne v3, v4, :cond_c

    const/16 v20, 0x1

    goto :goto_8

    :cond_c
    const/16 v20, 0x0

    :goto_8
    move/from16 v0, v20

    .line 232
    :try_start_8
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v15, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    move/from16 v20, v4

    .line 233
    .local v20, "skipTransient":Z
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v15, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_d

    move/from16 v22, v4

    .line 235
    .local v22, "ignoreNonFieldGetter":Z
    move/from16 v23, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v23, "commaFlag":Z
    :goto_9
    move v4, v0

    .end local v0    # "i":I
    .local v4, "i":I
    :try_start_9
    array-length v0, v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    if-ge v4, v0, :cond_4f

    .line 236
    :try_start_a
    aget-object v0, v7, v4

    move-object/from16 v24, v0

    .line 238
    .local v24, "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    move-object/from16 v11, v24

    iget-object v0, v11, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .end local v24    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v11, "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v24, v0

    .line 239
    .local v24, "field":Ljava/lang/reflect/Field;
    iget-object v0, v11, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v26, v0

    .line 240
    .local v26, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v14, v26

    iget-object v0, v14, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .end local v26    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v14, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v27, v0

    .line 241
    .local v27, "fieldInfoName":Ljava/lang/String;
    iget-object v0, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v28, v0

    .line 243
    .local v28, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v0, v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-object/from16 v29, v1

    :try_start_b
    iget v1, v14, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .end local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    move/from16 v30, v2

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .end local v2    # "seperator":C
    .local v30, "seperator":C
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    move/from16 v26, v0

    .line 244
    .local v26, "fieldUseSingleQuotes":Z
    iget-boolean v0, v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-eqz v0, :cond_d

    if-nez v26, :cond_d

    const/4 v0, 0x1

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    :goto_a
    move/from16 v31, v0

    .line 246
    .local v31, "directWritePrefix":Z
    if-eqz v20, :cond_e

    .line 247
    if-eqz v14, :cond_e

    .line 248
    :try_start_c
    iget-boolean v0, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v0, :cond_e

    .line 249
    goto :goto_b

    .line 541
    .end local v3    # "newSeperator":C
    .end local v4    # "i":I
    .end local v5    # "endSeperator":C
    .end local v6    # "startSeperator":C
    .end local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v14    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "writeClassName":Z
    .end local v20    # "skipTransient":Z
    .end local v22    # "ignoreNonFieldGetter":Z
    .end local v23    # "commaFlag":Z
    .end local v24    # "field":Ljava/lang/reflect/Field;
    .end local v26    # "fieldUseSingleQuotes":Z
    .end local v27    # "fieldInfoName":Ljava/lang/String;
    .end local v28    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v30    # "seperator":C
    .end local v31    # "directWritePrefix":Z
    :catchall_1
    move-exception v0

    move-object v3, v7

    move-object v2, v9

    goto/16 :goto_29

    .line 512
    :catch_1
    move-exception v0

    move-object v3, v7

    move-object v2, v9

    goto/16 :goto_2a

    .line 254
    .restart local v3    # "newSeperator":C
    .restart local v4    # "i":I
    .restart local v5    # "endSeperator":C
    .restart local v6    # "startSeperator":C
    .restart local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v14    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v18    # "writeClassName":Z
    .restart local v20    # "skipTransient":Z
    .restart local v22    # "ignoreNonFieldGetter":Z
    .restart local v23    # "commaFlag":Z
    .restart local v24    # "field":Ljava/lang/reflect/Field;
    .restart local v26    # "fieldUseSingleQuotes":Z
    .restart local v27    # "fieldInfoName":Ljava/lang/String;
    .restart local v28    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v30    # "seperator":C
    .restart local v31    # "directWritePrefix":Z
    :cond_e
    if-eqz v22, :cond_f

    .line 255
    if-nez v24, :cond_f

    .line 256
    nop

    .line 235
    .end local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v14    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v24    # "field":Ljava/lang/reflect/Field;
    .end local v26    # "fieldUseSingleQuotes":Z
    .end local v27    # "fieldInfoName":Ljava/lang/String;
    .end local v28    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v31    # "directWritePrefix":Z
    :goto_b
    move/from16 v17, v3

    move/from16 v21, v4

    move/from16 v38, v5

    move-object/from16 v39, v7

    move-object v2, v9

    move/from16 v28, v30

    move/from16 v30, v6

    goto/16 :goto_24

    .line 260
    .restart local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v14    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v24    # "field":Ljava/lang/reflect/Field;
    .restart local v26    # "fieldUseSingleQuotes":Z
    .restart local v27    # "fieldInfoName":Ljava/lang/String;
    .restart local v28    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v31    # "directWritePrefix":Z
    :cond_f
    const/4 v0, 0x0

    .line 261
    .local v0, "notApply":Z
    move-object/from16 v2, v27

    :try_start_d
    invoke-virtual {v8, v9, v10, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .end local v27    # "fieldInfoName":Ljava/lang/String;
    .local v2, "fieldInfoName":Ljava/lang/String;
    if-eqz v1, :cond_10

    :try_start_e
    iget-object v1, v14, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 262
    invoke-virtual {v8, v9, v1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-nez v1, :cond_11

    .line 263
    :cond_10
    if-eqz v16, :cond_4d

    .line 264
    const/4 v0, 0x1

    .line 270
    .end local v0    # "notApply":Z
    .local v27, "notApply":Z
    :cond_11
    move/from16 v27, v0

    :try_start_f
    iget-object v0, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-eqz v0, :cond_12

    :try_start_10
    iget-object v0, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    .line 271
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 272
    invoke-virtual {v9, v12, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v0, :cond_12

    .line 273
    goto :goto_b

    .line 278
    :cond_12
    if-eqz v27, :cond_13

    .line 279
    const/4 v0, 0x0

    .local v0, "propertyValue":Ljava/lang/Object;
    goto :goto_c

    .line 282
    .end local v0    # "propertyValue":Ljava/lang/Object;
    :cond_13
    :try_start_11
    invoke-virtual {v11, v10}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 290
    .restart local v0    # "propertyValue":Ljava/lang/Object;
    goto :goto_c

    .line 283
    .end local v0    # "propertyValue":Ljava/lang/Object;
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 284
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    move-object v1, v11

    .line 285
    .end local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    move-object/from16 v32, v1

    :try_start_12
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .end local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v32, "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    invoke-virtual {v15, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    if-eqz v1, :cond_4c

    .line 286
    const/4 v1, 0x0

    .line 288
    .local v1, "propertyValue":Ljava/lang/Object;
    move-object v0, v1

    move-object/from16 v29, v32

    .line 293
    .end local v1    # "propertyValue":Ljava/lang/Object;
    .end local v32    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v0, "propertyValue":Ljava/lang/Object;
    .restart local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_c
    :try_start_13
    invoke-virtual {v8, v9, v10, v2, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 294
    goto :goto_b

    .line 297
    :cond_14
    const-class v1, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move-object/from16 v12, v28

    if-ne v12, v1, :cond_15

    .end local v28    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v12, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_14
    const-string v1, "trim"

    move/from16 v33, v3

    iget-object v3, v14, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .end local v3    # "newSeperator":C
    .local v33, "newSeperator":C
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 298
    if-eqz v0, :cond_16

    .line 299
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-object v0, v1

    goto :goto_d

    .line 303
    .end local v33    # "newSeperator":C
    .restart local v3    # "newSeperator":C
    :cond_15
    move/from16 v33, v3

    .end local v3    # "newSeperator":C
    .restart local v33    # "newSeperator":C
    :cond_16
    :goto_d
    move-object v1, v2

    .line 304
    .local v1, "key":Ljava/lang/String;
    :try_start_15
    invoke-virtual {v8, v9, v10, v1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 306
    .end local v1    # "key":Ljava/lang/String;
    .local v3, "key":Ljava/lang/String;
    move-object v1, v0

    .line 307
    .local v1, "originalValue":Ljava/lang/Object;
    move-object/from16 v34, v3

    iget-object v3, v11, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .end local v3    # "key":Ljava/lang/String;
    .local v34, "key":Ljava/lang/String;
    move-object/from16 v35, v1

    move-object v1, v8

    .end local v1    # "originalValue":Ljava/lang/Object;
    .local v35, "originalValue":Ljava/lang/Object;
    move-object/from16 v36, v2

    move/from16 v28, v30

    move-object v2, v9

    .end local v2    # "fieldInfoName":Ljava/lang/String;
    .end local v30    # "seperator":C
    .local v28, "seperator":C
    .local v36, "fieldInfoName":Ljava/lang/String;
    move/from16 v17, v33

    move-object/from16 v37, v34

    const/4 v9, 0x0

    .end local v33    # "newSeperator":C
    .end local v34    # "key":Ljava/lang/String;
    .local v17, "newSeperator":C
    .local v37, "key":Ljava/lang/String;
    move/from16 v21, v4

    move-object v4, v10

    .end local v4    # "i":I
    .local v21, "i":I
    move/from16 v38, v5

    move-object/from16 v5, v36

    .end local v5    # "endSeperator":C
    .local v38, "endSeperator":C
    move/from16 v30, v6

    move-object v6, v0

    .end local v6    # "startSeperator":C
    .local v30, "startSeperator":C
    move-object/from16 v39, v7

    move v7, v13

    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v39, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :try_start_16
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object v0, v1

    .line 310
    if-nez v0, :cond_29

    .line 311
    :try_start_17
    iget v1, v14, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 312
    .local v1, "serialzeFeatures":I
    invoke-virtual {v14}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v2

    .line 313
    .local v2, "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    iget-object v3, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v3, :cond_17

    .line 314
    iget-object v3, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v3

    or-int/2addr v1, v3

    .line 317
    :cond_17
    if-eqz v2, :cond_18

    const-string v3, ""

    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->defaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 318
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->defaultValue()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_12

    .line 319
    :cond_18
    const-class v3, Ljava/lang/Boolean;

    if-ne v12, v3, :cond_1c

    .line 320
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 321
    .local v3, "defaultMask":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v4, v3

    .line 322
    .local v4, "mask":I
    if-nez v16, :cond_19

    and-int v5, v1, v4

    if-nez v5, :cond_19

    iget v5, v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v4

    if-nez v5, :cond_19

    .line 323
    goto/16 :goto_13

    .line 324
    :cond_19
    and-int v5, v1, v3

    if-eqz v5, :cond_1a

    .line 325
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v5

    goto :goto_e

    .line 326
    :cond_1a
    iget v5, v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_1b

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v1

    if-nez v5, :cond_1b

    .line 328
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v5

    .line 330
    .end local v3    # "defaultMask":I
    .end local v4    # "mask":I
    :cond_1b
    :goto_e
    goto/16 :goto_12

    :cond_1c
    const-class v3, Ljava/lang/String;

    if-ne v12, v3, :cond_20

    .line 331
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 332
    .restart local v3    # "defaultMask":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v4, v3

    .line 333
    .restart local v4    # "mask":I
    if-nez v16, :cond_1d

    and-int v5, v1, v4

    if-nez v5, :cond_1d

    iget v5, v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v4

    if-nez v5, :cond_1d

    .line 334
    goto/16 :goto_13

    .line 335
    :cond_1d
    and-int v5, v1, v3

    if-eqz v5, :cond_1e

    .line 336
    const-string v5, ""

    move-object v0, v5

    goto :goto_f

    .line 337
    :cond_1e
    iget v5, v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_1f

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v1

    if-nez v5, :cond_1f

    .line 339
    const-string v5, ""

    move-object v0, v5

    .line 341
    .end local v3    # "defaultMask":I
    .end local v4    # "mask":I
    :cond_1f
    :goto_f
    goto/16 :goto_12

    :cond_20
    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 342
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 343
    .restart local v3    # "defaultMask":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v4, v3

    .line 344
    .restart local v4    # "mask":I
    if-nez v16, :cond_21

    and-int v5, v1, v4

    if-nez v5, :cond_21

    iget v5, v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v4

    if-nez v5, :cond_21

    .line 345
    goto/16 :goto_13

    .line 346
    :cond_21
    and-int v5, v1, v3

    if-eqz v5, :cond_22

    .line 347
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v5

    goto :goto_10

    .line 348
    :cond_22
    iget v5, v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_23

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v1

    if-nez v5, :cond_23

    .line 350
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v5

    .line 352
    .end local v3    # "defaultMask":I
    .end local v4    # "mask":I
    :cond_23
    :goto_10
    goto/16 :goto_12

    :cond_24
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 353
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 354
    .restart local v3    # "defaultMask":I
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v4, v3

    .line 355
    .restart local v4    # "mask":I
    if-nez v16, :cond_25

    and-int v5, v1, v4

    if-nez v5, :cond_25

    iget v5, v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v4

    if-nez v5, :cond_25

    .line 356
    goto/16 :goto_13

    .line 357
    :cond_25
    and-int v5, v1, v3

    if-eqz v5, :cond_26

    .line 358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    goto :goto_11

    .line 359
    :cond_26
    iget v5, v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_27

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v1

    if-nez v5, :cond_27

    .line 361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    .line 363
    .end local v3    # "defaultMask":I
    .end local v4    # "mask":I
    :cond_27
    :goto_11
    goto :goto_12

    :cond_28
    if-nez v16, :cond_29

    iget-boolean v3, v11, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    if-nez v3, :cond_29

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 364
    invoke-virtual {v15, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_29

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v1

    if-nez v3, :cond_29

    .line 366
    goto/16 :goto_13

    .line 541
    .end local v0    # "propertyValue":Ljava/lang/Object;
    .end local v1    # "serialzeFeatures":I
    .end local v2    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v12    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v17    # "newSeperator":C
    .end local v18    # "writeClassName":Z
    .end local v20    # "skipTransient":Z
    .end local v21    # "i":I
    .end local v22    # "ignoreNonFieldGetter":Z
    .end local v23    # "commaFlag":Z
    .end local v24    # "field":Ljava/lang/reflect/Field;
    .end local v26    # "fieldUseSingleQuotes":Z
    .end local v27    # "notApply":Z
    .end local v28    # "seperator":C
    .end local v30    # "startSeperator":C
    .end local v31    # "directWritePrefix":Z
    .end local v35    # "originalValue":Ljava/lang/Object;
    .end local v36    # "fieldInfoName":Ljava/lang/String;
    .end local v37    # "key":Ljava/lang/String;
    .end local v38    # "endSeperator":C
    :catchall_2
    move-exception v0

    move-object/from16 v7, v19

    move-object/from16 v3, v39

    move-object/from16 v2, p1

    goto/16 :goto_4

    .line 512
    :catch_3
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v1, v29

    move-object/from16 v3, v39

    move-object/from16 v2, p1

    goto/16 :goto_2c

    .line 370
    .restart local v0    # "propertyValue":Ljava/lang/Object;
    .restart local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v12    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v17    # "newSeperator":C
    .restart local v18    # "writeClassName":Z
    .restart local v20    # "skipTransient":Z
    .restart local v21    # "i":I
    .restart local v22    # "ignoreNonFieldGetter":Z
    .restart local v23    # "commaFlag":Z
    .restart local v24    # "field":Ljava/lang/reflect/Field;
    .restart local v26    # "fieldUseSingleQuotes":Z
    .restart local v27    # "notApply":Z
    .restart local v28    # "seperator":C
    .restart local v30    # "startSeperator":C
    .restart local v31    # "directWritePrefix":Z
    .restart local v35    # "originalValue":Ljava/lang/Object;
    .restart local v36    # "fieldInfoName":Ljava/lang/String;
    .restart local v37    # "key":Ljava/lang/String;
    .restart local v38    # "endSeperator":C
    :cond_29
    :goto_12
    if-eqz v0, :cond_31

    iget-boolean v1, v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    if-nez v1, :cond_2a

    iget v1, v14, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v2

    if-nez v1, :cond_2a

    iget-object v1, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_31

    .line 375
    :cond_2a
    iget-object v1, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 376
    .local v1, "fieldCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2b

    instance-of v2, v0, Ljava/lang/Byte;

    if-eqz v2, :cond_2b

    move-object v2, v0

    check-cast v2, Ljava/lang/Byte;

    .line 377
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-nez v2, :cond_2b

    .line 378
    goto/16 :goto_13

    .line 379
    :cond_2b
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2c

    instance-of v2, v0, Ljava/lang/Short;

    if-eqz v2, :cond_2c

    move-object v2, v0

    check-cast v2, Ljava/lang/Short;

    .line 380
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-nez v2, :cond_2c

    .line 381
    goto/16 :goto_13

    .line 382
    :cond_2c
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2d

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2d

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    .line 383
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2d

    .line 384
    goto/16 :goto_13

    .line 385
    :cond_2d
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2e

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_2e

    move-object v2, v0

    check-cast v2, Ljava/lang/Long;

    .line 386
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2e

    .line 387
    goto :goto_13

    .line 388
    :cond_2e
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2f

    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_2f

    move-object v2, v0

    check-cast v2, Ljava/lang/Float;

    .line 389
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2f

    .line 390
    goto :goto_13

    .line 391
    :cond_2f
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_30

    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_30

    move-object v2, v0

    check-cast v2, Ljava/lang/Double;

    .line 392
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_30

    .line 393
    goto :goto_13

    .line 394
    :cond_30
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_31

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_31

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    .line 395
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    if-nez v2, :cond_31

    .line 396
    goto :goto_13

    .line 400
    .end local v1    # "fieldCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_31
    if-eqz v23, :cond_33

    .line 401
    :try_start_18
    iget-boolean v1, v14, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    if-eqz v1, :cond_32

    :try_start_19
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_32

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    .line 403
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    if-nez v1, :cond_32

    .line 404
    nop

    .line 235
    .end local v0    # "propertyValue":Ljava/lang/Object;
    .end local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v12    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v17    # "newSeperator":C
    .end local v21    # "i":I
    .end local v24    # "field":Ljava/lang/reflect/Field;
    .end local v26    # "fieldUseSingleQuotes":Z
    .end local v27    # "notApply":Z
    .end local v28    # "seperator":C
    .end local v31    # "directWritePrefix":Z
    .end local v35    # "originalValue":Ljava/lang/Object;
    .end local v36    # "fieldInfoName":Ljava/lang/String;
    .end local v37    # "key":Ljava/lang/String;
    .end local v38    # "endSeperator":C
    .end local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v3, "newSeperator":C
    .local v4, "i":I
    .restart local v5    # "endSeperator":C
    .restart local v6    # "startSeperator":C
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v30, "seperator":C
    :goto_13
    move-object/from16 v2, p1

    goto/16 :goto_24

    .line 407
    .end local v3    # "newSeperator":C
    .end local v4    # "i":I
    .end local v5    # "endSeperator":C
    .end local v6    # "startSeperator":C
    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v0    # "propertyValue":Ljava/lang/Object;
    .restart local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v12    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v17    # "newSeperator":C
    .restart local v21    # "i":I
    .restart local v24    # "field":Ljava/lang/reflect/Field;
    .restart local v26    # "fieldUseSingleQuotes":Z
    .restart local v27    # "notApply":Z
    .restart local v28    # "seperator":C
    .local v30, "startSeperator":C
    .restart local v31    # "directWritePrefix":Z
    .restart local v35    # "originalValue":Ljava/lang/Object;
    .restart local v36    # "fieldInfoName":Ljava/lang/String;
    .restart local v37    # "key":Ljava/lang/String;
    .restart local v38    # "endSeperator":C
    .restart local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :cond_32
    const/16 v1, 0x2c

    :try_start_1a
    invoke-virtual {v15, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 408
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v15, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    if-eqz v2, :cond_34

    .line 409
    move-object/from16 v2, p1

    :try_start_1b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto :goto_14

    .line 413
    :cond_33
    const/16 v1, 0x2c

    :cond_34
    move-object/from16 v2, p1

    :goto_14
    move-object/from16 v3, v36

    move-object/from16 v4, v37

    if-eq v4, v3, :cond_36

    .line 414
    .end local v36    # "fieldInfoName":Ljava/lang/String;
    .end local v37    # "key":Ljava/lang/String;
    .local v3, "fieldInfoName":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    if-nez v16, :cond_35

    .line 415
    const/4 v5, 0x1

    invoke-virtual {v15, v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    goto :goto_15

    .line 541
    .end local v0    # "propertyValue":Ljava/lang/Object;
    .end local v3    # "fieldInfoName":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v12    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v17    # "newSeperator":C
    .end local v18    # "writeClassName":Z
    .end local v20    # "skipTransient":Z
    .end local v21    # "i":I
    .end local v22    # "ignoreNonFieldGetter":Z
    .end local v23    # "commaFlag":Z
    .end local v24    # "field":Ljava/lang/reflect/Field;
    .end local v26    # "fieldUseSingleQuotes":Z
    .end local v27    # "notApply":Z
    .end local v28    # "seperator":C
    .end local v30    # "startSeperator":C
    .end local v31    # "directWritePrefix":Z
    .end local v35    # "originalValue":Ljava/lang/Object;
    .end local v38    # "endSeperator":C
    :catchall_3
    move-exception v0

    goto/16 :goto_20

    .line 512
    :catch_4
    move-exception v0

    goto/16 :goto_21

    .line 418
    .restart local v0    # "propertyValue":Ljava/lang/Object;
    .restart local v3    # "fieldInfoName":Ljava/lang/String;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v12    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v17    # "newSeperator":C
    .restart local v18    # "writeClassName":Z
    .restart local v20    # "skipTransient":Z
    .restart local v21    # "i":I
    .restart local v22    # "ignoreNonFieldGetter":Z
    .restart local v23    # "commaFlag":Z
    .restart local v24    # "field":Ljava/lang/reflect/Field;
    .restart local v26    # "fieldUseSingleQuotes":Z
    .restart local v27    # "notApply":Z
    .restart local v28    # "seperator":C
    .restart local v30    # "startSeperator":C
    .restart local v31    # "directWritePrefix":Z
    .restart local v35    # "originalValue":Ljava/lang/Object;
    .restart local v38    # "endSeperator":C
    :cond_35
    const/4 v5, 0x1

    :goto_15
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 477
    move v7, v9

    move-object/from16 v6, v35

    goto/16 :goto_1b

    .line 419
    :cond_36
    const/4 v5, 0x1

    move-object/from16 v6, v35

    if-eq v6, v0, :cond_38

    .line 420
    .end local v35    # "originalValue":Ljava/lang/Object;
    .local v6, "originalValue":Ljava/lang/Object;
    if-nez v16, :cond_37

    .line 421
    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 423
    :cond_37
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 477
    move v7, v9

    goto/16 :goto_1b

    .line 425
    :cond_38
    if-nez v16, :cond_3e

    .line 426
    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    .line 427
    .local v7, "isMap":Z
    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v25

    if-nez v25, :cond_39

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "java."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    :cond_39
    const-class v1, Ljava/lang/Object;

    if-ne v12, v1, :cond_3b

    :cond_3a
    const/4 v1, 0x1

    goto :goto_16

    :cond_3b
    move v1, v9

    .line 428
    .local v1, "isJavaBean":Z
    :goto_16
    if-nez v18, :cond_3c

    iget-boolean v5, v14, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v5, :cond_3c

    if-nez v7, :cond_3e

    if-nez v1, :cond_3e

    .line 429
    :cond_3c
    if-eqz v31, :cond_3d

    .line 430
    iget-object v5, v14, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    iget-object v9, v14, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    array-length v9, v9

    move/from16 v40, v1

    const/4 v1, 0x0

    invoke-virtual {v15, v5, v1, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .end local v1    # "isJavaBean":Z
    .local v40, "isJavaBean":Z
    goto :goto_17

    .line 432
    .end local v40    # "isJavaBean":Z
    .restart local v1    # "isJavaBean":Z
    :cond_3d
    move/from16 v40, v1

    .end local v1    # "isJavaBean":Z
    .restart local v40    # "isJavaBean":Z
    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 437
    .end local v7    # "isMap":Z
    .end local v40    # "isJavaBean":Z
    :cond_3e
    :goto_17
    if-nez v16, :cond_47

    .line 438
    invoke-virtual {v14}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v1

    .line 439
    .local v1, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const-class v5, Ljava/lang/String;

    if-ne v12, v5, :cond_45

    if-eqz v1, :cond_3f

    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v5

    const-class v7, Ljava/lang/Void;

    if-ne v5, v7, :cond_45

    .line 440
    :cond_3f
    if-nez v0, :cond_43

    .line 441
    iget v5, v11, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    .line 442
    .local v5, "serialzeFeatures":I
    iget-object v7, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v7, :cond_40

    .line 443
    iget-object v7, v8, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    or-int/2addr v5, v7

    .line 445
    :cond_40
    iget v7, v15, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v9, v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_41

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v7, v5

    if-nez v7, :cond_41

    .line 447
    const-string v7, ""

    invoke-virtual {v15, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_18

    .line 448
    :cond_41
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_42

    .line 449
    const-string v7, ""

    invoke-virtual {v15, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_18

    .line 451
    :cond_42
    invoke-virtual {v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 453
    .end local v5    # "serialzeFeatures":I
    :goto_18
    nop

    .line 472
    const/4 v7, 0x0

    goto :goto_1a

    .line 454
    :cond_43
    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 456
    .local v5, "propertyValueString":Ljava/lang/String;
    if-eqz v26, :cond_44

    .line 457
    invoke-virtual {v15, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 461
    const/4 v7, 0x0

    goto :goto_19

    .line 459
    :cond_44
    const/4 v7, 0x0

    invoke-virtual {v15, v5, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 461
    .end local v5    # "propertyValueString":Ljava/lang/String;
    :goto_19
    goto :goto_1a

    .line 463
    :cond_45
    const/4 v7, 0x0

    iget-boolean v5, v14, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v5, :cond_46

    instance-of v5, v0, Ljava/util/Map;

    if-eqz v5, :cond_46

    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    .line 465
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_46

    .line 466
    const/4 v5, 0x0

    .line 467
    .end local v23    # "commaFlag":Z
    .local v5, "commaFlag":Z
    nop

    .line 235
    move/from16 v23, v5

    goto :goto_1f

    .line 470
    .end local v5    # "commaFlag":Z
    .restart local v23    # "commaFlag":Z
    :cond_46
    invoke-virtual {v11, v2, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    .line 472
    .end local v1    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_1a
    goto :goto_1b

    .line 473
    :cond_47
    const/4 v7, 0x0

    invoke-virtual {v11, v2, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    .line 477
    :goto_1b
    const/4 v1, 0x0

    .line 478
    .local v1, "fieldUnwrappedNull":Z
    iget-boolean v5, v14, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v5, :cond_4b

    instance-of v5, v0, Ljava/util/Map;

    if-eqz v5, :cond_4b

    .line 480
    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    .line 481
    .local v5, "map":Ljava/util/Map;
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    if-nez v9, :cond_48

    .line 482
    const/4 v1, 0x1

    goto :goto_1e

    .line 483
    :cond_48
    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-nez v9, :cond_4b

    .line 484
    const/4 v9, 0x0

    .line 485
    .local v9, "hasNotNull":Z
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 486
    .local v25, "value":Ljava/lang/Object;
    if-eqz v25, :cond_49

    .line 487
    const/4 v9, 0x1

    .line 488
    goto :goto_1d

    .line 490
    .end local v25    # "value":Ljava/lang/Object;
    :cond_49
    goto :goto_1c

    .line 491
    :cond_4a
    :goto_1d
    if-nez v9, :cond_4b

    .line 492
    const/4 v1, 0x1

    .line 497
    .end local v5    # "map":Ljava/util/Map;
    .end local v9    # "hasNotNull":Z
    :cond_4b
    :goto_1e
    if-nez v1, :cond_4e

    .line 498
    const/4 v0, 0x1

    .line 235
    .end local v1    # "fieldUnwrappedNull":Z
    .end local v3    # "fieldInfoName":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "originalValue":Ljava/lang/Object;
    .end local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v12    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v23    # "commaFlag":Z
    .end local v24    # "field":Ljava/lang/reflect/Field;
    .end local v26    # "fieldUseSingleQuotes":Z
    .end local v27    # "notApply":Z
    .end local v31    # "directWritePrefix":Z
    .local v0, "commaFlag":Z
    move/from16 v23, v0

    .end local v0    # "commaFlag":Z
    .end local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v1, "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v23    # "commaFlag":Z
    :goto_1f
    move-object/from16 v1, v29

    goto/16 :goto_25

    .line 541
    .end local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v17    # "newSeperator":C
    .end local v18    # "writeClassName":Z
    .end local v20    # "skipTransient":Z
    .end local v21    # "i":I
    .end local v22    # "ignoreNonFieldGetter":Z
    .end local v23    # "commaFlag":Z
    .end local v28    # "seperator":C
    .end local v30    # "startSeperator":C
    .end local v38    # "endSeperator":C
    .restart local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catchall_4
    move-exception v0

    move-object/from16 v2, p1

    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v3, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v7, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :goto_20
    move-object/from16 v7, v19

    goto :goto_22

    .line 512
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v7    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_5
    move-exception v0

    move-object/from16 v2, p1

    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v5, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :goto_21
    move-object/from16 v5, v19

    move-object/from16 v1, v29

    goto :goto_23

    .line 288
    .end local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    .local v2, "fieldInfoName":Ljava/lang/String;
    .local v3, "newSeperator":C
    .local v4, "i":I
    .local v5, "endSeperator":C
    .local v6, "startSeperator":C
    .local v7, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v14    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v18    # "writeClassName":Z
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v20    # "skipTransient":Z
    .restart local v22    # "ignoreNonFieldGetter":Z
    .restart local v23    # "commaFlag":Z
    .restart local v24    # "field":Ljava/lang/reflect/Field;
    .restart local v26    # "fieldUseSingleQuotes":Z
    .restart local v27    # "notApply":Z
    .local v28, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v30, "seperator":C
    .restart local v31    # "directWritePrefix":Z
    .restart local v32    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :cond_4c
    move/from16 v17, v3

    move/from16 v21, v4

    move/from16 v38, v5

    move-object/from16 v39, v7

    move-object/from16 v12, v28

    move/from16 v28, v30

    move-object v3, v2

    move/from16 v30, v6

    move-object v2, v9

    .end local v2    # "fieldInfoName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "endSeperator":C
    .end local v6    # "startSeperator":C
    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v3, "fieldInfoName":Ljava/lang/String;
    .restart local v12    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "newSeperator":C
    .restart local v21    # "i":I
    .local v28, "seperator":C
    .local v30, "startSeperator":C
    .restart local v38    # "endSeperator":C
    .restart local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :try_start_1c
    throw v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    .line 541
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "fieldInfoName":Ljava/lang/String;
    .end local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v12    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v17    # "newSeperator":C
    .end local v18    # "writeClassName":Z
    .end local v20    # "skipTransient":Z
    .end local v21    # "i":I
    .end local v22    # "ignoreNonFieldGetter":Z
    .end local v23    # "commaFlag":Z
    .end local v24    # "field":Ljava/lang/reflect/Field;
    .end local v26    # "fieldUseSingleQuotes":Z
    .end local v27    # "notApply":Z
    .end local v28    # "seperator":C
    .end local v30    # "startSeperator":C
    .end local v31    # "directWritePrefix":Z
    .end local v38    # "endSeperator":C
    :catchall_5
    move-exception v0

    move-object/from16 v7, v19

    move-object/from16 v29, v32

    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v32    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v3, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v7, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_22
    move-object/from16 v3, v39

    goto/16 :goto_4

    .line 512
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v7    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v32    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_6
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v1, v32

    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v32    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v5, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :goto_23
    move-object/from16 v3, v39

    goto/16 :goto_2c

    .line 541
    .end local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v7, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v32    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catchall_6
    move-exception v0

    move-object v2, v9

    move-object v3, v7

    move-object/from16 v7, v19

    move-object/from16 v29, v32

    goto :goto_26

    .line 512
    :catch_7
    move-exception v0

    move-object v2, v9

    move-object v3, v7

    move-object/from16 v5, v19

    move-object/from16 v1, v32

    goto :goto_27

    .line 235
    .end local v32    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v3, "newSeperator":C
    .restart local v4    # "i":I
    .local v5, "endSeperator":C
    .restart local v6    # "startSeperator":C
    .restart local v18    # "writeClassName":Z
    .restart local v20    # "skipTransient":Z
    .restart local v22    # "ignoreNonFieldGetter":Z
    .restart local v23    # "commaFlag":Z
    .restart local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v30, "seperator":C
    :cond_4d
    move/from16 v17, v3

    move/from16 v21, v4

    move/from16 v38, v5

    move-object/from16 v39, v7

    move-object v2, v9

    move/from16 v28, v30

    move/from16 v30, v6

    :cond_4e
    :goto_24
    move-object/from16 v1, v29

    .end local v3    # "newSeperator":C
    .end local v4    # "i":I
    .end local v5    # "endSeperator":C
    .end local v6    # "startSeperator":C
    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v17    # "newSeperator":C
    .restart local v21    # "i":I
    .restart local v28    # "seperator":C
    .local v30, "startSeperator":C
    .restart local v38    # "endSeperator":C
    .restart local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_25
    add-int/lit8 v0, v21, 0x1

    .end local v21    # "i":I
    .local v0, "i":I
    move-object v9, v2

    move/from16 v3, v17

    move/from16 v2, v28

    move/from16 v6, v30

    move/from16 v5, v38

    move-object/from16 v7, v39

    move-object/from16 v12, p4

    goto/16 :goto_9

    .line 541
    .end local v0    # "i":I
    .end local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v17    # "newSeperator":C
    .end local v18    # "writeClassName":Z
    .end local v20    # "skipTransient":Z
    .end local v22    # "ignoreNonFieldGetter":Z
    .end local v23    # "commaFlag":Z
    .end local v28    # "seperator":C
    .end local v30    # "startSeperator":C
    .end local v38    # "endSeperator":C
    .end local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catchall_7
    move-exception v0

    move-object v2, v9

    move-object v3, v7

    move-object/from16 v7, v19

    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v3, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_26
    move-object/from16 v5, p3

    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_2f

    .line 512
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catch_8
    move-exception v0

    move-object v2, v9

    move-object v3, v7

    move-object/from16 v5, v19

    move-object/from16 v1, v29

    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v5, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_27
    goto/16 :goto_2c

    .line 541
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_8
    move-exception v0

    move-object/from16 v29, v1

    move-object v2, v9

    move-object v3, v7

    move-object/from16 v7, v19

    move-object/from16 v5, p3

    .end local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_2f

    .line 512
    .end local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_9
    move-exception v0

    move-object/from16 v29, v1

    move-object v2, v9

    move-object v3, v7

    move-object/from16 v5, v19

    .end local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_2c

    .line 502
    .end local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v2, "seperator":C
    .local v3, "newSeperator":C
    .local v5, "endSeperator":C
    .restart local v6    # "startSeperator":C
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v18    # "writeClassName":Z
    .restart local v20    # "skipTransient":Z
    .restart local v22    # "ignoreNonFieldGetter":Z
    .restart local v23    # "commaFlag":Z
    :cond_4f
    move-object/from16 v29, v1

    move/from16 v28, v2

    move/from16 v17, v3

    move/from16 v38, v5

    move/from16 v30, v6

    move-object/from16 v39, v7

    move-object v2, v9

    .end local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v2    # "seperator":C
    .end local v3    # "newSeperator":C
    .end local v5    # "endSeperator":C
    .end local v6    # "startSeperator":C
    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v17    # "newSeperator":C
    .restart local v28    # "seperator":C
    .restart local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v30    # "startSeperator":C
    .restart local v38    # "endSeperator":C
    .restart local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-eqz v23, :cond_50

    const/16 v0, 0x2c

    goto :goto_28

    :cond_50
    const/4 v0, 0x0

    :goto_28
    :try_start_1d
    invoke-virtual {v8, v2, v10, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    .line 504
    move-object/from16 v3, v39

    :try_start_1e
    array-length v0, v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .end local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v3, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-lez v0, :cond_51

    :try_start_1f
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 505
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto :goto_2b

    .line 541
    .end local v17    # "newSeperator":C
    .end local v18    # "writeClassName":Z
    .end local v20    # "skipTransient":Z
    .end local v22    # "ignoreNonFieldGetter":Z
    .end local v23    # "commaFlag":Z
    .end local v28    # "seperator":C
    .end local v30    # "startSeperator":C
    .end local v38    # "endSeperator":C
    :catchall_9
    move-exception v0

    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v7, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :goto_29
    move-object/from16 v7, v19

    goto/16 :goto_4

    .line 512
    .end local v7    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catch_a
    move-exception v0

    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v5, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :goto_2a
    move-object/from16 v5, v19

    move-object/from16 v1, v29

    goto/16 :goto_2c

    .line 509
    .end local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v17    # "newSeperator":C
    .restart local v18    # "writeClassName":Z
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v20    # "skipTransient":Z
    .restart local v22    # "ignoreNonFieldGetter":Z
    .restart local v23    # "commaFlag":Z
    .restart local v28    # "seperator":C
    .restart local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v30    # "startSeperator":C
    .restart local v38    # "endSeperator":C
    :cond_51
    :goto_2b
    if-nez p6, :cond_52

    .line 510
    move/from16 v1, v38

    invoke-virtual {v15, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    .line 541
    .end local v17    # "newSeperator":C
    .end local v18    # "writeClassName":Z
    .end local v20    # "skipTransient":Z
    .end local v22    # "ignoreNonFieldGetter":Z
    .end local v23    # "commaFlag":Z
    .end local v28    # "seperator":C
    .end local v30    # "startSeperator":C
    .end local v38    # "endSeperator":C
    :cond_52
    move-object/from16 v5, v19

    iput-object v5, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 542
    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    nop

    .line 543
    return-void

    .line 541
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_a
    move-exception v0

    move-object/from16 v7, v19

    move-object/from16 v5, p3

    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto/16 :goto_2f

    .line 512
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catch_b
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v1, v29

    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_2c

    .line 541
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catchall_b
    move-exception v0

    move-object/from16 v3, v39

    move-object/from16 v7, v19

    move-object/from16 v5, p3

    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto/16 :goto_2f

    .line 512
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_c
    move-exception v0

    move-object/from16 v5, v19

    move-object/from16 v3, v39

    move-object/from16 v1, v29

    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v39    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_2c

    .line 541
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v7, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_c
    move-exception v0

    move-object/from16 v29, v1

    move-object v3, v7

    move-object v2, v9

    move-object/from16 v7, v19

    move-object/from16 v5, p3

    .end local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_2f

    .line 512
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catch_d
    move-exception v0

    move-object/from16 v29, v1

    move-object v3, v7

    move-object v2, v9

    move-object/from16 v5, v19

    .end local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto :goto_2c

    .line 541
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_d
    move-exception v0

    move-object v3, v7

    move-object v2, v9

    move-object/from16 v29, v1

    move-object/from16 v7, v19

    move-object/from16 v5, p3

    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto/16 :goto_2f

    .line 512
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catch_e
    move-exception v0

    move-object v3, v7

    move-object v2, v9

    move-object/from16 v5, v19

    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_2c

    .line 541
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v11, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_e
    move-exception v0

    move-object v3, v7

    move-object v2, v9

    move-object/from16 v29, v1

    move-object v7, v11

    move-object/from16 v5, p3

    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v11    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto/16 :goto_2f

    .line 512
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v11    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catch_f
    move-exception v0

    move-object v3, v7

    move-object v2, v9

    move-object v5, v11

    .line 513
    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v11    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :goto_2c
    :try_start_20
    const-string v6, "write javaBean error, fastjson version 1.2.70"
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    .line 514
    .local v6, "errorMessage":Ljava/lang/String;
    if-eqz v10, :cond_53

    .line 515
    :try_start_21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", class "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    move-object v6, v7

    goto :goto_2d

    .line 541
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "errorMessage":Ljava/lang/String;
    :catchall_f
    move-exception v0

    move-object/from16 v29, v1

    move-object v7, v5

    goto/16 :goto_4

    .line 517
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "errorMessage":Ljava/lang/String;
    :cond_53
    :goto_2d
    move-object v7, v5

    move-object/from16 v5, p3

    if-eqz v5, :cond_54

    .line 518
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v7, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :try_start_22
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", fieldName : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    goto :goto_2e

    .line 541
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "errorMessage":Ljava/lang/String;
    :catchall_10
    move-exception v0

    move-object/from16 v29, v1

    goto/16 :goto_2f

    .line 519
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "errorMessage":Ljava/lang/String;
    :cond_54
    if-eqz v1, :cond_56

    iget-object v9, v1, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v9, :cond_56

    .line 520
    iget-object v9, v1, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 521
    .local v9, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v11, v9, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v11, :cond_55

    .line 522
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", method : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    goto :goto_2e

    .line 524
    :cond_55
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", fieldName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v12, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 527
    .end local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_56
    :goto_2e
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_57

    .line 528
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 531
    :cond_57
    const/4 v9, 0x0

    .line 532
    .local v9, "cause":Ljava/lang/Throwable;
    instance-of v11, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v11, :cond_58

    .line 533
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    move-object v9, v11

    .line 535
    :cond_58
    if-nez v9, :cond_59

    .line 536
    move-object v9, v0

    .line 539
    :cond_59
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v11, v6, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    .line 541
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "errorMessage":Ljava/lang/String;
    .end local v7    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v9    # "cause":Ljava/lang/Throwable;
    .restart local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_11
    move-exception v0

    move-object v7, v5

    move-object/from16 v5, p3

    move-object/from16 v29, v1

    .end local v1    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v5    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v7    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v29    # "errorFieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_2f
    iput-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v0
.end method

.method protected writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .locals 2
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "seperator"    # C

    .line 832
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 834
    .local v1, "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    .line 835
    .end local v1    # "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    goto :goto_0

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->afterFilters:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 840
    .restart local v1    # "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    .line 841
    .end local v1    # "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    goto :goto_1

    .line 844
    :cond_1
    return p3
.end method

.method public writeAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 134
    return-void
.end method

.method public writeAsArrayNonContext(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 142
    return-void
.end method

.method protected writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .locals 2
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "seperator"    # C

    .line 815
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 817
    .local v1, "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    .line 818
    .end local v1    # "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    goto :goto_0

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beforeFilters:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 823
    .restart local v1    # "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    .line 824
    .end local v1    # "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    goto :goto_1

    .line 827
    :cond_1
    return p3
.end method

.method protected writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "typeKey"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;

    .line 546
    if-nez p2, :cond_0

    .line 547
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object p2, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 549
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 550
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeName:Ljava/lang/String;

    .line 551
    .local v0, "typeName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 552
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 554
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 558
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 560
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public writeDirectNonContext(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 126
    return-void
.end method

.method public writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 158
    return-void
.end method

.method public writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldFeatures"    # I

    .line 564
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 565
    .local v0, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 566
    .local v1, "mask":I
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    and-int v3, p3, v1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 571
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 572
    const/4 v2, 0x1

    return v2

    .line 574
    :cond_1
    return v2

    .line 567
    :cond_2
    :goto_0
    return v2
.end method
