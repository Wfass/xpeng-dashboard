.class public Lcom/alibaba/fastjson/asm/TypeCollector;
.super Ljava/lang/Object;
.source "TypeCollector.java"


# static fields
.field private static JSONType:Ljava/lang/String;

.field private static final primitives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected collector:Lcom/alibaba/fastjson/asm/MethodCollector;

.field protected jsonType:Z

.field private final methodName:Ljava/lang/String;

.field private final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/asm/TypeCollector;->JSONType:Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/alibaba/fastjson/asm/TypeCollector$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/TypeCollector$1;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/asm/TypeCollector;->primitives:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 33
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->methodName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->parameterTypes:[Ljava/lang/Class;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    .line 37
    return-void
.end method

.method private correctTypeName(Lcom/alibaba/fastjson/asm/Type;Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Lcom/alibaba/fastjson/asm/Type;
    .param p2, "paramTypeName"    # Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/alibaba/fastjson/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v1, "braces":Ljava/lang/StringBuilder;
    :goto_0
    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    sget-object v2, Lcom/alibaba/fastjson/asm/TypeCollector;->primitives:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    sget-object v2, Lcom/alibaba/fastjson/asm/TypeCollector;->primitives:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 89
    :cond_1
    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_2
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public getParameterNamesForMethod()[Ljava/lang/String;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/asm/MethodCollector;->debugInfoPresent:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/MethodCollector;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public hasJsonType()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->jsonType:Z

    return v0
.end method

.method public matched()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public visitAnnotation(Ljava/lang/String;)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/alibaba/fastjson/asm/TypeCollector;->JSONType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->jsonType:Z

    .line 75
    :cond_0
    return-void
.end method

.method protected visitMethod(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodCollector;
    .locals 9
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 41
    return-object v1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->methodName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    return-object v1

    .line 48
    :cond_1
    invoke-static {p3}, Lcom/alibaba/fastjson/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    .line 49
    .local v0, "argTypes":[Lcom/alibaba/fastjson/asm/Type;
    const/4 v2, 0x0

    .line 50
    .local v2, "longOrDoubleQuantity":I
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    .end local v2    # "longOrDoubleQuantity":I
    .local v5, "longOrDoubleQuantity":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v6, v0, v2

    .line 51
    .local v6, "t":Lcom/alibaba/fastjson/asm/Type;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "className":Ljava/lang/String;
    const-string v8, "long"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "double"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 53
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 50
    .end local v6    # "t":Lcom/alibaba/fastjson/asm/Type;
    .end local v7    # "className":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_4
    array-length v2, v0

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->parameterTypes:[Ljava/lang/Class;

    array-length v3, v3

    if-eq v2, v3, :cond_5

    .line 58
    return-object v1

    .line 60
    :cond_5
    nop

    .local v4, "i":I
    :goto_1
    move v2, v4

    .end local v4    # "i":I
    .local v2, "i":I
    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 61
    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->parameterTypes:[Ljava/lang/Class;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/alibaba/fastjson/asm/TypeCollector;->correctTypeName(Lcom/alibaba/fastjson/asm/Type;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 62
    return-object v1

    .line 60
    :cond_6
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 66
    .end local v4    # "i":I
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/asm/MethodCollector;

    .line 67
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    array-length v3, v0

    add-int/2addr v3, v5

    invoke-direct {v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodCollector;-><init>(II)V

    iput-object v1, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    .line 66
    return-object v1
.end method
