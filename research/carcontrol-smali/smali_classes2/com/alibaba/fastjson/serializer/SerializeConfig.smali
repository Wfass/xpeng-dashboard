.class public Lcom/alibaba/fastjson/serializer/SerializeConfig;
.super Ljava/lang/Object;
.source "SerializeConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/SerializeConfig$ObjectSerializerAdapter;
    }
.end annotation


# static fields
.field public static final DEFAULT_PROVIDER:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

.field public static final global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field public static final globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;


# instance fields
.field public final fieldBased:Z

.field public propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field private provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 15
    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 16
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 17
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase1x:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    :goto_0
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;-><init>(Lcom/alibaba/fastjson2/PropertyNamingStrategy;)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->DEFAULT_PROVIDER:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;-><init>()V

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    .line 37
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    return-void
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .locals 1

    .line 28
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method


# virtual methods
.method public addFilter(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/serializer/SerializeFilter;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    .line 92
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->setFilter(Lcom/alibaba/fastjson2/filter/Filter;)V

    return-void
.end method

.method public varargs configEnumAsJavaBean([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;)V"
        }
    .end annotation

    .line 124
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 125
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getCreator()Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    .line 120
    new-instance v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriter;)V

    return-object v0
.end method

.method public final get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    .line 111
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    if-eqz v0, :cond_0

    .line 112
    check-cast p1, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    return-object p1

    .line 115
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriter;)V

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    .line 102
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    return-object p1

    .line 106
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriter;)V

    return-object v0
.end method

.method public getProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->DEFAULT_PROVIDER:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 50
    :cond_0
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getNamingStrategy()Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase1x:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->setNamingStrategy(Lcom/alibaba/fastjson2/PropertyNamingStrategy;)V

    :cond_1
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    check-cast p1, Ljava/lang/reflect/Type;

    check-cast p2, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->DEFAULT_PROVIDER:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 63
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeConfig$ObjectSerializerAdapter;

    invoke-direct {v1, p2}, Lcom/alibaba/fastjson/serializer/SerializeConfig$ObjectSerializerAdapter;-><init>(Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V

    iget-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    invoke-virtual {v0, p1, v1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setAsmEnable(Z)V
    .locals 0

    return-void
.end method
