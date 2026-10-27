.class public Lcom/alibaba/fastjson/parser/ParserConfig;
.super Ljava/lang/Object;
.source "ParserConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;
    }
.end annotation


# static fields
.field public static final AUTOTYPE_ACCEPT:Ljava/lang/String; = "fastjson.parser.autoTypeAccept"

.field public static final DENY_PROPERTY:Ljava/lang/String; = "fastjson.parser.deny"

.field public static global:Lcom/alibaba/fastjson/parser/ParserConfig;


# instance fields
.field private asmEnable:Z

.field private autoTypeSupport:Z

.field public final fieldBase:Z

.field final provider:Lzx;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Lzx;Z)V

    sput-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    new-instance v0, Lzx;

    invoke-direct {v0}, Lzx;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Lzx;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 40
    new-instance p1, Lzx;

    invoke-direct {p1}, Lzx;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Lzx;Z)V

    return-void
.end method

.method constructor <init>(Lzx;Z)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->provider:Lzx;

    .line 32
    iput-boolean p2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->fieldBase:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 44
    new-instance v0, Lzx;

    invoke-direct {v0}, Lzx;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Lzx;Z)V

    return-void
.end method

.method private addItemsToAccept([Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 156
    aget-object v1, p1, v0

    .line 157
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->addAccept(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addItemsToDeny([Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 145
    aget-object v1, p1, v0

    .line 146
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->addDeny(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 216
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    :cond_0
    if-nez v0, :cond_1

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    :cond_1
    if-nez v0, :cond_4

    const/4 v1, 0x0

    .line 227
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7a

    const/16 v4, 0x61

    if-lt v2, v4, :cond_2

    if-gt v2, v3, :cond_2

    .line 229
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 230
    aget-char v5, v0, v1

    add-int/lit8 v5, v5, -0x20

    int-to-char v5, v5

    aput-char v5, v0, v1

    .line 231
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 232
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 235
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x2

    if-le v1, v5, :cond_4

    const/4 v1, 0x1

    .line 236
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v2, v4, :cond_4

    if-gt v2, v3, :cond_4

    const/16 v2, 0x41

    if-lt v1, v2, :cond_4

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_4

    .line 239
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Field;

    :cond_4
    return-object v0
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .line 22
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method

.method public static parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 204
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 205
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 211
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method private static splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ","

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addAccept(Ljava/lang/String;)V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzx;->a(Ljava/lang/String;)V

    return-void
.end method

.method public addAutoTypeCheckHandler(Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;)V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object v0

    invoke-virtual {v0}, Lzx;->d()Lcom/alibaba/fastjson2/u$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzx;->a(Lcom/alibaba/fastjson2/u$a;)V

    return-void

    .line 104
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "not support operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addDeny(Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzx;->b(Ljava/lang/String;)V

    return-void
.end method

.method public addDenyInternal(Ljava/lang/String;)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzx;->b(Ljava/lang/String;)V

    return-void
.end method

.method public checkAutoType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lzx;->b(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public configFromPropety(Ljava/util/Properties;)V
    .locals 1

    const-string v0, "fastjson.parser.deny"

    .line 128
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->addItemsToDeny([Ljava/lang/String;)V

    const-string v0, "fastjson.parser.autoTypeAccept"

    .line 133
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->addItemsToAccept([Ljava/lang/String;)V

    return-void
.end method

.method public get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    .line 170
    instance-of v0, p1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    return-object p1

    .line 173
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/ObjectDeserializerWrapper;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/ObjectDeserializerWrapper;-><init>(Lwk;)V

    return-object v0
.end method

.method public getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object p2

    invoke-virtual {p2, p1}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    .line 190
    instance-of p2, p1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    if-eqz p2, :cond_1

    .line 191
    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    return-object p1

    .line 193
    :cond_1
    new-instance p2, Lcom/alibaba/fastjson/parser/ObjectDeserializerWrapper;

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/parser/ObjectDeserializerWrapper;-><init>(Lwk;)V

    return-object p2
.end method

.method public getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    .line 178
    instance-of v0, p1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    if-eqz v0, :cond_0

    .line 179
    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    return-object p1

    .line 181
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/ObjectDeserializerWrapper;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/ObjectDeserializerWrapper;-><init>(Lwk;)V

    return-object v0
.end method

.method public getProvider()Lzx;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->provider:Lzx;

    return-object v0
.end method

.method public isAsmEnable()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    return v0
.end method

.method public isAutoTypeSupport()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    return v0
.end method

.method public isSafeMode()Z
    .locals 1

    .line 68
    sget-boolean v0, Lzx;->b:Z

    return v0
.end method

.method public putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getProvider()Lzx;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lzx;->a(Ljava/lang/reflect/Type;Lwk;)Lwk;

    return-void
.end method

.method public setAsmEnable(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    return-void
.end method

.method public setAutoTypeSupport(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    return-void
.end method

.method public setDefaultClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1

    .line 72
    sget-boolean v0, Lzx;->b:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "not support operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method
