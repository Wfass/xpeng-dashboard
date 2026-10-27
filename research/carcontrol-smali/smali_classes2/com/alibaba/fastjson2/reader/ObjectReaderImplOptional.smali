.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "ObjectReaderImplOptional.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;


# instance fields
.field final format:Ljava/lang/String;

.field final itemClass:Ljava/lang/Class;

.field itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final itemType:Ljava/lang/reflect/Type;

.field final locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    .line 31
    const-class v0, Ljava/util/Optional;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 34
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 36
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 37
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 38
    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 42
    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemType:Ljava/lang/reflect/Type;

    .line 43
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemClass:Ljava/lang/Class;

    .line 44
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->format:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->locale:Ljava/util/Locale;

    return-void
.end method

.method static of(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;
    .locals 1

    if-nez p0, :cond_0

    .line 24
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;

    return-object p0

    .line 27
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    .line 51
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemType:Ljava/lang/reflect/Type;

    if-nez p2, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 54
    :cond_0
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez p4, :cond_3

    const/4 p4, 0x0

    .line 56
    iget-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->format:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 57
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemClass:Ljava/lang/Class;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->locale:Ljava/util/Locale;

    invoke-static {p2, p4, p5, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->createFormattedObjectReader(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p4

    :cond_1
    if-nez p4, :cond_2

    .line 60
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    goto :goto_0

    .line 62
    :cond_2
    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 65
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemType:Ljava/lang/reflect/Type;

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_4

    .line 69
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 71
    :cond_4
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    .line 77
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemType:Ljava/lang/reflect/Type;

    if-nez p2, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 80
    :cond_0
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez p4, :cond_3

    const/4 p4, 0x0

    .line 82
    iget-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->format:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 83
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemClass:Ljava/lang/Class;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->locale:Ljava/util/Locale;

    invoke-static {p2, p4, p5, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->createFormattedObjectReader(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p4

    :cond_1
    if-nez p4, :cond_2

    .line 86
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    goto :goto_0

    .line 88
    :cond_2
    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 91
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->itemType:Ljava/lang/reflect/Type;

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_4

    .line 95
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 97
    :cond_4
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
