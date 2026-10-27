.class public Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final alterNameFieldDeserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field public final beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fieldDeserializerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private transient hashArray:[J

.field private transient hashArrayMapping:[S

.field private transient smartMatchHashArray:[J

.field private transient smartMatchHashArrayMapping:[S

.field protected final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V
    .locals 10
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 55
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    iget-object v1, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 60
    iget-object v3, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v3, v3, v1

    .line 61
    .local v3, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {p1, p1, p2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 63
    .local v4, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v4, v5, v1

    .line 65
    const/16 v5, 0x80

    if-le v2, v5, :cond_1

    .line 66
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    if-nez v5, :cond_0

    .line 67
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    .line 69
    :cond_0
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    iget-object v6, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    iget-object v5, v3, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 73
    .local v8, "name":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 74
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v0, v9

    .line 76
    :cond_2
    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v8    # "name":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 59
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_4
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    .line 81
    iget-object v1, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 82
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v2

    .restart local v2    # "size":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 83
    iget-object v3, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v3, v3, v1

    .line 84
    .restart local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v4, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 85
    .restart local v4    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v4, v5, v1

    .line 82
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 87
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_5
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 44
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 6
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 48
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    iget-boolean v3, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->fieldBased:Z

    iget-boolean v4, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->compatibleWithJavaBean:Z

    .line 49
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isJacksonCompatible()Z

    move-result v5

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V

    .line 51
    return-void
.end method

.method private createFactoryInstance(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1339
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected static getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .locals 9
    .param p0, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p1, "beanInfo"    # Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .param p2, "typeName"    # Ljava/lang/String;

    .line 1582
    iget-object v0, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1583
    return-object v1

    .line 1586
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 1587
    .local v4, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 1588
    .local v5, "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v6, v5, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v6, :cond_2

    .line 1589
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 1591
    .local v6, "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    iget-object v7, v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 1592
    .local v7, "subBeanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    iget-object v8, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1593
    return-object v6

    .line 1596
    :cond_1
    invoke-static {p0, v7, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v8

    .line 1597
    .local v8, "subSeeAlso":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v8, :cond_2

    .line 1598
    return-object v8

    .line 1586
    .end local v4    # "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v6    # "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v7    # "subBeanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .end local v8    # "subSeeAlso":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1603
    :cond_3
    return-object v1
.end method

.method static isSetFlag(I[I)Z
    .locals 6
    .param p0, "i"    # I
    .param p1, "setFlags"    # [I

    .line 172
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 173
    return v0

    .line 176
    :cond_0
    div-int/lit8 v1, p0, 0x20

    .line 177
    .local v1, "flagIndex":I
    rem-int/lit8 v2, p0, 0x20

    .line 178
    .local v2, "bitIndex":I
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 179
    aget v3, p1, v1

    const/4 v4, 0x1

    shl-int v5, v4, v2

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    .line 180
    return v4

    .line 184
    :cond_1
    return v0
.end method

.method protected static parseArray(Ljava/util/Collection;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 10
    .param p0, "collection"    # Ljava/util/Collection;
    .param p1, "deser"    # Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .param p2, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .param p4, "fieldName"    # Ljava/lang/Object;

    .line 1613
    iget-object v0, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 1614
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    .line 1615
    .local v1, "token":I
    const/16 v2, 0x10

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    .line 1616
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1617
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    .line 1618
    return-void

    .line 1621
    :cond_0
    const/16 v3, 0xe

    if-eq v1, v3, :cond_1

    .line 1622
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 1624
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v4

    .line 1625
    .local v4, "ch":C
    const/16 v5, 0x5b

    if-ne v4, v5, :cond_2

    .line 1626
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1627
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_0

    .line 1629
    :cond_2
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1632
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_3

    .line 1633
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 1634
    return-void

    .line 1637
    :cond_3
    const/4 v6, 0x0

    .line 1639
    .local v6, "index":I
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, p2, p3, v8}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1640
    .local v8, "item":Ljava/lang/Object;
    invoke-interface {p0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1641
    add-int/lit8 v6, v6, 0x1

    .line 1642
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v9

    if-ne v9, v2, :cond_5

    .line 1643
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v4

    .line 1644
    if-ne v4, v5, :cond_4

    .line 1645
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1646
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_2

    .line 1648
    :cond_4
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1653
    .end local v8    # "item":Ljava/lang/Object;
    :goto_2
    goto :goto_1

    .line 1655
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    .line 1656
    if-eq v1, v7, :cond_6

    .line 1657
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 1660
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v3

    .line 1661
    .end local v4    # "ch":C
    .local v3, "ch":C
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_7

    .line 1662
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1663
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_3

    .line 1665
    :cond_7
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 1668
    :goto_3
    return-void
.end method


# virtual methods
.method protected check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V
    .locals 2
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "token"    # I

    .line 379
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 382
    return-void

    .line 380
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 12
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .line 188
    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    .line 191
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 192
    .local v3, "loader":Ljava/lang/ClassLoader;
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 193
    .local v4, "obj":Lcom/alibaba/fastjson/JSONObject;
    new-array v1, v1, [Ljava/lang/Class;

    aput-object v0, v1, v2

    invoke-static {v3, v1, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 194
    .local v1, "proxy":Ljava/lang/Object;
    return-object v1

    .line 198
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "proxy":Ljava/lang/Object;
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    .end local v4    # "obj":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 199
    return-object v3

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-lez v0, :cond_2

    .line 203
    return-object v3

    .line 208
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 209
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-nez v4, :cond_4

    .line 210
    if-eqz v0, :cond_3

    .line 211
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v1, "object":Ljava/lang/Object;
    :goto_0
    goto/16 :goto_3

    .line 213
    .end local v1    # "object":Ljava/lang/Object;
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 216
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v3

    .line 217
    .local v3, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz v3, :cond_e

    iget-object v4, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_e

    .line 222
    instance-of v4, p2, Ljava/lang/Class;

    if-eqz v4, :cond_d

    .line 223
    move-object v4, p2

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "typeName":Ljava/lang/String;
    nop

    .line 228
    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 229
    .local v5, "lastIndex":I
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "parentClassName":Ljava/lang/String;
    iget-object v7, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 232
    .local v7, "ctxObj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 234
    .local v8, "parentName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 235
    .local v9, "param":Ljava/lang/Object;
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 236
    iget-object v10, v3, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 237
    .local v10, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz v10, :cond_6

    iget-object v11, v10, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v11, :cond_6

    const-string v11, "java.util.ArrayList"

    .line 239
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "java.util.List"

    .line 240
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "java.util.Collection"

    .line 241
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "java.util.Map"

    .line 242
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "java.util.HashMap"

    .line 243
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 244
    :cond_5
    iget-object v11, v10, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 245
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 246
    iget-object v11, v10, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v9, v11

    goto :goto_1

    .line 249
    :cond_6
    move-object v9, v7

    .line 251
    .end local v10    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_7
    :goto_1
    goto :goto_2

    .line 252
    :cond_8
    move-object v9, v7

    .line 255
    :goto_2
    if-eqz v9, :cond_c

    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_9

    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    .line 259
    :cond_9
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v9, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v4    # "typeName":Ljava/lang/String;
    .end local v5    # "lastIndex":I
    .end local v6    # "parentClassName":Ljava/lang/String;
    .end local v7    # "ctxObj":Ljava/lang/Object;
    .end local v8    # "parentName":Ljava/lang/String;
    .end local v9    # "param":Ljava/lang/Object;
    .restart local v1    # "object":Ljava/lang/Object;
    :goto_3
    move-object v0, v1

    .line 265
    .end local v1    # "object":Ljava/lang/Object;
    .local v0, "object":Ljava/lang/Object;
    nop

    .line 264
    nop

    .line 267
    if-eqz p1, :cond_b

    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 268
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 269
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v3, v1

    :goto_4
    if-ge v2, v3, :cond_b

    aget-object v4, v1, v2

    .line 270
    .local v4, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_a

    .line 272
    :try_start_1
    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    goto :goto_5

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create instance error, class "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 269
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 280
    :cond_b
    return-object v0

    .line 256
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v3    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v4, "typeName":Ljava/lang/String;
    .restart local v5    # "lastIndex":I
    .restart local v6    # "parentClassName":Ljava/lang/String;
    .restart local v7    # "ctxObj":Ljava/lang/Object;
    .restart local v8    # "parentName":Ljava/lang/String;
    .restart local v9    # "param":Ljava/lang/Object;
    :cond_c
    :try_start_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "can\'t create non-static inner class instance."

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .end local v4    # "typeName":Ljava/lang/String;
    .end local v5    # "lastIndex":I
    .end local v6    # "parentClassName":Ljava/lang/String;
    .end local v7    # "ctxObj":Ljava/lang/Object;
    .end local v8    # "parentName":Ljava/lang/String;
    .end local v9    # "param":Ljava/lang/Object;
    :cond_d
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "can\'t create non-static inner class instance."

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_e
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "can\'t create non-static inner class instance."

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 263
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :catch_1
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create instance error, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 262
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    throw v0
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 17
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    .line 1346
    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1348
    .local v3, "object":Ljava/lang/Object;
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_12

    .line 1349
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 1351
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1352
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1353
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 1355
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v9

    .line 1356
    .local v9, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v9, :cond_0

    .line 1357
    goto :goto_0

    .line 1360
    :cond_0
    iget-object v10, v9, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1361
    .local v10, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v11, v9, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v11, v11, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 1362
    .local v11, "field":Ljava/lang/reflect/Field;
    iget-object v12, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 1364
    .local v12, "paramType":Ljava/lang/reflect/Type;
    iget-object v13, v10, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    if-eqz v13, :cond_1

    .line 1365
    invoke-virtual {v10}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1366
    invoke-virtual {v10}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v13

    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v13

    const-class v14, Ljava/lang/Void;

    if-eq v13, v14, :cond_1

    iget-object v13, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1367
    invoke-virtual {v13, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1368
    new-instance v13, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v8}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;)V

    .line 1369
    .local v13, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v9, v13, v3, v12, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 1370
    goto :goto_0

    .line 1373
    .end local v13    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    :cond_1
    if-eqz v11, :cond_c

    iget-object v13, v10, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v13, :cond_c

    .line 1374
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    .line 1375
    .local v13, "fieldType":Ljava/lang/Class;
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_3

    .line 1376
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v8, v14, :cond_2

    .line 1377
    invoke-virtual {v11, v3, v5}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 1378
    goto :goto_0

    .line 1381
    :cond_2
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v8, v14, :cond_c

    .line 1382
    const/4 v14, 0x1

    invoke-virtual {v11, v3, v14}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 1383
    goto :goto_0

    .line 1385
    :cond_3
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_4

    .line 1386
    instance-of v14, v8, Ljava/lang/Number;

    if-eqz v14, :cond_c

    .line 1387
    move-object v14, v8

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    invoke-virtual {v11, v3, v14}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 1388
    goto/16 :goto_0

    .line 1390
    :cond_4
    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v13, v14, :cond_5

    .line 1391
    instance-of v14, v8, Ljava/lang/Number;

    if-eqz v14, :cond_c

    .line 1392
    move-object v14, v8

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    invoke-virtual {v11, v3, v14, v15}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 1393
    goto/16 :goto_0

    .line 1395
    :cond_5
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v15, 0xa

    if-ne v13, v14, :cond_8

    .line 1396
    instance-of v14, v8, Ljava/lang/Number;

    if-eqz v14, :cond_6

    .line 1397
    move-object v14, v8

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    invoke-virtual {v11, v3, v14}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 1398
    goto/16 :goto_0

    .line 1399
    :cond_6
    instance-of v14, v8, Ljava/lang/String;

    if-eqz v14, :cond_c

    .line 1400
    move-object v14, v8

    check-cast v14, Ljava/lang/String;

    .line 1402
    .local v14, "strVal":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v15, :cond_7

    .line 1403
    invoke-static {v14}, Lcom/alibaba/fastjson/util/TypeUtils;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .local v4, "floatValue":F
    goto :goto_1

    .line 1405
    .end local v4    # "floatValue":F
    :cond_7
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 1408
    .restart local v4    # "floatValue":F
    :goto_1
    invoke-virtual {v11, v3, v4}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    .line 1409
    goto/16 :goto_4

    .line 1411
    .end local v4    # "floatValue":F
    .end local v14    # "strVal":Ljava/lang/String;
    :cond_8
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v13, v4, :cond_b

    .line 1412
    instance-of v4, v8, Ljava/lang/Number;

    if-eqz v4, :cond_9

    .line 1413
    move-object v4, v8

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v11, v3, v14, v15}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    .line 1414
    goto :goto_4

    .line 1415
    :cond_9
    instance-of v4, v8, Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 1416
    move-object v4, v8

    check-cast v4, Ljava/lang/String;

    .line 1418
    .local v4, "strVal":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-gt v14, v15, :cond_a

    .line 1419
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .local v14, "doubleValue":D
    goto :goto_2

    .line 1421
    .end local v14    # "doubleValue":D
    :cond_a
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 1424
    .restart local v14    # "doubleValue":D
    :goto_2
    invoke-virtual {v11, v3, v14, v15}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    .line 1425
    goto :goto_4

    .line 1427
    .end local v4    # "strVal":Ljava/lang/String;
    .end local v14    # "doubleValue":D
    :cond_b
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v12, v4, :cond_c

    .line 1428
    invoke-virtual {v11, v3, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1429
    goto :goto_4

    .line 1433
    .end local v13    # "fieldType":Ljava/lang/Class;
    :cond_c
    iget-object v4, v10, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 1434
    .local v4, "format":Ljava/lang/String;
    if-eqz v4, :cond_d

    const-class v13, Ljava/util/Date;

    if-ne v12, v13, :cond_d

    .line 1435
    invoke-static {v8, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    goto :goto_3

    .line 1436
    :cond_d
    if-eqz v4, :cond_e

    instance-of v13, v12, Ljava/lang/Class;

    if-eqz v13, :cond_e

    move-object v13, v12

    check-cast v13, Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "java.time.LocalDateTime"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1437
    invoke-static {v8, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLocalDateTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object v8

    goto :goto_3

    .line 1439
    :cond_e
    instance-of v13, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v13, :cond_f

    .line 1440
    move-object v13, v12

    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v8, v13, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_3

    .line 1442
    :cond_f
    invoke-static {v8, v12, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v8

    .line 1446
    :goto_3
    invoke-virtual {v9, v3, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1447
    .end local v4    # "format":Ljava/lang/String;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v10    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v11    # "field":Ljava/lang/reflect/Field;
    .end local v12    # "paramType":Ljava/lang/reflect/Type;
    nop

    .line 1351
    :goto_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1449
    :cond_10
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_11

    .line 1452
    :try_start_0
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    .local v0, "builtObj":Ljava/lang/Object;
    nop

    .line 1454
    nop

    .line 1457
    return-object v0

    .line 1453
    .end local v0    # "builtObj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1454
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "build object error"

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1460
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_11
    return-object v3

    .line 1464
    :cond_12
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1465
    .local v4, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    array-length v6, v4

    .line 1466
    .local v6, "size":I
    new-array v7, v6, [Ljava/lang/Object;

    .line 1467
    .local v7, "params":[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 1468
    .local v0, "missFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v8, v0

    move v0, v5

    .local v0, "i":I
    .local v8, "missFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_5
    if-ge v0, v6, :cond_1d

    .line 1469
    aget-object v9, v4, v0

    .line 1470
    .local v9, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v10, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v11, p1

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1472
    .local v10, "param":Ljava/lang/Object;
    if-nez v10, :cond_1c

    .line 1473
    iget-object v12, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1474
    .local v12, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_13

    .line 1475
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_6

    .line 1476
    :cond_13
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_14

    .line 1477
    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_6

    .line 1478
    :cond_14
    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_15

    .line 1479
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    goto :goto_6

    .line 1480
    :cond_15
    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_16

    .line 1481
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    goto :goto_6

    .line 1482
    :cond_16
    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_17

    .line 1483
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    goto :goto_6

    .line 1484
    :cond_17
    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_18

    .line 1485
    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_6

    .line 1486
    :cond_18
    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_19

    .line 1487
    const/16 v13, 0x30

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    goto :goto_6

    .line 1488
    :cond_19
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_1a

    .line 1489
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 1491
    :cond_1a
    :goto_6
    if-nez v8, :cond_1b

    .line 1492
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object v8, v13

    .line 1494
    :cond_1b
    iget-object v13, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    .end local v12    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1c
    aput-object v10, v7, v0

    .line 1468
    .end local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "param":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1499
    .end local v0    # "i":I
    :cond_1d
    move-object/from16 v11, p1

    if-eqz v8, :cond_1f

    .line 1500
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1501
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1502
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 1504
    .local v12, "value":Ljava/lang/Object;
    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v13

    .line 1505
    .local v13, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v13, :cond_1e

    .line 1506
    iget-object v14, v13, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v14, v14, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 1507
    .local v14, "index":Ljava/lang/Integer;
    if-eqz v14, :cond_1e

    .line 1508
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput-object v12, v7, v15

    .line 1511
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/Object;
    .end local v13    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v14    # "index":Ljava/lang/Integer;
    :cond_1e
    goto :goto_7

    .line 1514
    :cond_1f
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_25

    .line 1515
    const/4 v0, 0x0

    .line 1516
    .local v0, "hasNull":Z
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-boolean v9, v9, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlin:Z

    if-eqz v9, :cond_21

    .line 1517
    move v9, v5

    .local v9, "i":I
    :goto_8
    array-length v10, v7

    if-ge v9, v10, :cond_21

    .line 1518
    aget-object v10, v7, v9

    if-nez v10, :cond_20

    iget-object v10, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v10, :cond_20

    iget-object v10, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v10, v10

    if-ge v9, v10, :cond_20

    .line 1519
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v10, v10, v9

    .line 1520
    .local v10, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v12, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    if-ne v12, v13, :cond_21

    .line 1521
    const/4 v0, 0x1

    goto :goto_9

    .line 1517
    .end local v10    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_20
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1528
    .end local v0    # "hasNull":Z
    .local v9, "hasNull":Z
    :cond_21
    :goto_9
    move v9, v0

    if-eqz v9, :cond_24

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_24

    .line 1530
    :try_start_1
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .line 1532
    nop

    .local v5, "i":I
    :goto_a
    move v0, v5

    .end local v5    # "i":I
    .local v0, "i":I
    array-length v5, v7

    if-ge v0, v5, :cond_23

    .line 1533
    aget-object v5, v7, v0

    .line 1534
    .local v5, "param":Ljava/lang/Object;
    if-eqz v5, :cond_22

    iget-object v10, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v10, :cond_22

    iget-object v10, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v10, v10

    if-ge v0, v10, :cond_22

    .line 1535
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v10, v10, v0

    .line 1536
    .restart local v10    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v10, v3, v5}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1532
    .end local v5    # "param":Ljava/lang/Object;
    .end local v10    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_22
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .local v5, "i":I
    goto :goto_a

    .line 1542
    .end local v5    # "i":I
    :cond_23
    goto :goto_b

    .line 1539
    :catch_1
    move-exception v0

    .line 1540
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create instance error, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v12, v12, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 1541
    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1545
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    :try_start_2
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1549
    .end local v3    # "object":Ljava/lang/Object;
    .local v0, "object":Ljava/lang/Object;
    nop

    .line 1551
    move-object v3, v0

    .end local v0    # "object":Ljava/lang/Object;
    .end local v9    # "hasNull":Z
    .restart local v3    # "object":Ljava/lang/Object;
    :goto_b
    goto :goto_c

    .line 1546
    .restart local v9    # "hasNull":Z
    :catch_2
    move-exception v0

    .line 1547
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create instance error, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v12, v12, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 1548
    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1551
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "hasNull":Z
    :cond_25
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_26

    .line 1553
    :try_start_3
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v0

    .line 1556
    goto :goto_c

    .line 1554
    :catch_3
    move-exception v0

    .line 1555
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create factory method error, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1559
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_26
    :goto_c
    return-object v3
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    .line 288
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .locals 56
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .param p5, "features"    # I
    .param p6, "setFlags"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "I[I)TT;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    .line 395
    const-class v0, Lcom/alibaba/fastjson/JSON;

    if-eq v10, v0, :cond_a3

    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    if-ne v10, v0, :cond_0

    goto/16 :goto_54

    .line 399
    :cond_0
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object v12, v0

    check-cast v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 400
    .local v12, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v13

    .line 402
    .local v13, "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v2

    .line 403
    .local v2, "token":I
    const/16 v0, 0x8

    const/4 v14, 0x0

    const/16 v15, 0x10

    if-ne v2, v0, :cond_1

    .line 404
    invoke-virtual {v12, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 405
    return-object v14

    .line 408
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 409
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 412
    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v7, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_2
    move-object v7, v0

    move-object v3, v14

    .line 415
    .local v3, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    const/4 v4, 0x0

    .line 417
    .local v4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v0, 0xd

    if-ne v2, v0, :cond_5

    .line 418
    :try_start_0
    invoke-virtual {v12, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 419
    if-nez v1, :cond_3

    .line 420
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p4    # "object":Ljava/lang/Object;
    .local v0, "object":Ljava/lang/Object;
    goto :goto_0

    .line 422
    .end local v0    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_3
    move-object v0, v1

    .line 1055
    .end local p4    # "object":Ljava/lang/Object;
    .restart local v0    # "object":Ljava/lang/Object;
    :goto_0
    if-eqz v3, :cond_4

    .line 1056
    iput-object v0, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1058
    :cond_4
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 422
    return-object v0

    .line 1055
    .end local v0    # "object":Ljava/lang/Object;
    .end local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p4    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    move-object/from16 v29, p6

    move/from16 v52, v2

    .end local v2    # "token":I
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local p4    # "object":Ljava/lang/Object;
    .end local p6    # "setFlags":[I
    .local v1, "object":Ljava/lang/Object;
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .local v14, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v29, "setFlags":[I
    .local v50, "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .local v52, "token":I
    :goto_1
    move-object v14, v7

    move-object v5, v12

    move-object/from16 v50, v13

    goto/16 :goto_53

    .line 425
    .end local v1    # "object":Ljava/lang/Object;
    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v14    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v29    # "setFlags":[I
    .end local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v52    # "token":I
    .restart local v2    # "token":I
    .restart local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local p4    # "object":Ljava/lang/Object;
    .restart local p6    # "setFlags":[I
    :cond_5
    const/16 v5, 0xe

    if-ne v2, v5, :cond_9

    .line 426
    :try_start_1
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 427
    .local v0, "mask":I
    iget-object v6, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v6, v0

    if-nez v6, :cond_7

    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    .line 428
    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-nez v6, :cond_7

    and-int v6, p5, v0

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v6, 0x1

    .line 431
    .local v6, "isSupportArrayToBean":Z
    :goto_3
    if-eqz v6, :cond_9

    .line 432
    invoke-virtual/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1055
    if-eqz v3, :cond_8

    .line 1056
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1058
    :cond_8
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 432
    return-object v5

    .line 436
    .end local v0    # "mask":I
    .end local v6    # "isSupportArrayToBean":Z
    :cond_9
    const/16 v0, 0xc

    const/4 v6, 0x4

    if-eq v2, v0, :cond_19

    if-eq v2, v15, :cond_19

    .line 437
    :try_start_2
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isBlankInput()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_b

    .line 438
    nop

    .line 1055
    if-eqz v3, :cond_a

    .line 1056
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1058
    :cond_a
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 438
    return-object v14

    .line 441
    :cond_b
    if-ne v2, v6, :cond_10

    .line 442
    :try_start_3
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 443
    .local v15, "strVal":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 444
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 445
    nop

    .line 1055
    if-eqz v3, :cond_c

    .line 1056
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1058
    :cond_c
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 445
    return-object v14

    .line 448
    :cond_d
    :try_start_4
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v0, :cond_10

    .line 449
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v6

    array-length v14, v6

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v14, :cond_10

    aget-object v0, v6, v5

    move-object/from16 v21, v0

    .line 450
    .local v21, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Enum;

    move-object/from16 v22, v4

    move-object/from16 v4, v21

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v21    # "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v22, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_f

    .line 452
    :try_start_5
    invoke-static {v4, v15}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 453
    .local v0, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    nop

    .line 1055
    if-eqz v3, :cond_e

    .line 1056
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1058
    :cond_e
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 453
    return-object v0

    .line 454
    .end local v0    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :catch_0
    move-exception v0

    .line 449
    .end local v4    # "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v22

    goto :goto_4

    .line 462
    .end local v15    # "strVal":Ljava/lang/String;
    .end local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_10
    move-object/from16 v22, v4

    .end local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v4, 0xe

    if-ne v2, v4, :cond_12

    :try_start_6
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v0

    const/16 v4, 0x5d

    if-ne v0, v4, :cond_12

    .line 463
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 464
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 465
    nop

    .line 1055
    if-eqz v3, :cond_11

    .line 1056
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1058
    :cond_11
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 465
    const/4 v4, 0x0

    return-object v4

    .line 468
    :cond_12
    :try_start_7
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_17

    .line 470
    :try_start_8
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    .line 471
    .local v0, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_14

    .line 472
    const/4 v4, 0x2

    if-ne v2, v4, :cond_16

    .line 473
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->intValue()I

    move-result v4

    .line 474
    .local v4, "intValue":I
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 475
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v8, v13, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createFactoryInstance(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1055
    if-eqz v3, :cond_13

    .line 1056
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1058
    :cond_13
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 475
    return-object v5

    .line 477
    .end local v4    # "intValue":I
    :cond_14
    :try_start_9
    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_16

    .line 478
    const/4 v4, 0x4

    if-ne v2, v4, :cond_16

    .line 479
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, "stringVal":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 481
    invoke-direct {v8, v13, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createFactoryInstance(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1055
    if-eqz v3, :cond_15

    .line 1056
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1058
    :cond_15
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 481
    return-object v5

    .line 486
    .end local v0    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "stringVal":Ljava/lang/String;
    :cond_16
    goto :goto_5

    .line 484
    :catch_1
    move-exception v0

    .line 485
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_a
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 489
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_17
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error, expect {, actual "

    .line 490
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->tokenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pos "

    .line 492
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    .local v0, "buf":Ljava/lang/StringBuilder;
    instance-of v4, v11, Ljava/lang/String;

    if-eqz v4, :cond_18

    .line 496
    const-string v4, ", fieldName "

    .line 497
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 501
    :cond_18
    const-string v4, ", fastjson-version "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "1.2.70"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 506
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_19
    move-object/from16 v22, v4

    .end local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_b
    iget v0, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1a

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1a

    .line 507
    const/4 v6, 0x0

    :try_start_c
    iput v6, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    .line 510
    :cond_1a
    const/4 v6, 0x0

    :goto_6
    :try_start_d
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeKey:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1a

    move-object v14, v0

    .line 511
    .local v14, "typeKey":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "fieldIndex":I
    move v5, v0

    move v4, v2

    move v0, v6

    move-object/from16 v2, p6

    .line 512
    .end local p4    # "object":Ljava/lang/Object;
    .end local p6    # "setFlags":[I
    .local v0, "notMatchCount":I
    .restart local v1    # "object":Ljava/lang/Object;
    .local v2, "setFlags":[I
    .local v4, "token":I
    .local v5, "fieldIndex":I
    :goto_7
    const/16 v16, 0x0

    .line 513
    .local v16, "key":Ljava/lang/String;
    const/16 v18, 0x0

    .line 514
    .local v18, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    const/16 v20, 0x0

    .line 515
    .local v20, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    const/16 v21, 0x0

    .line 516
    .local v21, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v23, 0x0

    .line 517
    .local v23, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/16 v24, 0x0

    .line 518
    .local v24, "customDeserializer":Z
    :try_start_e
    iget-object v6, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_19

    if-ge v5, v6, :cond_1c

    if-ge v0, v15, :cond_1c

    .line 519
    :try_start_f
    iget-object v6, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v6, v6, v5

    .line 520
    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v6, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v15, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 521
    .end local v20    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v15, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move/from16 v26, v4

    :try_start_10
    iget-object v4, v15, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .end local v4    # "token":I
    .local v26, "token":I
    move-object/from16 v21, v4

    .line 522
    invoke-virtual {v15}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v4

    move-object/from16 v23, v4

    .line 523
    if-eqz v23, :cond_1b

    instance-of v4, v6, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v4, :cond_1b

    .line 524
    move-object v4, v6

    check-cast v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    iget-boolean v4, v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->customDeserilizer:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move/from16 v24, v4

    .line 528
    .end local v21    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v4, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v6, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v15, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v27, "fieldIndex":I
    :cond_1b
    move/from16 v27, v5

    move-object/from16 v4, v21

    move-object/from16 v5, v23

    move-object/from16 v55, v15

    move-object v15, v6

    move-object/from16 v6, v55

    goto :goto_8

    .line 1055
    .end local v0    # "notMatchCount":I
    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v16    # "key":Ljava/lang/String;
    .end local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v24    # "customDeserializer":Z
    .end local v27    # "fieldIndex":I
    :catchall_1
    move-exception v0

    move-object/from16 v29, v2

    move-object v14, v7

    move-object v5, v12

    move-object/from16 v50, v13

    move/from16 v52, v26

    goto/16 :goto_53

    .end local v26    # "token":I
    .local v4, "token":I
    :catchall_2
    move-exception v0

    move/from16 v26, v4

    move-object/from16 v29, v2

    move-object v14, v7

    move-object v5, v12

    move-object/from16 v50, v13

    move/from16 v52, v26

    .end local v4    # "token":I
    .restart local v26    # "token":I
    goto/16 :goto_53

    .line 528
    .end local v26    # "token":I
    .restart local v0    # "notMatchCount":I
    .restart local v4    # "token":I
    .local v5, "fieldIndex":I
    .restart local v14    # "typeKey":Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v20    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v21    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v23    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v24    # "customDeserializer":Z
    :cond_1c
    move/from16 v26, v4

    .end local v4    # "token":I
    .restart local v26    # "token":I
    move/from16 v27, v5

    move-object/from16 v15, v18

    move-object/from16 v6, v20

    move-object/from16 v4, v21

    move-object/from16 v5, v23

    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v20    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v21    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v4, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v27    # "fieldIndex":I
    :goto_8
    const/16 v18, 0x0

    .line 529
    .local v18, "matchField":Z
    const/16 v20, 0x0

    .line 531
    .local v20, "valueParsed":Z
    const/16 v21, 0x0

    .line 532
    .local v21, "fieldValue":Ljava/lang/Object;
    move-object/from16 v28, v1

    move-object/from16 v29, v2

    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "setFlags":[I
    .local v28, "object":Ljava/lang/Object;
    .restart local v29    # "setFlags":[I
    if-eqz v15, :cond_4c

    .line 533
    :try_start_11
    iget-object v1, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    .line 534
    .local v1, "name_chars":[C
    if-eqz v24, :cond_1e

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 535
    const/16 v18, 0x1

    .line 705
    .end local v1    # "name_chars":[C
    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v21    # "fieldValue":Ljava/lang/Object;
    .local v10, "fieldValue":Ljava/lang/Object;
    .local v38, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v39, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_1d
    :goto_9
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move-object/from16 v10, v21

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    goto/16 :goto_1f

    .line 536
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v1    # "name_chars":[C
    .restart local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v21    # "fieldValue":Ljava/lang/Object;
    :cond_1e
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, -0x2

    if-eq v4, v2, :cond_47

    const-class v2, Ljava/lang/Integer;

    if-ne v4, v2, :cond_1f

    .line 537
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    goto/16 :goto_19

    .line 551
    :cond_1f
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v4, v2, :cond_43

    const-class v2, Ljava/lang/Long;

    if-ne v4, v2, :cond_20

    .line 552
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    const/4 v4, 0x0

    const-wide/16 v32, 0x0

    goto/16 :goto_16

    .line 566
    :cond_20
    const-class v2, Ljava/lang/String;

    if-ne v4, v2, :cond_22

    .line 567
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldString([C)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    .line 569
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v2, :cond_21

    .line 570
    const/16 v18, 0x1

    .line 571
    const/16 v20, 0x1

    goto :goto_9

    .line 572
    :cond_21
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v2, v10, :cond_1d

    .line 573
    add-int/lit8 v0, v0, 0x1

    .line 574
    goto/16 :goto_1b

    .line 576
    :cond_22
    const-class v2, Ljava/util/Date;

    if-ne v4, v2, :cond_24

    iget-object v2, v6, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-nez v2, :cond_24

    .line 577
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDate([C)Ljava/util/Date;

    move-result-object v2

    move-object/from16 v21, v2

    .line 579
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v2, :cond_23

    .line 580
    const/16 v18, 0x1

    .line 581
    const/16 v20, 0x1

    goto :goto_9

    .line 582
    :cond_23
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v2, v10, :cond_1d

    .line 583
    add-int/lit8 v0, v0, 0x1

    .line 584
    goto/16 :goto_1b

    .line 586
    :cond_24
    const-class v2, Ljava/math/BigDecimal;

    if-ne v4, v2, :cond_26

    .line 587
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDecimal([C)Ljava/math/BigDecimal;

    move-result-object v2

    move-object/from16 v21, v2

    .line 589
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v2, :cond_25

    .line 590
    const/16 v18, 0x1

    .line 591
    const/16 v20, 0x1

    goto :goto_9

    .line 592
    :cond_25
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v2, v10, :cond_1d

    .line 593
    add-int/lit8 v0, v0, 0x1

    .line 594
    goto/16 :goto_1b

    .line 596
    :cond_26
    const-class v2, Ljava/math/BigInteger;

    if-ne v4, v2, :cond_28

    .line 597
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBigInteger([C)Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v21, v2

    .line 599
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v2, :cond_27

    .line 600
    const/16 v18, 0x1

    .line 601
    const/16 v20, 0x1

    goto/16 :goto_9

    .line 602
    :cond_27
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v2, v10, :cond_1d

    .line 603
    add-int/lit8 v0, v0, 0x1

    .line 604
    goto/16 :goto_1b

    .line 606
    :cond_28
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v4, v2, :cond_3f

    const-class v2, Ljava/lang/Boolean;

    if-ne v4, v2, :cond_29

    .line 607
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    const/4 v4, 0x0

    const-wide/16 v32, 0x0

    goto/16 :goto_11

    .line 622
    :cond_29
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v4, v2, :cond_3b

    const-class v2, Ljava/lang/Float;

    if-ne v4, v2, :cond_2a

    .line 623
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    const-wide/16 v32, 0x0

    goto/16 :goto_e

    .line 637
    :cond_2a
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v4, v2, :cond_37

    const-class v2, Ljava/lang/Double;

    if-ne v4, v2, :cond_2b

    goto/16 :goto_b

    .line 652
    :cond_2b
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 653
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v2, :cond_30

    if-eqz v5, :cond_2c

    .line 654
    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v2

    const-class v10, Ljava/lang/Void;

    if-ne v2, v10, :cond_30

    .line 656
    :cond_2c
    instance-of v2, v15, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v2, :cond_2f

    .line 657
    move-object v2, v15

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    iget-object v2, v2, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 658
    .local v2, "fieldValueDeserilizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-virtual {v8, v12, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexerBase;[CLcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)Ljava/lang/Enum;

    move-result-object v10

    move-object/from16 v21, v10

    .line 660
    iget v10, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v10, :cond_2d

    .line 661
    const/4 v10, 0x1

    .line 662
    .end local v18    # "matchField":Z
    .local v10, "matchField":Z
    const/16 v18, 0x1

    .line 667
    .end local v20    # "valueParsed":Z
    .local v18, "valueParsed":Z
    move/from16 v20, v18

    move/from16 v18, v10

    goto :goto_a

    .line 663
    .end local v10    # "matchField":Z
    .local v18, "matchField":Z
    .restart local v20    # "valueParsed":Z
    :cond_2d
    iget v10, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object/from16 v34, v2

    const/4 v2, -0x2

    if-ne v10, v2, :cond_2e

    .line 664
    .end local v2    # "fieldValueDeserilizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v34, "fieldValueDeserilizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    add-int/lit8 v0, v0, 0x1

    .line 665
    goto/16 :goto_1b

    .line 667
    .end local v34    # "fieldValueDeserilizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_2e
    :goto_a
    goto/16 :goto_9

    .line 705
    .end local v1    # "name_chars":[C
    :cond_2f
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    goto/16 :goto_1e

    .line 668
    .restart local v1    # "name_chars":[C
    :cond_30
    const-class v2, [I

    if-ne v4, v2, :cond_32

    .line 669
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldIntArray([C)[I

    move-result-object v2

    move-object/from16 v21, v2

    .line 671
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v2, :cond_31

    .line 672
    const/16 v18, 0x1

    .line 673
    const/16 v20, 0x1

    goto/16 :goto_9

    .line 674
    :cond_31
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v2, v10, :cond_1d

    .line 675
    add-int/lit8 v0, v0, 0x1

    .line 676
    goto/16 :goto_1b

    .line 678
    :cond_32
    const-class v2, [F

    if-ne v4, v2, :cond_34

    .line 679
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloatArray([C)[F

    move-result-object v2

    move-object/from16 v21, v2

    .line 681
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v2, :cond_33

    .line 682
    const/16 v18, 0x1

    .line 683
    const/16 v20, 0x1

    goto/16 :goto_9

    .line 684
    :cond_33
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v2, v10, :cond_1d

    .line 685
    add-int/lit8 v0, v0, 0x1

    .line 686
    goto/16 :goto_1b

    .line 688
    :cond_34
    const-class v2, [[F

    if-ne v4, v2, :cond_36

    .line 689
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloatArray2([C)[[F

    move-result-object v2

    move-object/from16 v21, v2

    .line 691
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v2, :cond_35

    .line 692
    const/16 v18, 0x1

    .line 693
    const/16 v20, 0x1

    goto/16 :goto_9

    .line 694
    :cond_35
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v2, v10, :cond_1d

    .line 695
    add-int/lit8 v0, v0, 0x1

    .line 696
    goto/16 :goto_1b

    .line 698
    :cond_36
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 699
    const/16 v18, 0x1

    .end local v1    # "name_chars":[C
    goto/16 :goto_9

    .line 638
    .restart local v1    # "name_chars":[C
    :cond_37
    :goto_b
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDouble([C)D

    move-result-wide v34

    move-wide/from16 v36, v34

    .line 639
    .local v36, "doubleVal":D
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move-wide/from16 v4, v36

    const-wide/16 v32, 0x0

    cmpl-double v2, v4, v32

    .end local v5    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v36    # "doubleVal":D
    .local v4, "doubleVal":D
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v2, :cond_38

    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, 0x5

    if-ne v2, v10, :cond_38

    .line 640
    const/4 v2, 0x0

    goto :goto_c

    .line 642
    :cond_38
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 645
    .end local v21    # "fieldValue":Ljava/lang/Object;
    .local v2, "fieldValue":Ljava/lang/Object;
    :goto_c
    move-object/from16 v21, v2

    .end local v2    # "fieldValue":Ljava/lang/Object;
    .restart local v21    # "fieldValue":Ljava/lang/Object;
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v2, :cond_39

    .line 646
    const/4 v2, 0x1

    .line 647
    .end local v18    # "matchField":Z
    .local v2, "matchField":Z
    const/4 v10, 0x1

    .line 652
    .end local v20    # "valueParsed":Z
    .local v10, "valueParsed":Z
    move/from16 v18, v2

    move/from16 v20, v10

    goto :goto_d

    .line 648
    .end local v2    # "matchField":Z
    .end local v10    # "valueParsed":Z
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    :cond_39
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v2, v10, :cond_3a

    .line 649
    add-int/lit8 v0, v0, 0x1

    .line 650
    goto/16 :goto_1b

    .line 652
    .end local v4    # "doubleVal":D
    :cond_3a
    :goto_d
    goto/16 :goto_15

    .line 623
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v4, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_3b
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    const-wide/16 v32, 0x0

    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_e
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloat([C)F

    move-result v2

    .line 624
    .local v2, "floatVal":F
    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-nez v5, :cond_3c

    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, 0x5

    if-ne v5, v10, :cond_3c

    .line 625
    const/4 v5, 0x0

    goto :goto_f

    .line 627
    :cond_3c
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 630
    .end local v21    # "fieldValue":Ljava/lang/Object;
    .local v5, "fieldValue":Ljava/lang/Object;
    :goto_f
    move-object/from16 v21, v5

    .end local v5    # "fieldValue":Ljava/lang/Object;
    .restart local v21    # "fieldValue":Ljava/lang/Object;
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v5, :cond_3d

    .line 631
    const/4 v5, 0x1

    .line 632
    .end local v18    # "matchField":Z
    .local v5, "matchField":Z
    const/4 v10, 0x1

    .line 637
    .end local v20    # "valueParsed":Z
    .restart local v10    # "valueParsed":Z
    move/from16 v18, v5

    move/from16 v20, v10

    goto :goto_10

    .line 633
    .end local v5    # "matchField":Z
    .end local v10    # "valueParsed":Z
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    :cond_3d
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v5, v10, :cond_3e

    .line 634
    add-int/lit8 v0, v0, 0x1

    .line 635
    goto/16 :goto_1b

    .line 637
    .end local v2    # "floatVal":F
    :cond_3e
    :goto_10
    goto :goto_15

    .line 607
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_3f
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    const/4 v4, 0x0

    const-wide/16 v32, 0x0

    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_11
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBoolean([C)Z

    move-result v2

    .line 609
    .local v2, "booleanVal":Z
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, 0x5

    if-ne v5, v10, :cond_40

    .line 610
    const/4 v5, 0x0

    .line 615
    .end local v21    # "fieldValue":Ljava/lang/Object;
    .local v5, "fieldValue":Ljava/lang/Object;
    :goto_12
    move-object/from16 v21, v5

    goto :goto_13

    .line 612
    .end local v5    # "fieldValue":Ljava/lang/Object;
    .restart local v21    # "fieldValue":Ljava/lang/Object;
    :cond_40
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_12

    .line 615
    :goto_13
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v5, :cond_41

    .line 616
    const/4 v5, 0x1

    .line 617
    .end local v18    # "matchField":Z
    .local v5, "matchField":Z
    const/4 v10, 0x1

    .line 622
    .end local v20    # "valueParsed":Z
    .restart local v10    # "valueParsed":Z
    move/from16 v18, v5

    move/from16 v20, v10

    goto :goto_14

    .line 618
    .end local v5    # "matchField":Z
    .end local v10    # "valueParsed":Z
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    :cond_41
    iget v5, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v5, v10, :cond_42

    .line 619
    add-int/lit8 v0, v0, 0x1

    .line 620
    goto/16 :goto_1b

    .line 622
    .end local v2    # "booleanVal":Z
    :cond_42
    :goto_14
    nop

    .line 705
    .end local v1    # "name_chars":[C
    .end local v21    # "fieldValue":Ljava/lang/Object;
    .local v10, "fieldValue":Ljava/lang/Object;
    :goto_15
    move-object/from16 v10, v21

    const-wide/16 v30, 0x0

    goto/16 :goto_1f

    .line 552
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v1    # "name_chars":[C
    .restart local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v21    # "fieldValue":Ljava/lang/Object;
    :cond_43
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    const/4 v4, 0x0

    const-wide/16 v32, 0x0

    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_16
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldLong([C)J

    move-result-wide v34

    move-wide/from16 v40, v34

    .line 553
    .local v40, "longVal":J
    move-wide/from16 v4, v40

    const-wide/16 v30, 0x0

    cmp-long v2, v4, v30

    .end local v40    # "longVal":J
    .local v4, "longVal":J
    if-nez v2, :cond_44

    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, 0x5

    if-ne v2, v10, :cond_44

    .line 554
    const/4 v2, 0x0

    goto :goto_17

    .line 556
    :cond_44
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 559
    .end local v21    # "fieldValue":Ljava/lang/Object;
    .local v2, "fieldValue":Ljava/lang/Object;
    :goto_17
    move-object/from16 v21, v2

    .end local v2    # "fieldValue":Ljava/lang/Object;
    .restart local v21    # "fieldValue":Ljava/lang/Object;
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v2, :cond_45

    .line 560
    const/16 v18, 0x1

    .line 561
    const/4 v2, 0x1

    .line 566
    .end local v20    # "valueParsed":Z
    .local v2, "valueParsed":Z
    move/from16 v20, v2

    goto :goto_18

    .line 562
    .end local v2    # "valueParsed":Z
    .restart local v20    # "valueParsed":Z
    :cond_45
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v2, v10, :cond_46

    .line 563
    add-int/lit8 v0, v0, 0x1

    .line 564
    goto :goto_1b

    .line 566
    .end local v4    # "longVal":J
    :cond_46
    :goto_18
    goto :goto_1e

    .line 537
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v4, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_47
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_19
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldInt([C)I

    move-result v2

    .line 538
    .local v2, "intVal":I
    if-nez v2, :cond_48

    iget v4, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_48

    .line 539
    const/4 v4, 0x0

    goto :goto_1a

    .line 541
    :cond_48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 544
    .end local v21    # "fieldValue":Ljava/lang/Object;
    .local v4, "fieldValue":Ljava/lang/Object;
    :goto_1a
    move-object/from16 v21, v4

    .end local v4    # "fieldValue":Ljava/lang/Object;
    .restart local v21    # "fieldValue":Ljava/lang/Object;
    iget v4, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_49

    .line 545
    const/16 v18, 0x1

    .line 546
    const/4 v4, 0x1

    .line 551
    .end local v20    # "valueParsed":Z
    .local v4, "valueParsed":Z
    move/from16 v20, v4

    goto :goto_1c

    .line 547
    .end local v4    # "valueParsed":Z
    .restart local v20    # "valueParsed":Z
    :cond_49
    iget v4, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    const/4 v5, -0x2

    if-ne v4, v5, :cond_4b

    .line 548
    add-int/lit8 v0, v0, 0x1

    .line 549
    nop

    .line 511
    .end local v1    # "name_chars":[C
    .end local v2    # "intVal":I
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v21    # "fieldValue":Ljava/lang/Object;
    .end local v24    # "customDeserializer":Z
    .end local v27    # "fieldIndex":I
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .local v14, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v16, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v26, "fieldIndex":I
    .local v49, "token":I
    .restart local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .local v51, "typeKey":Ljava/lang/String;
    :cond_4a
    :goto_1b
    move-object/from16 v16, v3

    move-object v5, v12

    move-object/from16 v50, v13

    move-object/from16 v51, v14

    move/from16 v49, v26

    goto/16 :goto_21

    .line 551
    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v49    # "token":I
    .end local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v51    # "typeKey":Ljava/lang/String;
    .restart local v1    # "name_chars":[C
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .local v14, "typeKey":Ljava/lang/String;
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v16, "key":Ljava/lang/String;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v21    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "customDeserializer":Z
    .local v26, "token":I
    .restart local v27    # "fieldIndex":I
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_4b
    :goto_1c
    goto :goto_1e

    .line 1055
    .end local v0    # "notMatchCount":I
    .end local v1    # "name_chars":[C
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v16    # "key":Ljava/lang/String;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v21    # "fieldValue":Ljava/lang/Object;
    .end local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v24    # "customDeserializer":Z
    .end local v27    # "fieldIndex":I
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :catchall_3
    move-exception v0

    move-object v14, v7

    move-object v5, v12

    move-object/from16 v50, v13

    move/from16 v52, v26

    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v26    # "token":I
    .end local v28    # "object":Ljava/lang/Object;
    .local v1, "object":Ljava/lang/Object;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .local v14, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v52    # "token":I
    :goto_1d
    move-object/from16 v1, v28

    goto/16 :goto_53

    .line 705
    .end local v1    # "object":Ljava/lang/Object;
    .end local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v52    # "token":I
    .restart local v0    # "notMatchCount":I
    .local v4, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .local v14, "typeKey":Ljava/lang/String;
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v21    # "fieldValue":Ljava/lang/Object;
    .restart local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24    # "customDeserializer":Z
    .restart local v26    # "token":I
    .restart local v27    # "fieldIndex":I
    .restart local v28    # "object":Ljava/lang/Object;
    :cond_4c
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v21    # "fieldValue":Ljava/lang/Object;
    .restart local v10    # "fieldValue":Ljava/lang/Object;
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_1e
    move-object/from16 v10, v21

    :goto_1f
    if-nez v18, :cond_69

    .line 706
    :try_start_12
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 708
    .end local v16    # "key":Ljava/lang/String;
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_4e

    .line 709
    :try_start_13
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 710
    .end local v26    # "token":I
    .local v2, "token":I
    const/16 v4, 0xd

    if-ne v2, v4, :cond_4d

    .line 711
    const/16 v4, 0x10

    :try_start_14
    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 712
    nop

    .line 895
    move-object/from16 v50, v13

    move-object/from16 v51, v14

    move-object/from16 v1, v22

    move-object/from16 v21, v28

    move-object/from16 v10, p2

    .end local v0    # "notMatchCount":I
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v24    # "customDeserializer":Z
    .end local v27    # "fieldIndex":I
    .end local v28    # "object":Ljava/lang/Object;
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v14, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v21, "object":Ljava/lang/Object;
    .restart local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v51    # "typeKey":Ljava/lang/String;
    :goto_20
    const/4 v13, 0x0

    move-object v14, v7

    goto/16 :goto_3c

    .line 1055
    .end local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v21    # "object":Ljava/lang/Object;
    .end local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v51    # "typeKey":Ljava/lang/String;
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v28    # "object":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move/from16 v52, v2

    move-object v14, v7

    move-object v5, v12

    move-object/from16 v50, v13

    goto :goto_1d

    .line 714
    .restart local v0    # "notMatchCount":I
    .local v1, "key":Ljava/lang/String;
    .restart local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v10    # "fieldValue":Ljava/lang/Object;
    .local v14, "typeKey":Ljava/lang/String;
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24    # "customDeserializer":Z
    .restart local v27    # "fieldIndex":I
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_4d
    const/16 v4, 0x10

    if-ne v2, v4, :cond_4f

    .line 715
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eqz v4, :cond_4f

    .line 716
    nop

    .line 511
    move/from16 v49, v2

    move-object/from16 v16, v3

    move-object v5, v12

    move-object/from16 v50, v13

    move-object/from16 v51, v14

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "token":I
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v24    # "customDeserializer":Z
    .end local v27    # "fieldIndex":I
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .local v14, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v16, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v26, "fieldIndex":I
    .restart local v49    # "token":I
    .restart local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v51    # "typeKey":Ljava/lang/String;
    :goto_21
    move/from16 v26, v27

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/16 v3, 0xd

    :goto_22
    const/4 v4, 0x0

    move-object v14, v7

    const/4 v7, 0x1

    goto/16 :goto_52

    .line 721
    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v16    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v49    # "token":I
    .end local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v51    # "typeKey":Ljava/lang/String;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v10    # "fieldValue":Ljava/lang/Object;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .local v14, "typeKey":Ljava/lang/String;
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v24    # "customDeserializer":Z
    .local v26, "token":I
    .restart local v27    # "fieldIndex":I
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_4e
    move/from16 v2, v26

    .end local v26    # "token":I
    .restart local v2    # "token":I
    :cond_4f
    :try_start_15
    const-string v4, "$ref"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    if-ne v4, v1, :cond_5d

    if-eqz v7, :cond_5d

    .line 722
    const/4 v4, 0x4

    :try_start_16
    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 723
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    move v2, v5

    .line 724
    if-ne v2, v4, :cond_5c

    .line 725
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 726
    .local v4, "ref":Ljava/lang/String;
    const-string v5, "@"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 727
    iget-object v5, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 768
    .end local v28    # "object":Ljava/lang/Object;
    .local v5, "object":Ljava/lang/Object;
    move/from16 v42, v0

    .end local v0    # "notMatchCount":I
    .end local v4    # "ref":Ljava/lang/String;
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .local v42, "notMatchCount":I
    .local v45, "fieldValue":Ljava/lang/Object;
    .local v46, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_23
    move-object/from16 v46, v6

    move-object/from16 v45, v10

    goto/16 :goto_2a

    .line 728
    .end local v5    # "object":Ljava/lang/Object;
    .end local v42    # "notMatchCount":I
    .end local v45    # "fieldValue":Ljava/lang/Object;
    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v0    # "notMatchCount":I
    .restart local v4    # "ref":Ljava/lang/String;
    .restart local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v10    # "fieldValue":Ljava/lang/Object;
    .restart local v28    # "object":Ljava/lang/Object;
    :cond_50
    const-string v5, ".."

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 729
    iget-object v5, v7, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 730
    .local v5, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    move/from16 v42, v0

    iget-object v0, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .end local v0    # "notMatchCount":I
    .restart local v42    # "notMatchCount":I
    if-eqz v0, :cond_51

    .line 731
    iget-object v0, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .end local v28    # "object":Ljava/lang/Object;
    .local v0, "object":Ljava/lang/Object;
    goto :goto_24

    .line 733
    .end local v0    # "object":Ljava/lang/Object;
    .restart local v28    # "object":Ljava/lang/Object;
    :cond_51
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v0, v5, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 734
    move-object/from16 v43, v5

    const/4 v5, 0x1

    iput v5, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 736
    .end local v5    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    move-object/from16 v0, v28

    .line 768
    .end local v28    # "object":Ljava/lang/Object;
    .restart local v0    # "object":Ljava/lang/Object;
    :goto_24
    move-object v5, v0

    goto :goto_23

    .line 736
    .end local v42    # "notMatchCount":I
    .local v0, "notMatchCount":I
    .restart local v28    # "object":Ljava/lang/Object;
    :cond_52
    move/from16 v42, v0

    .end local v0    # "notMatchCount":I
    .restart local v42    # "notMatchCount":I
    const-string v0, "$"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 737
    move-object v0, v7

    .line 738
    .local v0, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_25
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v5, :cond_53

    .line 739
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object v0, v5

    goto :goto_25

    .line 742
    :cond_53
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v5, :cond_54

    .line 743
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 748
    .end local v28    # "object":Ljava/lang/Object;
    .local v5, "object":Ljava/lang/Object;
    move-object/from16 v28, v5

    goto :goto_26

    .line 745
    .end local v5    # "object":Ljava/lang/Object;
    .restart local v28    # "object":Ljava/lang/Object;
    :cond_54
    new-instance v5, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v5, v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 746
    const/4 v5, 0x1

    iput v5, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 748
    .end local v0    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_26
    nop

    .line 768
    move-object/from16 v46, v6

    move-object/from16 v45, v10

    .end local v4    # "ref":Ljava/lang/String;
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .end local v28    # "object":Ljava/lang/Object;
    .restart local v5    # "object":Ljava/lang/Object;
    .restart local v45    # "fieldValue":Ljava/lang/Object;
    .restart local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_27
    move-object/from16 v5, v28

    goto :goto_2a

    .line 749
    .end local v5    # "object":Ljava/lang/Object;
    .end local v45    # "fieldValue":Ljava/lang/Object;
    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v4    # "ref":Ljava/lang/String;
    .restart local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v10    # "fieldValue":Ljava/lang/Object;
    .restart local v28    # "object":Ljava/lang/Object;
    :cond_55
    const/16 v0, 0x5c

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_58

    .line 750
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    .local v5, "buf":Ljava/lang/StringBuilder;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_28
    move/from16 v44, v25

    .end local v25    # "i":I
    .local v44, "i":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    move-object/from16 v45, v10

    move/from16 v10, v44

    if-ge v10, v0, :cond_57

    .line 752
    .end local v44    # "i":I
    .local v10, "i":I
    .restart local v45    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 753
    .local v0, "ch":C
    move-object/from16 v46, v6

    const/16 v6, 0x5c

    if-ne v0, v6, :cond_56

    .line 754
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v0, v16

    .line 756
    :cond_56
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 751
    .end local v0    # "ch":C
    const/16 v16, 0x1

    add-int/lit8 v25, v10, 0x1

    .end local v10    # "i":I
    .restart local v25    # "i":I
    move v0, v6

    move-object/from16 v10, v45

    move-object/from16 v6, v46

    goto :goto_28

    .line 758
    .end local v25    # "i":I
    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_57
    move-object/from16 v46, v6

    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .end local v5    # "buf":Ljava/lang/StringBuilder;
    goto :goto_29

    .line 760
    .end local v45    # "fieldValue":Ljava/lang/Object;
    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v10, "fieldValue":Ljava/lang/Object;
    :cond_58
    move-object/from16 v46, v6

    move-object/from16 v45, v10

    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .restart local v45    # "fieldValue":Ljava/lang/Object;
    .restart local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_29
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 761
    .local v0, "refObj":Ljava/lang/Object;
    if-eqz v0, :cond_59

    .line 762
    move-object v5, v0

    .end local v28    # "object":Ljava/lang/Object;
    .local v5, "object":Ljava/lang/Object;
    goto :goto_2a

    .line 764
    .end local v5    # "object":Ljava/lang/Object;
    .restart local v28    # "object":Ljava/lang/Object;
    :cond_59
    new-instance v5, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v5, v7, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 765
    const/4 v5, 0x1

    iput v5, v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .end local v0    # "refObj":Ljava/lang/Object;
    .end local v4    # "ref":Ljava/lang/String;
    goto :goto_27

    .line 768
    .end local v28    # "object":Ljava/lang/Object;
    .restart local v5    # "object":Ljava/lang/Object;
    :goto_2a
    nop

    .line 772
    const/16 v0, 0xd

    :try_start_17
    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 773
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    if-ne v4, v0, :cond_5b

    .line 776
    const/16 v0, 0x10

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 778
    invoke-virtual {v9, v7, v5, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 780
    nop

    .line 1055
    if-eqz v3, :cond_5a

    .line 1056
    iput-object v5, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1058
    :cond_5a
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 780
    return-object v5

    .line 774
    :cond_5b
    :try_start_18
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "illegal ref"

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 1055
    .end local v1    # "key":Ljava/lang/String;
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v24    # "customDeserializer":Z
    .end local v27    # "fieldIndex":I
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v42    # "notMatchCount":I
    .end local v45    # "fieldValue":Ljava/lang/Object;
    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :catchall_5
    move-exception v0

    move/from16 v52, v2

    move-object v1, v5

    goto/16 :goto_1

    .line 769
    .end local v5    # "object":Ljava/lang/Object;
    .local v0, "notMatchCount":I
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v10    # "fieldValue":Ljava/lang/Object;
    .restart local v14    # "typeKey":Ljava/lang/String;
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24    # "customDeserializer":Z
    .restart local v27    # "fieldIndex":I
    .restart local v28    # "object":Ljava/lang/Object;
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_5c
    move/from16 v42, v0

    move-object/from16 v46, v6

    move-object/from16 v45, v10

    .end local v0    # "notMatchCount":I
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .restart local v42    # "notMatchCount":I
    .restart local v45    # "fieldValue":Ljava/lang/Object;
    .restart local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :try_start_19
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal ref, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    .end local v42    # "notMatchCount":I
    .end local v45    # "fieldValue":Ljava/lang/Object;
    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v0    # "notMatchCount":I
    .restart local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v10    # "fieldValue":Ljava/lang/Object;
    :cond_5d
    move/from16 v42, v0

    move-object/from16 v46, v6

    move-object/from16 v45, v10

    .end local v0    # "notMatchCount":I
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .restart local v42    # "notMatchCount":I
    .restart local v45    # "fieldValue":Ljava/lang/Object;
    .restart local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    if-eqz v14, :cond_5e

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    if-nez v0, :cond_5f

    :cond_5e
    :try_start_1a
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v0, v1, :cond_68

    .line 785
    :cond_5f
    const/4 v4, 0x4

    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 786
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v0

    if-ne v0, v4, :cond_67

    .line 787
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "typeName":Ljava/lang/String;
    const/16 v4, 0x10

    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 790
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 791
    move-object/from16 v47, v1

    move/from16 v49, v2

    move-object/from16 v2, v28

    move-object/from16 v10, p2

    goto/16 :goto_2e

    .line 799
    :cond_60
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v13, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 800
    .local v4, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v5, 0x0

    .line 802
    .local v5, "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_61

    .line 803
    move-object/from16 v10, p2

    :try_start_1b
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 804
    .local v6, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v47, v1

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getFeatures()I

    move-result v1

    .end local v1    # "key":Ljava/lang/String;
    .local v47, "key":Ljava/lang/String;
    invoke-virtual {v13, v0, v6, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    move-object v5, v1

    .line 805
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    move-object v4, v1

    .end local v6    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2b

    .line 808
    .end local v47    # "key":Ljava/lang/String;
    .restart local v1    # "key":Ljava/lang/String;
    :cond_61
    move-object/from16 v47, v1

    move-object/from16 v10, p2

    .end local v1    # "key":Ljava/lang/String;
    .restart local v47    # "key":Ljava/lang/String;
    :goto_2b
    :try_start_1c
    invoke-interface {v4, v9, v5, v11}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 809
    .local v1, "typedObject":Ljava/lang/Object;
    instance-of v6, v4, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    if-eqz v6, :cond_62

    .line 810
    :try_start_1d
    move-object v6, v4

    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 811
    .local v6, "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v14, :cond_62

    .line 812
    invoke-virtual {v6, v14}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v16
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    move-object/from16 v48, v16

    .line 813
    .local v48, "typeKeyFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move/from16 v49, v2

    move-object/from16 v2, v48

    if-eqz v2, :cond_63

    .line 814
    .end local v48    # "typeKeyFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v2, "typeKeyFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v49    # "token":I
    :try_start_1e
    invoke-virtual {v2, v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .end local v2    # "typeKeyFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v6    # "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    goto :goto_2c

    .line 1055
    .end local v0    # "typeName":Ljava/lang/String;
    .end local v1    # "typedObject":Ljava/lang/Object;
    .end local v4    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v5    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v24    # "customDeserializer":Z
    .end local v27    # "fieldIndex":I
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v42    # "notMatchCount":I
    .end local v45    # "fieldValue":Ljava/lang/Object;
    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v47    # "key":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object v14, v7

    move-object v5, v12

    move-object/from16 v50, v13

    move-object/from16 v1, v28

    goto/16 :goto_32

    .end local v49    # "token":I
    .local v2, "token":I
    :catchall_7
    move-exception v0

    move/from16 v49, v2

    move-object v14, v7

    move-object v5, v12

    move-object/from16 v50, v13

    move-object/from16 v1, v28

    move/from16 v52, v49

    .end local v2    # "token":I
    .restart local v49    # "token":I
    goto/16 :goto_53

    .line 818
    .end local v49    # "token":I
    .restart local v0    # "typeName":Ljava/lang/String;
    .restart local v1    # "typedObject":Ljava/lang/Object;
    .restart local v2    # "token":I
    .restart local v4    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v5    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "typeKey":Ljava/lang/String;
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24    # "customDeserializer":Z
    .restart local v27    # "fieldIndex":I
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v42    # "notMatchCount":I
    .restart local v45    # "fieldValue":Ljava/lang/Object;
    .restart local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v47    # "key":Ljava/lang/String;
    :cond_62
    move/from16 v49, v2

    .line 1055
    .end local v2    # "token":I
    .restart local v49    # "token":I
    :cond_63
    :goto_2c
    if-eqz v3, :cond_64

    .line 1056
    move-object/from16 v2, v28

    iput-object v2, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_2d

    .line 1058
    :cond_64
    move-object/from16 v2, v28

    .end local v28    # "object":Ljava/lang/Object;
    .local v2, "object":Ljava/lang/Object;
    :goto_2d
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 818
    return-object v1

    .line 791
    .end local v4    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v5    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v47    # "key":Ljava/lang/String;
    .end local v49    # "token":I
    .local v1, "key":Ljava/lang/String;
    .local v2, "token":I
    .restart local v28    # "object":Ljava/lang/Object;
    :cond_65
    move-object/from16 v47, v1

    move/from16 v49, v2

    move-object/from16 v2, v28

    move-object/from16 v10, p2

    .end local v1    # "key":Ljava/lang/String;
    .end local v28    # "object":Ljava/lang/Object;
    .local v2, "object":Ljava/lang/Object;
    .restart local v47    # "key":Ljava/lang/String;
    .restart local v49    # "token":I
    :goto_2e
    :try_start_1f
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_66

    .line 792
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 793
    nop

    .line 895
    move-object/from16 v21, v2

    move-object/from16 v50, v13

    move-object/from16 v51, v14

    move-object/from16 v1, v22

    move/from16 v2, v49

    goto/16 :goto_20

    .line 511
    .end local v0    # "typeName":Ljava/lang/String;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v24    # "customDeserializer":Z
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v45    # "fieldValue":Ljava/lang/Object;
    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v47    # "key":Ljava/lang/String;
    :cond_66
    move-object/from16 v28, v2

    move-object/from16 v16, v3

    move v3, v4

    move-object v5, v12

    move-object/from16 v50, v13

    move-object/from16 v51, v14

    move/from16 v26, v27

    move/from16 v0, v42

    const/16 v1, 0x10

    const/4 v2, 0x0

    goto/16 :goto_22

    .line 820
    .end local v49    # "token":I
    .restart local v1    # "key":Ljava/lang/String;
    .local v2, "token":I
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v24    # "customDeserializer":Z
    .restart local v28    # "object":Ljava/lang/Object;
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v45    # "fieldValue":Ljava/lang/Object;
    .restart local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_67
    move-object/from16 v47, v1

    move/from16 v49, v2

    move-object/from16 v2, v28

    move-object/from16 v10, p2

    .end local v1    # "key":Ljava/lang/String;
    .end local v28    # "object":Ljava/lang/Object;
    .local v2, "object":Ljava/lang/Object;
    .restart local v47    # "key":Ljava/lang/String;
    .restart local v49    # "token":I
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    .end local v47    # "key":Ljava/lang/String;
    .end local v49    # "token":I
    .restart local v1    # "key":Ljava/lang/String;
    .local v2, "token":I
    .restart local v28    # "object":Ljava/lang/Object;
    :cond_68
    move-object/from16 v47, v1

    move/from16 v49, v2

    move-object/from16 v2, v28

    move-object/from16 v10, p2

    .end local v1    # "key":Ljava/lang/String;
    .end local v28    # "object":Ljava/lang/Object;
    .local v2, "object":Ljava/lang/Object;
    .restart local v47    # "key":Ljava/lang/String;
    .restart local v49    # "token":I
    goto :goto_2f

    .line 1055
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v24    # "customDeserializer":Z
    .end local v27    # "fieldIndex":I
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v42    # "notMatchCount":I
    .end local v45    # "fieldValue":Ljava/lang/Object;
    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v47    # "key":Ljava/lang/String;
    .end local v49    # "token":I
    .local v2, "token":I
    .restart local v28    # "object":Ljava/lang/Object;
    :catchall_8
    move-exception v0

    move/from16 v49, v2

    move-object/from16 v2, v28

    move-object v1, v2

    move-object v14, v7

    move-object v5, v12

    move-object/from16 v50, v13

    move/from16 v52, v49

    .end local v28    # "object":Ljava/lang/Object;
    .local v2, "object":Ljava/lang/Object;
    .restart local v49    # "token":I
    goto/16 :goto_53

    .end local v2    # "object":Ljava/lang/Object;
    .end local v49    # "token":I
    .restart local v26    # "token":I
    .restart local v28    # "object":Ljava/lang/Object;
    :catchall_9
    move-exception v0

    move-object/from16 v2, v28

    move-object v1, v2

    move-object v14, v7

    move-object v5, v12

    move-object/from16 v50, v13

    move/from16 v52, v26

    .end local v28    # "object":Ljava/lang/Object;
    .restart local v2    # "object":Ljava/lang/Object;
    goto/16 :goto_53

    .line 825
    .end local v2    # "object":Ljava/lang/Object;
    .local v0, "notMatchCount":I
    .local v6, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v10    # "fieldValue":Ljava/lang/Object;
    .restart local v14    # "typeKey":Ljava/lang/String;
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v16, "key":Ljava/lang/String;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24    # "customDeserializer":Z
    .restart local v27    # "fieldIndex":I
    .restart local v28    # "object":Ljava/lang/Object;
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_69
    move/from16 v42, v0

    move-object/from16 v46, v6

    move-object/from16 v45, v10

    move-object/from16 v2, v28

    move-object/from16 v10, p2

    move-object/from16 v47, v16

    move/from16 v49, v26

    .end local v0    # "notMatchCount":I
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .end local v16    # "key":Ljava/lang/String;
    .end local v26    # "token":I
    .end local v28    # "object":Ljava/lang/Object;
    .restart local v2    # "object":Ljava/lang/Object;
    .restart local v42    # "notMatchCount":I
    .restart local v45    # "fieldValue":Ljava/lang/Object;
    .restart local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v47    # "key":Ljava/lang/String;
    .restart local v49    # "token":I
    :goto_2f
    if-nez v2, :cond_6c

    if-nez v22, :cond_6c

    .line 826
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    move-object v1, v0

    .line 827
    .end local v2    # "object":Ljava/lang/Object;
    .local v1, "object":Ljava/lang/Object;
    if-nez v1, :cond_6a

    .line 828
    :try_start_20
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 830
    .end local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v0, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v22, v0

    goto :goto_30

    .line 1055
    .end local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v24    # "customDeserializer":Z
    .end local v27    # "fieldIndex":I
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v42    # "notMatchCount":I
    .end local v45    # "fieldValue":Ljava/lang/Object;
    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v47    # "key":Ljava/lang/String;
    :catchall_a
    move-exception v0

    goto :goto_31

    .line 830
    .restart local v14    # "typeKey":Ljava/lang/String;
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24    # "customDeserializer":Z
    .restart local v27    # "fieldIndex":I
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v42    # "notMatchCount":I
    .restart local v45    # "fieldValue":Ljava/lang/Object;
    .restart local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v47    # "key":Ljava/lang/String;
    :cond_6a
    :goto_30
    invoke-virtual {v9, v7, v1, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    move-object v3, v0

    .line 831
    if-nez v29, :cond_6b

    .line 832
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x20

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v0, v0, [I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 836
    .end local v29    # "setFlags":[I
    .local v0, "setFlags":[I
    move-object/from16 v29, v0

    .end local v1    # "object":Ljava/lang/Object;
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v0, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v6, "object":Ljava/lang/Object;
    .local v16, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v29    # "setFlags":[I
    :cond_6b
    move-object v6, v1

    goto :goto_33

    .line 1055
    .end local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "object":Ljava/lang/Object;
    .end local v14    # "typeKey":Ljava/lang/String;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v16    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v24    # "customDeserializer":Z
    .end local v27    # "fieldIndex":I
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v42    # "notMatchCount":I
    .end local v45    # "fieldValue":Ljava/lang/Object;
    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v47    # "key":Ljava/lang/String;
    .restart local v2    # "object":Ljava/lang/Object;
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :catchall_b
    move-exception v0

    move-object v1, v2

    .end local v2    # "object":Ljava/lang/Object;
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v49    # "token":I
    .restart local v1    # "object":Ljava/lang/Object;
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .local v14, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v52    # "token":I
    :goto_31
    move-object v14, v7

    move-object v5, v12

    move-object/from16 v50, v13

    :goto_32
    move/from16 v52, v49

    goto/16 :goto_53

    .line 836
    .end local v1    # "object":Ljava/lang/Object;
    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v52    # "token":I
    .restart local v2    # "object":Ljava/lang/Object;
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .local v14, "typeKey":Ljava/lang/String;
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24    # "customDeserializer":Z
    .restart local v27    # "fieldIndex":I
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v42    # "notMatchCount":I
    .restart local v45    # "fieldValue":Ljava/lang/Object;
    .restart local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v47    # "key":Ljava/lang/String;
    .restart local v49    # "token":I
    :cond_6c
    move-object v6, v2

    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v22    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "object":Ljava/lang/Object;
    .restart local v16    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_33
    move-object/from16 v16, v3

    move-object/from16 v0, v22

    if-eqz v18, :cond_73

    .line 837
    if-nez v20, :cond_6d

    .line 838
    :try_start_21
    invoke-virtual {v15, v9, v6, v10, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 881
    move-object/from16 v21, v6

    move-object/from16 v50, v13

    move-object/from16 v51, v14

    move/from16 v26, v27

    move-object/from16 v22, v38

    move-object/from16 v28, v39

    move-object/from16 v23, v45

    move-object/from16 v17, v46

    .end local v6    # "object":Ljava/lang/Object;
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v27    # "fieldIndex":I
    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v45    # "fieldValue":Ljava/lang/Object;
    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v14, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v17, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v21    # "object":Ljava/lang/Object;
    .local v22, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v23, "fieldValue":Ljava/lang/Object;
    .local v26, "fieldIndex":I
    .local v28, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v51    # "typeKey":Ljava/lang/String;
    :goto_34
    const/4 v13, 0x0

    move-object v14, v7

    goto/16 :goto_39

    .line 1055
    .end local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v17    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v21    # "object":Ljava/lang/Object;
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "fieldValue":Ljava/lang/Object;
    .end local v24    # "customDeserializer":Z
    .end local v26    # "fieldIndex":I
    .end local v28    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v42    # "notMatchCount":I
    .end local v47    # "key":Ljava/lang/String;
    .end local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v51    # "typeKey":Ljava/lang/String;
    .restart local v6    # "object":Ljava/lang/Object;
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    :catchall_c
    move-exception v0

    move-object v1, v6

    move-object v14, v7

    move-object v5, v12

    move-object/from16 v50, v13

    move-object/from16 v3, v16

    goto :goto_32

    .line 840
    .restart local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v14, "typeKey":Ljava/lang/String;
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v24    # "customDeserializer":Z
    .restart local v27    # "fieldIndex":I
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v42    # "notMatchCount":I
    .restart local v45    # "fieldValue":Ljava/lang/Object;
    .restart local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v47    # "key":Ljava/lang/String;
    :cond_6d
    if-nez v6, :cond_6e

    .line 841
    move-object/from16 v5, v46

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v5, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v4, v45

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    .end local v45    # "fieldValue":Ljava/lang/Object;
    .local v4, "fieldValue":Ljava/lang/Object;
    move-object/from16 v3, v38

    goto :goto_35

    .line 842
    .end local v4    # "fieldValue":Ljava/lang/Object;
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v45    # "fieldValue":Ljava/lang/Object;
    .restart local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_6e
    move-object/from16 v4, v45

    move-object/from16 v5, v46

    .end local v45    # "fieldValue":Ljava/lang/Object;
    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v4    # "fieldValue":Ljava/lang/Object;
    .restart local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    if-nez v4, :cond_6f

    .line 843
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v3, v38

    if-eq v3, v1, :cond_70

    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v3, v1, :cond_70

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v3, v1, :cond_70

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v3, v1, :cond_70

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v1, :cond_70

    .line 849
    invoke-virtual {v15, v6, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_35

    .line 852
    .end local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6f
    move-object/from16 v3, v38

    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v15, v6, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 855
    :cond_70
    :goto_35
    if-eqz v29, :cond_71

    .line 856
    div-int/lit8 v1, v27, 0x20

    .line 857
    .local v1, "flagIndex":I
    rem-int/lit8 v2, v27, 0x20

    .line 858
    .local v2, "bitIndex":I
    aget v21, v29, v1

    const/16 v17, 0x1

    shl-int v22, v17, v2

    or-int v21, v21, v22

    aput v21, v29, v1

    .end local v1    # "flagIndex":I
    .end local v2    # "bitIndex":I
    goto :goto_36

    .line 861
    :cond_71
    const/16 v17, 0x1

    :goto_36
    iget v1, v12, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_72

    .line 862
    nop

    .line 895
    move-object/from16 v21, v6

    move-object/from16 v50, v13

    move-object/from16 v51, v14

    const/4 v13, 0x0

    move-object v14, v7

    goto/16 :goto_3b

    .line 881
    :cond_72
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v17, v5

    move-object/from16 v21, v6

    move-object/from16 v50, v13

    move-object/from16 v51, v14

    move/from16 v26, v27

    move-object/from16 v28, v39

    goto :goto_34

    .line 866
    .end local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "fieldValue":Ljava/lang/Object;
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v45    # "fieldValue":Ljava/lang/Object;
    .restart local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_73
    move-object/from16 v3, v38

    move-object/from16 v4, v45

    move-object/from16 v5, v46

    const/4 v2, 0x4

    const/16 v17, 0x1

    .end local v38    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v45    # "fieldValue":Ljava/lang/Object;
    .end local v46    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "fieldValue":Ljava/lang/Object;
    .restart local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    if-nez v0, :cond_74

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    move-object/from16 v19, v1

    goto :goto_37

    :cond_74
    move-object/from16 v19, v0

    :goto_37
    move-object/from16 v50, v13

    move-object/from16 v51, v14

    move-wide/from16 v13, v30

    const/4 v2, 0x0

    move-object v1, v8

    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v14    # "typeKey":Ljava/lang/String;
    .restart local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v51    # "typeKey":Ljava/lang/String;
    const/16 v21, 0x4

    move-object v2, v9

    move-object/from16 v22, v3

    move-object/from16 v3, v47

    .end local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v23, v4

    move-object v4, v6

    .end local v4    # "fieldValue":Ljava/lang/Object;
    .restart local v23    # "fieldValue":Ljava/lang/Object;
    move/from16 v26, v27

    move-object/from16 v28, v39

    move-object/from16 v27, v5

    move-object v5, v10

    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v39    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v26    # "fieldIndex":I
    .local v27, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v28    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move/from16 v14, v21

    move-object/from16 v17, v27

    const/4 v13, 0x0

    move-object/from16 v21, v6

    move-object/from16 v6, v19

    .end local v6    # "object":Ljava/lang/Object;
    .end local v27    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v17    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v21    # "object":Ljava/lang/Object;
    move-object v14, v7

    move-object/from16 v7, v29

    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v14, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :try_start_22
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_18

    .line 869
    .local v1, "match":Z
    if-nez v1, :cond_76

    .line 870
    :try_start_23
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_75

    .line 871
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    .line 872
    goto :goto_3b

    .line 511
    .end local v1    # "match":Z
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v17    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "fieldValue":Ljava/lang/Object;
    .end local v24    # "customDeserializer":Z
    .end local v28    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v47    # "key":Ljava/lang/String;
    :cond_75
    move-object v5, v12

    move v4, v13

    const/16 v1, 0x10

    const/4 v2, 0x0

    goto :goto_3a

    .line 1055
    .end local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v26    # "fieldIndex":I
    .end local v42    # "notMatchCount":I
    .end local v51    # "typeKey":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move-object v5, v12

    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v16    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v21    # "object":Ljava/lang/Object;
    .end local v49    # "token":I
    .local v1, "object":Ljava/lang/Object;
    .local v3, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v52    # "token":I
    :goto_38
    move-object/from16 v3, v16

    move-object/from16 v1, v21

    goto/16 :goto_32

    .line 876
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v52    # "token":I
    .restart local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v1, "match":Z
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v16    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v17    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v21    # "object":Ljava/lang/Object;
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "customDeserializer":Z
    .restart local v26    # "fieldIndex":I
    .restart local v28    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v42    # "notMatchCount":I
    .restart local v47    # "key":Ljava/lang/String;
    .restart local v49    # "token":I
    .restart local v51    # "typeKey":Ljava/lang/String;
    :cond_76
    :try_start_24
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_a1

    .line 881
    .end local v1    # "match":Z
    :goto_39
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_77

    .line 882
    nop

    .line 511
    move v1, v2

    move-object v5, v12

    move v4, v13

    const/4 v2, 0x0

    const/16 v3, 0xd

    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v17    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "fieldValue":Ljava/lang/Object;
    .end local v24    # "customDeserializer":Z
    .end local v28    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v47    # "key":Ljava/lang/String;
    :goto_3a
    const/4 v7, 0x1

    goto/16 :goto_51

    .line 885
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v17    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "customDeserializer":Z
    .restart local v28    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v47    # "key":Ljava/lang/String;
    :cond_77
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_18

    const/16 v3, 0xd

    if-ne v1, v3, :cond_9f

    .line 886
    :try_start_25
    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_16

    .line 887
    nop

    .line 895
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v17    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v21    # "object":Ljava/lang/Object;
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "fieldValue":Ljava/lang/Object;
    .end local v24    # "customDeserializer":Z
    .end local v26    # "fieldIndex":I
    .end local v28    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v42    # "notMatchCount":I
    .end local v47    # "key":Ljava/lang/String;
    .end local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v51    # "typeKey":Ljava/lang/String;
    .restart local v6    # "object":Ljava/lang/Object;
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .local v14, "typeKey":Ljava/lang/String;
    :goto_3b
    move-object v1, v0

    move-object/from16 v3, v16

    move/from16 v2, v49

    .end local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "object":Ljava/lang/Object;
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v16    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v49    # "token":I
    .local v1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v2, "token":I
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v14, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v21    # "object":Ljava/lang/Object;
    .restart local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v51    # "typeKey":Ljava/lang/String;
    :goto_3c
    if-nez v21, :cond_9a

    .line 896
    if-nez v1, :cond_7a

    .line 897
    :try_start_26
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    move-object v4, v0

    .line 898
    .end local v21    # "object":Ljava/lang/Object;
    .local v4, "object":Ljava/lang/Object;
    if-nez v3, :cond_78

    .line 899
    :try_start_27
    invoke-virtual {v9, v14, v4, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    move-object v3, v0

    goto :goto_3d

    .line 1055
    .end local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v51    # "typeKey":Ljava/lang/String;
    :catchall_e
    move-exception v0

    move/from16 v52, v2

    move-object v1, v4

    move-object v5, v12

    goto/16 :goto_53

    .line 901
    .restart local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v51    # "typeKey":Ljava/lang/String;
    :cond_78
    :goto_3d
    nop

    .line 1055
    if-eqz v3, :cond_79

    .line 1056
    iput-object v4, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1058
    :cond_79
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 901
    return-object v4

    .line 1055
    .end local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "object":Ljava/lang/Object;
    .end local v51    # "typeKey":Ljava/lang/String;
    .restart local v21    # "object":Ljava/lang/Object;
    :catchall_f
    move-exception v0

    move/from16 v52, v2

    .end local v2    # "token":I
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v21    # "object":Ljava/lang/Object;
    .local v1, "object":Ljava/lang/Object;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v52    # "token":I
    :goto_3e
    move-object v5, v12

    move-object/from16 v1, v21

    goto/16 :goto_53

    .line 904
    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v52    # "token":I
    .local v1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "token":I
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v21    # "object":Ljava/lang/Object;
    .restart local v51    # "typeKey":Ljava/lang/String;
    :cond_7a
    :try_start_28
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_14

    move-object v4, v0

    .line 906
    .local v4, "paramNames":[Ljava/lang/String;
    if-eqz v4, :cond_86

    .line 907
    :try_start_29
    array-length v0, v4

    new-array v0, v0, [Ljava/lang/Object;

    .line 908
    .local v0, "params":[Ljava/lang/Object;
    move v5, v13

    .local v5, "i":I
    :goto_3f
    array-length v6, v4

    if-ge v5, v6, :cond_85

    .line 909
    aget-object v6, v4, v5

    .line 911
    .local v6, "paramName":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 912
    .local v7, "param":Ljava/lang/Object;
    if-nez v7, :cond_83

    .line 913
    iget-object v15, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v15, v15, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v15, v15, v5

    .line 914
    .local v15, "fieldType":Ljava/lang/reflect/Type;
    iget-object v13, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v13, v13, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v13, v13, v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_11

    .line 915
    .local v13, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move/from16 v52, v2

    :try_start_2a
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .end local v2    # "token":I
    .restart local v52    # "token":I
    if-ne v15, v2, :cond_7b

    .line 916
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    move-object/from16 v2, v16

    .line 933
    .end local v7    # "param":Ljava/lang/Object;
    .end local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v15    # "fieldType":Ljava/lang/reflect/Type;
    .local v2, "param":Ljava/lang/Object;
    :goto_40
    move-object v7, v2

    const/4 v2, 0x0

    goto :goto_41

    .line 917
    .end local v2    # "param":Ljava/lang/Object;
    .restart local v7    # "param":Ljava/lang/Object;
    .restart local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v15    # "fieldType":Ljava/lang/reflect/Type;
    :cond_7b
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v15, v2, :cond_7c

    .line 918
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v16

    move-object/from16 v2, v16

    goto :goto_40

    .line 919
    :cond_7c
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v15, v2, :cond_7d

    .line 920
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v2, v16

    goto :goto_40

    .line 921
    :cond_7d
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v15, v2, :cond_7e

    .line 922
    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_40

    .line 923
    :cond_7e
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v15, v2, :cond_7f

    .line 924
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    move-object v7, v10

    goto :goto_41

    .line 925
    :cond_7f
    const/4 v2, 0x0

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v15, v10, :cond_80

    .line 926
    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v7, v16

    goto :goto_41

    .line 927
    :cond_80
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v15, v10, :cond_81

    .line 928
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v7, v10

    goto :goto_41

    .line 929
    :cond_81
    const-class v10, Ljava/lang/String;

    if-ne v15, v10, :cond_82

    iget v10, v13, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_82

    .line 931
    const-string v10, ""

    move-object v7, v10

    .line 933
    .end local v13    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v15    # "fieldType":Ljava/lang/reflect/Type;
    :cond_82
    :goto_41
    goto :goto_42

    .line 934
    .end local v52    # "token":I
    .local v2, "token":I
    :cond_83
    move/from16 v52, v2

    const/4 v2, 0x0

    .end local v2    # "token":I
    .restart local v52    # "token":I
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    if-eqz v10, :cond_84

    iget-object v10, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    array-length v10, v10

    if-ge v5, v10, :cond_84

    .line 935
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructorParameterTypes:[Ljava/lang/reflect/Type;

    aget-object v10, v10, v5

    .line 936
    .local v10, "paramType":Ljava/lang/reflect/Type;
    instance-of v11, v10, Ljava/lang/Class;

    if-eqz v11, :cond_84

    .line 937
    move-object v11, v10

    check-cast v11, Ljava/lang/Class;

    .line 938
    .local v11, "paramClass":Ljava/lang/Class;
    invoke-virtual {v11, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_84

    .line 939
    instance-of v13, v7, Ljava/util/List;

    if-eqz v13, :cond_84

    .line 940
    move-object v13, v7

    check-cast v13, Ljava/util/List;

    .line 941
    .local v13, "list":Ljava/util/List;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    const/4 v2, 0x1

    if-ne v15, v2, :cond_84

    .line 942
    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v53, v16

    .line 943
    .local v53, "first":Ljava/lang/Object;
    move-object/from16 v2, v53

    invoke-virtual {v11, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v16

    .end local v53    # "first":Ljava/lang/Object;
    .local v2, "first":Ljava/lang/Object;
    if-eqz v16, :cond_84

    .line 944
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    .line 952
    .end local v2    # "first":Ljava/lang/Object;
    .end local v10    # "paramType":Ljava/lang/reflect/Type;
    .end local v11    # "paramClass":Ljava/lang/Class;
    .end local v13    # "list":Ljava/util/List;
    :cond_84
    :goto_42
    aput-object v7, v0, v5
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    .line 908
    .end local v6    # "paramName":Ljava/lang/String;
    .end local v7    # "param":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v52

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v13, 0x0

    goto/16 :goto_3f

    .line 1055
    .end local v0    # "params":[Ljava/lang/Object;
    .end local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "paramNames":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v51    # "typeKey":Ljava/lang/String;
    :catchall_10
    move-exception v0

    goto/16 :goto_3e

    .line 986
    .end local v52    # "token":I
    .restart local v0    # "params":[Ljava/lang/Object;
    .restart local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v2, "token":I
    .restart local v4    # "paramNames":[Ljava/lang/String;
    .restart local v51    # "typeKey":Ljava/lang/String;
    :cond_85
    move/from16 v52, v2

    move-object v5, v0

    move-object/from16 v54, v12

    .end local v2    # "token":I
    .restart local v52    # "token":I
    goto/16 :goto_47

    .line 1055
    .end local v0    # "params":[Ljava/lang/Object;
    .end local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "paramNames":[Ljava/lang/String;
    .end local v51    # "typeKey":Ljava/lang/String;
    .end local v52    # "token":I
    .restart local v2    # "token":I
    :catchall_11
    move-exception v0

    move/from16 v52, v2

    move-object v5, v12

    move-object/from16 v1, v21

    .end local v2    # "token":I
    .restart local v52    # "token":I
    goto/16 :goto_53

    .line 955
    .end local v52    # "token":I
    .restart local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "token":I
    .restart local v4    # "paramNames":[Ljava/lang/String;
    .restart local v51    # "typeKey":Ljava/lang/String;
    :cond_86
    move/from16 v52, v2

    .end local v2    # "token":I
    .restart local v52    # "token":I
    :try_start_2b
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 956
    .local v0, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    array-length v2, v0

    .line 957
    .local v2, "size":I
    new-array v5, v2, [Ljava/lang/Object;

    .line 958
    .local v5, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_43
    if-ge v6, v2, :cond_90

    .line 959
    aget-object v7, v0, v6

    .line 960
    .local v7, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v10, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 961
    .local v10, "param":Ljava/lang/Object;
    if-nez v10, :cond_8e

    .line 962
    iget-object v11, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 963
    .local v11, "fieldType":Ljava/lang/reflect/Type;
    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_13

    if-ne v11, v13, :cond_87

    .line 964
    const/4 v13, 0x0

    :try_start_2c
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_10

    move-object v10, v15

    .line 982
    .end local v11    # "fieldType":Ljava/lang/reflect/Type;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .local v54, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    :goto_44
    move-object/from16 v54, v12

    :goto_45
    const/4 v15, 0x0

    goto/16 :goto_46

    .line 965
    .end local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v11    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    :cond_87
    :try_start_2d
    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    if-ne v11, v13, :cond_88

    .line 966
    const/4 v13, 0x0

    :try_start_2e
    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_10

    move-object v10, v15

    goto :goto_44

    .line 967
    :cond_88
    :try_start_2f
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_13

    if-ne v11, v13, :cond_89

    .line 968
    const/4 v13, 0x0

    :try_start_30
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_10

    move-object v10, v15

    goto :goto_44

    .line 969
    :cond_89
    :try_start_31
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_13

    if-ne v11, v13, :cond_8a

    .line 970
    move-object/from16 v54, v12

    const-wide/16 v12, 0x0

    :try_start_32
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    move-object v10, v15

    goto :goto_45

    .line 971
    .end local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    :cond_8a
    move-object/from16 v54, v12

    const-wide/16 v12, 0x0

    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v11, v15, :cond_8b

    .line 972
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move-object/from16 v10, v16

    goto :goto_46

    .line 973
    :cond_8b
    const/4 v15, 0x0

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_8c

    .line 974
    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v10, v16

    goto :goto_46

    .line 975
    :cond_8c
    const-wide/16 v12, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_8d

    .line 976
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v10, v12

    goto :goto_46

    .line 977
    :cond_8d
    const-class v12, Ljava/lang/String;

    if-ne v11, v12, :cond_8f

    iget v12, v7, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v13, v13, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_8f

    .line 979
    const-string v12, ""

    move-object v10, v12

    .end local v11    # "fieldType":Ljava/lang/reflect/Type;
    goto :goto_46

    .line 982
    .end local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    :cond_8e
    move-object/from16 v54, v12

    const/4 v15, 0x0

    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    :cond_8f
    :goto_46
    aput-object v10, v5, v6

    .line 958
    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "param":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v12, v54

    goto/16 :goto_43

    .line 986
    .end local v0    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v2    # "size":I
    .end local v6    # "i":I
    .end local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    :cond_90
    move-object/from16 v54, v12

    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    :goto_47
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_98

    .line 987
    const/4 v0, 0x0

    .line 988
    .local v0, "hasNull":Z
    iget-object v2, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-boolean v2, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlin:Z

    if-eqz v2, :cond_92

    .line 989
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_48
    array-length v6, v5

    if-ge v2, v6, :cond_92

    .line 990
    aget-object v6, v5, v2

    if-nez v6, :cond_91

    iget-object v6, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v6, :cond_91

    iget-object v6, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v6, v6

    if-ge v2, v6, :cond_91

    .line 991
    iget-object v6, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v6, v6, v2

    .line 992
    .local v6, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v7, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v10, Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_12

    if-ne v7, v10, :cond_92

    .line 993
    const/4 v0, 0x1

    goto :goto_49

    .line 989
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 1001
    .end local v0    # "hasNull":Z
    .local v2, "hasNull":Z
    :cond_92
    :goto_49
    move v2, v0

    if-eqz v2, :cond_94

    :try_start_33
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_94

    .line 1002
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->kotlinDefaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_3
    .catchall {:try_start_33 .. :try_end_33} :catchall_12

    move-object v6, v0

    .line 1004
    .end local v21    # "object":Ljava/lang/Object;
    .local v6, "object":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4a
    :try_start_34
    array-length v7, v5

    if-ge v0, v7, :cond_95

    .line 1005
    aget-object v7, v5, v0

    .line 1006
    .local v7, "param":Ljava/lang/Object;
    if-eqz v7, :cond_93

    iget-object v10, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v10, :cond_93

    iget-object v10, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v10, v10

    if-ge v0, v10, :cond_93

    .line 1007
    iget-object v10, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v10, v10, v0

    .line 1008
    .local v10, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v10, v6, v7}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_2
    .catchall {:try_start_34 .. :try_end_34} :catchall_15

    .line 1004
    .end local v7    # "param":Ljava/lang/Object;
    .end local v10    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_93
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 1014
    .end local v0    # "i":I
    :catch_2
    move-exception v0

    goto :goto_4c

    .end local v6    # "object":Ljava/lang/Object;
    .restart local v21    # "object":Ljava/lang/Object;
    :catch_3
    move-exception v0

    move-object/from16 v6, v21

    goto :goto_4c

    .line 1012
    :cond_94
    :try_start_35
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_3
    .catchall {:try_start_35 .. :try_end_35} :catchall_12

    .line 1017
    .end local v21    # "object":Ljava/lang/Object;
    .local v0, "object":Ljava/lang/Object;
    move-object v6, v0

    .line 1019
    .end local v0    # "object":Ljava/lang/Object;
    .restart local v6    # "object":Ljava/lang/Object;
    :cond_95
    if-eqz v4, :cond_97

    .line 1020
    :try_start_36
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_97

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1021
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v10

    .line 1022
    .local v10, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v10, :cond_96

    .line 1023
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1025
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_96
    goto :goto_4b

    .line 1027
    .end local v2    # "hasNull":Z
    :cond_97
    goto :goto_4d

    .line 1014
    .restart local v2    # "hasNull":Z
    :goto_4c
    nop

    .line 1015
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "create instance error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v11, v11, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 1016
    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_15

    .line 1027
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "hasNull":Z
    .end local v6    # "object":Ljava/lang/Object;
    .restart local v21    # "object":Ljava/lang/Object;
    :cond_98
    :try_start_37
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_12

    if-eqz v0, :cond_99

    .line 1029
    :try_start_38
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_4
    .catchall {:try_start_38 .. :try_end_38} :catchall_12

    .line 1032
    .end local v21    # "object":Ljava/lang/Object;
    .local v0, "object":Ljava/lang/Object;
    nop

    .line 1035
    move-object v6, v0

    goto :goto_4d

    .line 1030
    .end local v0    # "object":Ljava/lang/Object;
    .restart local v21    # "object":Ljava/lang/Object;
    :catch_4
    move-exception v0

    .line 1031
    .local v0, "e":Ljava/lang/Exception;
    :try_start_39
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create factory method error, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_12

    .line 1035
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_99
    move-object/from16 v6, v21

    .end local v21    # "object":Ljava/lang/Object;
    .restart local v6    # "object":Ljava/lang/Object;
    :goto_4d
    if-eqz v3, :cond_9b

    .line 1036
    :try_start_3a
    iput-object v6, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .end local v4    # "paramNames":[Ljava/lang/String;
    .end local v5    # "params":[Ljava/lang/Object;
    goto :goto_4e

    .line 1055
    .end local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "object":Ljava/lang/Object;
    .end local v51    # "typeKey":Ljava/lang/String;
    .restart local v21    # "object":Ljava/lang/Object;
    :catchall_12
    move-exception v0

    move-object/from16 v1, v21

    goto :goto_4f

    .end local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    :catchall_13
    move-exception v0

    move-object v5, v12

    move-object/from16 v1, v21

    goto :goto_50

    .end local v52    # "token":I
    .local v2, "token":I
    :catchall_14
    move-exception v0

    move/from16 v52, v2

    move-object v5, v12

    move-object/from16 v1, v21

    .end local v2    # "token":I
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v52    # "token":I
    .restart local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    goto/16 :goto_53

    .line 1040
    .end local v52    # "token":I
    .end local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "token":I
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v51    # "typeKey":Ljava/lang/String;
    :cond_9a
    move/from16 v52, v2

    move-object/from16 v54, v12

    move-object/from16 v6, v21

    .end local v2    # "token":I
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v21    # "object":Ljava/lang/Object;
    .restart local v6    # "object":Ljava/lang/Object;
    .restart local v52    # "token":I
    .restart local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    :cond_9b
    :goto_4e
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_15

    move-object v2, v0

    .line 1041
    .local v2, "buildMethod":Ljava/lang/reflect/Method;
    if-nez v2, :cond_9d

    .line 1042
    nop

    .line 1055
    if-eqz v3, :cond_9c

    .line 1056
    iput-object v6, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1058
    :cond_9c
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1042
    return-object v6

    .line 1048
    :cond_9d
    const/4 v4, 0x0

    :try_start_3b
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_5
    .catchall {:try_start_3b .. :try_end_3b} :catchall_15

    .line 1051
    .local v0, "builtObj":Ljava/lang/Object;
    nop

    .line 1050
    nop

    .line 1053
    nop

    .line 1055
    if-eqz v3, :cond_9e

    .line 1056
    iput-object v6, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1058
    :cond_9e
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1053
    return-object v0

    .line 1049
    .end local v0    # "builtObj":Ljava/lang/Object;
    :catch_5
    move-exception v0

    .line 1050
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3c
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "build object error"

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_15

    .line 1055
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v51    # "typeKey":Ljava/lang/String;
    :catchall_15
    move-exception v0

    move-object v1, v6

    .end local v6    # "object":Ljava/lang/Object;
    .end local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .local v1, "object":Ljava/lang/Object;
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    :goto_4f
    move-object/from16 v5, v54

    goto/16 :goto_53

    .end local v1    # "object":Ljava/lang/Object;
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v52    # "token":I
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v16    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v21    # "object":Ljava/lang/Object;
    .restart local v49    # "token":I
    :catchall_16
    move-exception v0

    move-object v5, v12

    move-object/from16 v3, v16

    move-object/from16 v1, v21

    move/from16 v52, v49

    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v16    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v21    # "object":Ljava/lang/Object;
    .end local v49    # "token":I
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v52    # "token":I
    .restart local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    :goto_50
    goto/16 :goto_53

    .line 890
    .end local v1    # "object":Ljava/lang/Object;
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v52    # "token":I
    .end local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .local v0, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .local v15, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v16    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v17    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v21    # "object":Ljava/lang/Object;
    .restart local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "customDeserializer":Z
    .restart local v26    # "fieldIndex":I
    .restart local v28    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v42    # "notMatchCount":I
    .restart local v47    # "key":Ljava/lang/String;
    .restart local v49    # "token":I
    .restart local v51    # "typeKey":Ljava/lang/String;
    :cond_9f
    move v1, v2

    move-object/from16 v54, v12

    move v4, v13

    const/4 v2, 0x0

    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    move-object/from16 v5, v54

    :try_start_3d
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v6

    .end local v54    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    const/16 v7, 0x12

    if-eq v6, v7, :cond_a0

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_a0

    .line 511
    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v17    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "fieldValue":Ljava/lang/Object;
    .end local v24    # "customDeserializer":Z
    .end local v28    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v47    # "key":Ljava/lang/String;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    :goto_51
    move-object/from16 v22, v0

    move-object/from16 v28, v21

    move/from16 v0, v42

    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v21    # "object":Ljava/lang/Object;
    .end local v42    # "notMatchCount":I
    .local v0, "notMatchCount":I
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .local v22, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v28, "object":Ljava/lang/Object;
    :goto_52
    add-int/lit8 v6, v26, 0x1

    .end local v26    # "fieldIndex":I
    .local v6, "fieldIndex":I
    move v15, v1

    move-object v12, v5

    move v5, v6

    move-object v7, v14

    move-object/from16 v3, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v13, v50

    move-object/from16 v14, v51

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move v6, v4

    move/from16 v4, v49

    goto/16 :goto_7

    .line 891
    .end local v6    # "fieldIndex":I
    .local v0, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v17    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v18    # "matchField":Z
    .restart local v20    # "valueParsed":Z
    .restart local v21    # "object":Ljava/lang/Object;
    .local v22, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "customDeserializer":Z
    .restart local v26    # "fieldIndex":I
    .local v28, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v42    # "notMatchCount":I
    .restart local v47    # "key":Ljava/lang/String;
    :cond_a0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, unexpect token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 877
    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .local v1, "match":Z
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    :cond_a1
    move-object v5, v12

    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "syntax error, unexpect token \':\'"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_17

    .line 1055
    .end local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "match":Z
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v17    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "matchField":Z
    .end local v20    # "valueParsed":Z
    .end local v22    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "fieldValue":Ljava/lang/Object;
    .end local v24    # "customDeserializer":Z
    .end local v26    # "fieldIndex":I
    .end local v28    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v42    # "notMatchCount":I
    .end local v47    # "key":Ljava/lang/String;
    .end local v51    # "typeKey":Ljava/lang/String;
    :catchall_17
    move-exception v0

    goto/16 :goto_38

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    :catchall_18
    move-exception v0

    move-object v5, v12

    move-object/from16 v3, v16

    move-object/from16 v1, v21

    move/from16 v52, v49

    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    goto :goto_53

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v14    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v16    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v21    # "object":Ljava/lang/Object;
    .end local v29    # "setFlags":[I
    .end local v49    # "token":I
    .end local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .local v1, "object":Ljava/lang/Object;
    .local v2, "setFlags":[I
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v4, "token":I
    .local v7, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .local v13, "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    :catchall_19
    move-exception v0

    move-object/from16 v29, v2

    move/from16 v26, v4

    move-object v14, v7

    move-object v5, v12

    move-object/from16 v50, v13

    move-object v2, v1

    move/from16 v52, v26

    .end local v1    # "object":Ljava/lang/Object;
    .end local v4    # "token":I
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .local v2, "object":Ljava/lang/Object;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v14    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v26, "token":I
    .restart local v29    # "setFlags":[I
    .restart local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    goto :goto_53

    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v14    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v26    # "token":I
    .end local v29    # "setFlags":[I
    .end local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .local v2, "token":I
    .restart local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local p4    # "object":Ljava/lang/Object;
    .restart local p6    # "setFlags":[I
    :catchall_1a
    move-exception v0

    move-object v14, v7

    move-object v5, v12

    move-object/from16 v50, v13

    move-object/from16 v29, p6

    move/from16 v52, v2

    .end local v2    # "token":I
    .end local v7    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v13    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local p4    # "object":Ljava/lang/Object;
    .end local p6    # "setFlags":[I
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .restart local v14    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v29    # "setFlags":[I
    .restart local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local v52    # "token":I
    :goto_53
    if-eqz v3, :cond_a2

    .line 1056
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1058
    :cond_a2
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v0

    .line 396
    .end local v1    # "object":Ljava/lang/Object;
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .end local v14    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v29    # "setFlags":[I
    .end local v50    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local v52    # "token":I
    .restart local p4    # "object":Ljava/lang/Object;
    .restart local p6    # "setFlags":[I
    :cond_a3
    :goto_54
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 293
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 294
    .local v2, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_12

    .line 298
    const/4 v3, 0x0

    .line 299
    .local v3, "typeName":Ljava/lang/String;
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanTypeName(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v5, :cond_1

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v5

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v5, v6, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v5

    .line 301
    .local v5, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v6, 0x0

    .line 303
    .local v6, "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v5, :cond_0

    .line 304
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    .line 305
    .local v7, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v8

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v6

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 309
    .end local v7    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    instance-of v7, v5, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v7, :cond_1

    .line 310
    move-object v4, v5

    check-cast v4, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual {v4, v1, v7, v8, v9}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 314
    .end local v5    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v6    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 316
    .end local p4    # "object":Ljava/lang/Object;
    .local v5, "object":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v9, v9

    .local v9, "size":I
    :goto_0
    const/16 v10, 0x10

    if-ge v6, v9, :cond_11

    .line 317
    add-int/lit8 v11, v9, -0x1

    const/16 v12, 0x5d

    if-ne v6, v11, :cond_2

    move v11, v12

    goto :goto_1

    :cond_2
    const/16 v11, 0x2c

    .line 318
    .local v11, "seperator":C
    :goto_1
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v13, v13, v6

    .line 319
    .local v13, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v14, v13, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v14, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 320
    .local v14, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_3

    .line 321
    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v10

    .line 322
    .local v10, "value":I
    invoke-virtual {v13, v5, v10}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    .line 323
    .end local v10    # "value":I
    goto/16 :goto_4

    :cond_3
    const-class v15, Ljava/lang/String;

    if-ne v14, v15, :cond_4

    .line 324
    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString(C)Ljava/lang/String;

    move-result-object v10

    .line 325
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v13, v5, v10}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    .end local v10    # "value":Ljava/lang/String;
    goto/16 :goto_4

    :cond_4
    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v15, :cond_5

    .line 327
    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v7

    .line 328
    .local v7, "value":J
    invoke-virtual {v13, v5, v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    .line 329
    .end local v7    # "value":J
    goto/16 :goto_4

    :cond_5
    invoke-virtual {v14}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 330
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v7

    .line 333
    .local v7, "ch":C
    const/16 v8, 0x22

    if-eq v7, v8, :cond_8

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_6

    goto :goto_2

    .line 335
    :cond_6
    const/16 v8, 0x30

    if-lt v7, v8, :cond_7

    const/16 v8, 0x39

    if-gt v7, v8, :cond_7

    .line 336
    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v8

    .line 338
    .local v8, "ordinal":I
    move-object v10, v13

    check-cast v10, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 339
    .local v10, "enumDeser":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    invoke-virtual {v10, v8}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->valueOf(I)Ljava/lang/Enum;

    move-result-object v8

    .line 340
    .end local v10    # "enumDeser":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    .local v8, "value":Ljava/lang/Object;
    goto :goto_3

    .line 341
    .end local v8    # "value":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v0, v2, v11}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;

    move-result-object v8

    goto :goto_3

    .line 334
    :cond_8
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v8

    invoke-interface {v2, v14, v8, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;

    move-result-object v8

    .line 341
    .restart local v8    # "value":Ljava/lang/Object;
    :goto_3
    nop

    .line 344
    invoke-virtual {v13, v5, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 345
    .end local v7    # "ch":C
    .end local v8    # "value":Ljava/lang/Object;
    goto/16 :goto_4

    :cond_9
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v14, v7, :cond_a

    .line 346
    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean(C)Z

    move-result v7

    .line 347
    .local v7, "value":Z
    invoke-virtual {v13, v5, v7}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    .line 348
    .end local v7    # "value":Z
    goto :goto_4

    :cond_a
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v14, v7, :cond_b

    .line 349
    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFloat(C)F

    move-result v7

    .line 350
    .local v7, "value":F
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v13, v5, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 351
    .end local v7    # "value":F
    goto :goto_4

    :cond_b
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v14, v7, :cond_c

    .line 352
    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDouble(C)D

    move-result-wide v7

    .line 353
    .local v7, "value":D
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v13, v5, v10}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 354
    .end local v7    # "value":D
    goto :goto_4

    :cond_c
    const-class v7, Ljava/util/Date;

    if-ne v14, v7, :cond_d

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v7

    const/16 v8, 0x31

    if-ne v7, v8, :cond_d

    .line 355
    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v7

    .line 356
    .local v7, "longValue":J
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v5, v10}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 357
    .end local v7    # "longValue":J
    goto :goto_4

    :cond_d
    const-class v7, Ljava/math/BigDecimal;

    if-ne v14, v7, :cond_e

    .line 358
    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDecimal(C)Ljava/math/BigDecimal;

    move-result-object v7

    .line 359
    .local v7, "value":Ljava/math/BigDecimal;
    invoke-virtual {v13, v5, v7}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    .end local v7    # "value":Ljava/math/BigDecimal;
    goto :goto_4

    .line 361
    :cond_e
    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 362
    iget-object v7, v13, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    iget-object v8, v13, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 363
    .local v7, "value":Ljava/lang/Object;
    invoke-virtual {v13, v5, v7}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v15, 0xf

    if-ne v8, v15, :cond_f

    .line 366
    goto :goto_5

    .line 369
    :cond_f
    if-ne v11, v12, :cond_10

    move v10, v15

    nop

    :cond_10
    invoke-virtual {v0, v2, v10}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V

    .line 316
    .end local v7    # "value":Ljava/lang/Object;
    .end local v11    # "seperator":C
    .end local v13    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v14    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    goto/16 :goto_0

    .line 373
    .end local v6    # "i":I
    .end local v9    # "size":I
    :cond_11
    :goto_5
    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 375
    return-object v5

    .line 295
    .end local v3    # "typeName":Ljava/lang/String;
    .end local v5    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_12
    move-object/from16 v9, p4

    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 1332
    const/16 v0, 0xc

    return v0
.end method

.method public getFieldDeserializer(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 8
    .param p1, "hash"    # J

    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v0

    new-array v0, v0, [J

    .line 138
    .local v0, "hashArray":[J
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 142
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    .line 145
    .end local v0    # "hashArray":[J
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 146
    .local v0, "pos":I
    const/4 v2, 0x0

    if-gez v0, :cond_2

    .line 147
    return-object v2

    .line 150
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    const/4 v4, -0x1

    if-nez v3, :cond_5

    .line 151
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    array-length v3, v3

    new-array v3, v3, [S

    .line 152
    .local v3, "mapping":[S
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([SS)V

    .line 153
    nop

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 154
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArray:[J

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 155
    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v6

    .line 154
    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    .line 156
    .local v5, "p":I
    if-ltz v5, :cond_3

    .line 157
    int-to-short v6, v1

    aput-short v6, v3, v5

    .line 153
    .end local v5    # "p":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    .end local v1    # "i":I
    :cond_4
    iput-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    .line 163
    .end local v3    # "mapping":[S
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->hashArrayMapping:[S

    aget-short v1, v1, v0

    .line 164
    .local v1, "setterIndex":I
    if-eq v1, v4, :cond_6

    .line 165
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v2, v2, v1

    return-object v2

    .line 168
    :cond_6
    return-object v2
.end method

.method public getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "setFlags"    # [I

    .line 94
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 95
    return-object v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 100
    .local v1, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v1, :cond_1

    .line 101
    return-object v1

    .line 105
    .end local v1    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_1
    const/4 v1, 0x0

    .line 106
    .local v1, "low":I
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 108
    .local v2, "high":I
    :goto_0
    if-gt v1, v2, :cond_5

    .line 109
    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 111
    .local v3, "mid":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 113
    .local v4, "fieldName":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 115
    .local v5, "cmp":I
    if-gez v5, :cond_2

    .line 116
    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    .line 117
    :cond_2
    if-lez v5, :cond_3

    .line 118
    add-int/lit8 v2, v3, -0x1

    .line 126
    .end local v3    # "mid":I
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "cmp":I
    :goto_1
    goto :goto_0

    .line 120
    .restart local v3    # "mid":I
    .restart local v4    # "fieldName":Ljava/lang/String;
    .restart local v5    # "cmp":I
    :cond_3
    invoke-static {v3, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 121
    return-object v0

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v0, v0, v3

    return-object v0

    .line 128
    .end local v3    # "mid":I
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "cmp":I
    :cond_5
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    if-eqz v3, :cond_6

    .line 129
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    return-object v0

    .line 132
    :cond_6
    return-object v0
.end method

.method public getFieldType(I)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "ordinal"    # I

    .line 1563
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 7
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1094
    .local p5, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z

    move-result v0

    return v0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;[I)Z
    .locals 33
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "objectType"    # Ljava/lang/reflect/Type;
    .param p6, "setFlags"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[I)Z"
        }
    .end annotation

    .local p5, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    .line 1099
    move-object/from16 v11, p6

    iget-object v10, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1101
    .local v10, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v9, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 1102
    .local v9, "disableFieldSmartMatchMask":I
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v8, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 1104
    .local v8, "initStringFieldAsEmpty":I
    invoke-interface {v10, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1106
    :cond_0
    invoke-interface {v10, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1109
    :cond_1
    invoke-virtual {v1, v12, v11}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    goto :goto_2

    .line 1107
    :cond_2
    :goto_0
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    goto :goto_2

    .line 1105
    :cond_3
    :goto_1
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 1109
    .local v0, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_2
    nop

    .line 1112
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v7, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 1113
    .local v7, "mask":I
    const/16 v16, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_10

    .line 1114
    invoke-interface {v10, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_4

    goto :goto_3

    .line 1156
    :cond_4
    move-object/from16 v18, v0

    move/from16 v25, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v26, v9

    move-object/from16 v27, v10

    goto/16 :goto_a

    .line 1116
    :cond_5
    :goto_3
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-nez v3, :cond_d

    .line 1117
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v6, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 1118
    .local v3, "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .local v4, "c":Ljava/lang/Class;
    :goto_4
    if-eqz v4, :cond_c

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_c

    .line 1119
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1120
    .local v5, "fields":[Ljava/lang/reflect/Field;
    array-length v6, v5

    move-object/from16 v18, v0

    move/from16 v0, v16

    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v18, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_5
    if-ge v0, v6, :cond_b

    move/from16 v19, v6

    aget-object v6, v5, v0

    .line 1121
    .local v6, "field":Ljava/lang/reflect/Field;
    move-object/from16 v20, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1122
    .local v5, "fieldName":Ljava/lang/String;
    .local v20, "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v21

    if-eqz v21, :cond_6

    .line 1123
    nop

    .line 1120
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "mask":I
    .local v24, "mask":I
    :goto_6
    move/from16 v24, v7

    goto :goto_8

    .line 1125
    .end local v24    # "mask":I
    .restart local v5    # "fieldName":Ljava/lang/String;
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "mask":I
    :cond_6
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v21

    .line 1126
    .local v21, "fieldModifiers":I
    and-int/lit8 v22, v21, 0x10

    if-nez v22, :cond_a

    and-int/lit8 v22, v21, 0x8

    if-eqz v22, :cond_7

    .line 1127
    goto :goto_6

    .line 1129
    :cond_7
    move-object/from16 v23, v5

    const-class v5, Lcom/alibaba/fastjson/annotation/JSONField;

    .end local v5    # "fieldName":Ljava/lang/String;
    .local v23, "fieldName":Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1130
    .local v5, "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v5, :cond_8

    .line 1131
    move/from16 v24, v7

    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v7

    .line 1132
    .local v7, "alteredFieldName":Ljava/lang/String;
    .restart local v24    # "mask":I
    move-object/from16 v25, v5

    const-string v5, ""

    .end local v5    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v25, "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1133
    move-object v5, v7

    .end local v7    # "alteredFieldName":Ljava/lang/String;
    .end local v23    # "fieldName":Ljava/lang/String;
    .local v5, "fieldName":Ljava/lang/String;
    goto :goto_7

    .line 1136
    .end local v24    # "mask":I
    .end local v25    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v5, "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v7, "mask":I
    .restart local v23    # "fieldName":Ljava/lang/String;
    :cond_8
    move-object/from16 v25, v5

    move/from16 v24, v7

    .end local v5    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v7    # "mask":I
    .restart local v24    # "mask":I
    .restart local v25    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_9
    move-object/from16 v5, v23

    .end local v23    # "fieldName":Ljava/lang/String;
    .local v5, "fieldName":Ljava/lang/String;
    :goto_7
    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v21    # "fieldModifiers":I
    .end local v25    # "jsonField":Lcom/alibaba/fastjson/annotation/JSONField;
    goto :goto_8

    .line 1120
    .end local v24    # "mask":I
    .restart local v7    # "mask":I
    :cond_a
    move/from16 v24, v7

    .end local v7    # "mask":I
    .restart local v24    # "mask":I
    :goto_8
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v19

    move-object/from16 v5, v20

    move/from16 v7, v24

    goto :goto_5

    .line 1118
    .end local v20    # "fields":[Ljava/lang/reflect/Field;
    .end local v24    # "mask":I
    .restart local v7    # "mask":I
    :cond_b
    move/from16 v24, v7

    .end local v7    # "mask":I
    .restart local v24    # "mask":I
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, v18

    const/4 v6, 0x1

    goto :goto_4

    .line 1139
    .end local v4    # "c":Ljava/lang/Class;
    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v24    # "mask":I
    .restart local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v7    # "mask":I
    :cond_c
    move-object/from16 v18, v0

    move/from16 v24, v7

    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v7    # "mask":I
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v24    # "mask":I
    iput-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    .end local v3    # "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    goto :goto_9

    .line 1142
    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v24    # "mask":I
    .restart local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v7    # "mask":I
    :cond_d
    move-object/from16 v18, v0

    move/from16 v24, v7

    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v7    # "mask":I
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v24    # "mask":I
    :goto_9
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v12}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1143
    .local v0, "deserOrField":Ljava/lang/Object;
    if-eqz v0, :cond_f

    .line 1144
    instance-of v3, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v3, :cond_e

    .line 1145
    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1156
    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move/from16 v20, v8

    move/from16 v26, v9

    move-object/from16 v27, v10

    move/from16 v19, v24

    const/16 v25, 0x1

    goto/16 :goto_b

    .line 1147
    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_e
    move-object v7, v0

    check-cast v7, Ljava/lang/reflect/Field;

    .line 1148
    .local v7, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1149
    new-instance v17, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v3, v17

    move-object v4, v12

    move/from16 v25, v6

    move-object/from16 v6, v19

    move/from16 v19, v24

    move-object/from16 v24, v7

    move-object/from16 v7, v20

    .end local v7    # "field":Ljava/lang/reflect/Field;
    .local v19, "mask":I
    .local v24, "field":Ljava/lang/reflect/Field;
    move/from16 v20, v8

    move-object/from16 v8, v24

    .end local v8    # "initStringFieldAsEmpty":I
    .local v20, "initStringFieldAsEmpty":I
    move/from16 v26, v9

    move/from16 v9, v21

    .end local v9    # "disableFieldSmartMatchMask":I
    .local v26, "disableFieldSmartMatchMask":I
    move-object/from16 v27, v10

    move/from16 v10, v22

    .end local v10    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .local v27, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    move/from16 v11, v23

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 1150
    .local v3, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    new-instance v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-direct {v4, v5, v6, v3}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 1151
    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v4, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v12, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    .end local v0    # "deserOrField":Ljava/lang/Object;
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v24    # "field":Ljava/lang/reflect/Field;
    move-object v3, v4

    goto :goto_b

    .end local v4    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v19    # "mask":I
    .end local v20    # "initStringFieldAsEmpty":I
    .end local v26    # "disableFieldSmartMatchMask":I
    .end local v27    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v8    # "initStringFieldAsEmpty":I
    .restart local v9    # "disableFieldSmartMatchMask":I
    .restart local v10    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v24, "mask":I
    :cond_f
    move/from16 v20, v8

    move/from16 v26, v9

    move-object/from16 v27, v10

    move/from16 v19, v24

    const/16 v25, 0x1

    .end local v8    # "initStringFieldAsEmpty":I
    .end local v9    # "disableFieldSmartMatchMask":I
    .end local v10    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v24    # "mask":I
    .restart local v19    # "mask":I
    .restart local v20    # "initStringFieldAsEmpty":I
    .restart local v26    # "disableFieldSmartMatchMask":I
    .restart local v27    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    goto :goto_a

    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v19    # "mask":I
    .end local v20    # "initStringFieldAsEmpty":I
    .end local v26    # "disableFieldSmartMatchMask":I
    .end local v27    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .local v0, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v7, "mask":I
    .restart local v8    # "initStringFieldAsEmpty":I
    .restart local v9    # "disableFieldSmartMatchMask":I
    .restart local v10    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_10
    move-object/from16 v18, v0

    move/from16 v25, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v26, v9

    move-object/from16 v27, v10

    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v7    # "mask":I
    .end local v8    # "initStringFieldAsEmpty":I
    .end local v9    # "disableFieldSmartMatchMask":I
    .end local v10    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v19    # "mask":I
    .restart local v20    # "initStringFieldAsEmpty":I
    .restart local v26    # "disableFieldSmartMatchMask":I
    .restart local v27    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :goto_a
    move-object/from16 v3, v18

    .end local v18    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_b
    if-nez v3, :cond_1d

    .line 1157
    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v5, v27

    invoke-interface {v5, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    .end local v27    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .local v5, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    if-eqz v4, :cond_1c

    .line 1161
    const/4 v4, -0x1

    .line 1162
    .local v4, "fieldIndex":I
    move v6, v4

    move/from16 v4, v16

    .local v4, "i":I
    .local v6, "fieldIndex":I
    :goto_c
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v7, v7

    if-ge v4, v7, :cond_19

    .line 1163
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v7, v7, v4

    .line 1165
    .local v7, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v8, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1166
    .local v8, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-boolean v9, v8, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-eqz v9, :cond_17

    instance-of v9, v7, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    if-eqz v9, :cond_17

    .line 1168
    iget-object v9, v8, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v9, :cond_16

    .line 1169
    move-object v9, v7

    check-cast v9, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    .line 1170
    .local v9, "defaultFieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v10

    .line 1171
    .local v10, "fieldValueDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v11, v10, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v11, :cond_13

    .line 1172
    move-object v11, v10

    check-cast v11, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 1173
    .local v11, "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    move-object/from16 v28, v3

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    .line 1174
    .local v3, "unwrappedFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v28, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v3, :cond_12

    .line 1177
    :try_start_0
    iget-object v0, v8, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1178
    .local v0, "fieldObject":Ljava/lang/Object;
    if-nez v0, :cond_11

    .line 1179
    move-object/from16 v29, v0

    move-object v0, v10

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "fieldObject":Ljava/lang/Object;
    .local v29, "fieldObject":Ljava/lang/Object;
    move-object/from16 v30, v11

    :try_start_1
    iget-object v11, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .end local v11    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .local v30, "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    invoke-virtual {v0, v2, v11}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 1180
    .end local v29    # "fieldObject":Ljava/lang/Object;
    .restart local v0    # "fieldObject":Ljava/lang/Object;
    invoke-virtual {v7, v13, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    .line 1182
    .end local v30    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .restart local v11    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_11
    move-object/from16 v29, v0

    move-object/from16 v30, v11

    .end local v11    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .restart local v30    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :goto_d
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFastMatchToken()I

    move-result v11

    invoke-interface {v5, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 1183
    invoke-virtual {v3, v2, v0, v14, v15}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1184
    move v6, v4

    .line 1187
    goto :goto_f

    .line 1185
    .end local v0    # "fieldObject":Ljava/lang/Object;
    :catch_0
    move-exception v0

    goto :goto_e

    .end local v30    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .restart local v11    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :catch_1
    move-exception v0

    move-object/from16 v30, v11

    .line 1186
    .end local v11    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v30    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :goto_e
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    move-object/from16 v31, v3

    const-string v3, "parse unwrapped field error."

    .end local v3    # "unwrappedFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v31, "unwrappedFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    invoke-direct {v11, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 1189
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v30    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v31    # "unwrappedFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_12
    :goto_f
    goto :goto_10

    .end local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_13
    move-object/from16 v28, v3

    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    instance-of v0, v10, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    if-eqz v0, :cond_15

    .line 1190
    move-object v0, v10

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    move-object v3, v0

    .line 1194
    .local v3, "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
    :try_start_2
    iget-object v0, v8, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1195
    .local v0, "fieldObject":Ljava/util/Map;
    if-nez v0, :cond_14

    .line 1196
    iget-object v11, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v11

    move-object v0, v11

    .line 1197
    invoke-virtual {v7, v13, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1200
    :cond_14
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1201
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1202
    .local v11, "fieldValue":Ljava/lang/Object;
    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1205
    .end local v11    # "fieldValue":Ljava/lang/Object;
    nop

    .line 1204
    nop

    .line 1206
    move v6, v4

    .end local v0    # "fieldObject":Ljava/util/Map;
    .end local v3    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
    .end local v9    # "defaultFieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;
    .end local v10    # "fieldValueDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    goto :goto_10

    .line 1203
    .restart local v3    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
    .restart local v9    # "defaultFieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;
    .restart local v10    # "fieldValueDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :catch_2
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/lang/Exception;
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    move-object/from16 v32, v3

    const-string v3, "parse unwrapped field error."

    .end local v3    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
    .local v32, "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
    invoke-direct {v11, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 1208
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "defaultFieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;
    .end local v10    # "fieldValueDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v32    # "javaBeanFieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
    :cond_15
    :goto_10
    goto :goto_11

    .end local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_16
    move-object/from16 v28, v3

    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v0, v8, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_18

    .line 1209
    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1210
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    .line 1212
    .local v9, "fieldValue":Ljava/lang/Object;
    :try_start_3
    iget-object v0, v8, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v12, v3, v16

    aput-object v9, v3, v25

    invoke-virtual {v0, v13, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1215
    nop

    .line 1216
    move v0, v4

    .line 1162
    .end local v6    # "fieldIndex":I
    .end local v7    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v8    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v9    # "fieldValue":Ljava/lang/Object;
    .local v0, "fieldIndex":I
    move v6, v0

    goto :goto_11

    .line 1213
    .end local v0    # "fieldIndex":I
    .restart local v6    # "fieldIndex":I
    .restart local v7    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v8    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v9    # "fieldValue":Ljava/lang/Object;
    :catch_3
    move-exception v0

    .line 1214
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v10, "parse unwrapped field error."

    invoke-direct {v3, v10, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1162
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v8    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v9    # "fieldValue":Ljava/lang/Object;
    .end local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_17
    move-object/from16 v28, v3

    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_18
    :goto_11
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v28

    goto/16 :goto_c

    .line 1221
    .end local v4    # "i":I
    .end local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_19
    move-object/from16 v28, v3

    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    const/4 v0, -0x1

    if-eq v6, v0, :cond_1b

    .line 1222
    move-object/from16 v3, p6

    if-eqz v3, :cond_1a

    .line 1223
    div-int/lit8 v0, v6, 0x20

    .line 1224
    .local v0, "flagIndex":I
    rem-int/lit8 v4, v6, 0x20

    .line 1225
    .local v4, "bitIndex":I
    aget v7, v3, v0

    shl-int v8, v25, v4

    or-int/2addr v7, v8

    aput v7, v3, v0

    .line 1227
    .end local v0    # "flagIndex":I
    .end local v4    # "bitIndex":I
    :cond_1a
    return v25

    .line 1230
    :cond_1b
    move-object/from16 v3, p6

    invoke-virtual {v2, v13, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1232
    return v16

    .line 1158
    .end local v6    # "fieldIndex":I
    .end local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_1c
    move-object/from16 v28, v3

    move-object/from16 v3, p6

    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setter not found, class "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", property "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1235
    .end local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v27    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_1d
    move-object/from16 v28, v3

    move-object/from16 v5, v27

    move-object/from16 v3, p6

    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v27    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v5    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    const/4 v0, -0x1

    .line 1236
    .local v0, "fieldIndex":I
    move/from16 v4, v16

    .local v4, "i":I
    :goto_12
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v6

    if-ge v4, v6, :cond_1f

    .line 1237
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v6, v6, v4

    move-object/from16 v7, v28

    if-ne v6, v7, :cond_1e

    .line 1238
    .end local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v7, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move v0, v4

    .line 1239
    goto :goto_13

    .line 1236
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v28, v7

    goto :goto_12

    .line 1242
    .end local v4    # "i":I
    .end local v7    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_1f
    move-object/from16 v7, v28

    .end local v28    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v7    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_13
    const/4 v4, -0x1

    if-eq v0, v4, :cond_20

    if-eqz v3, :cond_20

    const-string v4, "_"

    invoke-virtual {v12, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1243
    invoke-static {v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1244
    invoke-virtual {v2, v13, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1245
    return v16

    .line 1249
    :cond_20
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFastMatchToken()I

    move-result v4

    invoke-interface {v5, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 1251
    invoke-virtual {v7, v2, v13, v14, v15}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 1253
    if-eqz v3, :cond_21

    .line 1254
    div-int/lit8 v4, v0, 0x20

    .line 1255
    .local v4, "flagIndex":I
    rem-int/lit8 v6, v0, 0x20

    .line 1256
    .local v6, "bitIndex":I
    aget v8, v3, v4

    shl-int v9, v25, v6

    or-int/2addr v8, v9

    aput v8, v3, v4

    .line 1259
    .end local v4    # "flagIndex":I
    .end local v6    # "bitIndex":I
    :cond_21
    return v25
.end method

.method protected parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "instance"    # Ljava/lang/Object;
    .param p5, "features"    # I

    .line 1567
    const/4 v0, 0x0

    new-array v7, v0, [I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "instance"    # Ljava/lang/Object;
    .param p5, "features"    # I
    .param p6, "setFlags"    # [I

    .line 1576
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;

    move-result-object v0

    .line 1578
    .local v0, "value":Ljava/lang/Object;
    return-object v0
.end method

.method protected scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;
    .locals 3
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "seperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/JSONLexer;",
            "C)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 385
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal enum. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected scanEnum(Lcom/alibaba/fastjson/parser/JSONLexerBase;[CLcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)Ljava/lang/Enum;
    .locals 7
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexerBase;
    .param p2, "name_chars"    # [C
    .param p3, "fieldValueDeserilizer"    # Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 1063
    const/4 v0, 0x0

    .line 1064
    .local v0, "enumDeserializer":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    instance-of v1, p3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v1, :cond_0

    .line 1065
    move-object v0, p3

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 1068
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1069
    const/4 v2, -0x1

    iput v2, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1070
    return-object v1

    .line 1073
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanEnumSymbol([C)J

    move-result-wide v2

    .line 1074
    .local v2, "enumNameHashCode":J
    iget v4, p1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v4, :cond_5

    .line 1075
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v4

    .line 1076
    .local v4, "e":Ljava/lang/Enum;
    if-nez v4, :cond_4

    .line 1077
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    cmp-long v5, v2, v5

    if-nez v5, :cond_2

    .line 1078
    return-object v1

    .line 1081
    :cond_2
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 1082
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not match enum value, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1086
    :cond_4
    :goto_0
    return-object v4

    .line 1088
    .end local v4    # "e":Ljava/lang/Enum;
    :cond_5
    return-object v1
.end method

.method public smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public smartMatch(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "setFlags"    # [I

    .line 1267
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1268
    return-object v0

    .line 1271
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;[I)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    .line 1273
    .local v1, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v1, :cond_9

    .line 1274
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v2

    .line 1275
    .local v2, "smartKeyHash":J
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 1276
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    new-array v4, v4, [J

    .line 1277
    .local v4, "hashArray":[J
    move v6, v5

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 1278
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v4, v6

    .line 1277
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1280
    .end local v6    # "i":I
    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 1281
    iput-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 1285
    .end local v4    # "hashArray":[J
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v4, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    .line 1286
    .local v4, "pos":I
    const/4 v6, 0x0

    .line 1287
    .local v6, "is":Z
    if-gez v4, :cond_3

    const-string v7, "is"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    move v6, v7

    if-eqz v7, :cond_3

    .line 1288
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v2

    .line 1289
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v7, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    .line 1292
    :cond_3
    if-ltz v4, :cond_7

    .line 1293
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    const/4 v8, -0x1

    if-nez v7, :cond_6

    .line 1294
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    array-length v7, v7

    new-array v7, v7, [S

    .line 1295
    .local v7, "mapping":[S
    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([SS)V

    .line 1296
    nop

    .local v5, "i":I
    :goto_1
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v9, v9

    if-ge v5, v9, :cond_5

    .line 1297
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArray:[J

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 1298
    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide v10

    .line 1297
    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v9

    .line 1299
    .local v9, "p":I
    if-ltz v9, :cond_4

    .line 1300
    int-to-short v10, v5

    aput-short v10, v7, v9

    .line 1296
    .end local v9    # "p":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1303
    .end local v5    # "i":I
    :cond_5
    iput-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    .line 1306
    .end local v7    # "mapping":[S
    :cond_6
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatchHashArrayMapping:[S

    aget-short v5, v5, v4

    .line 1307
    .local v5, "deserIndex":I
    if-eq v5, v8, :cond_7

    .line 1308
    invoke-static {v5, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSetFlag(I[I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1309
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v1, v7, v5

    .line 1314
    .end local v5    # "deserIndex":I
    :cond_7
    if-eqz v1, :cond_9

    .line 1315
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1316
    .local v5, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget v7, v5, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->DisableFieldSmartMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v8, v8, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_8

    .line 1317
    return-object v0

    .line 1320
    :cond_8
    iget-object v0, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1321
    .local v0, "fieldClass":Ljava/lang/Class;
    if-eqz v6, :cond_9

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v7, :cond_9

    const-class v7, Ljava/lang/Boolean;

    if-eq v0, v7, :cond_9

    .line 1322
    const/4 v1, 0x0

    .line 1328
    .end local v0    # "fieldClass":Ljava/lang/Class;
    .end local v2    # "smartKeyHash":J
    .end local v4    # "pos":I
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v6    # "is":Z
    :cond_9
    return-object v1
.end method
