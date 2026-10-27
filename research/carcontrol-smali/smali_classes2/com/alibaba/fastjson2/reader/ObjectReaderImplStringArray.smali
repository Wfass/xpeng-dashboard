.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "ObjectReaderImplStringArray.java"


# static fields
.field public static final HASH_TYPE:J

.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;

    const-string v0, "[String"

    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;->HASH_TYPE:J

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 15
    const-class v0, [Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance(J)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;->createInstance(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4

    .line 20
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 26
    :cond_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 27
    check-cast v2, Ljava/lang/String;

    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v3, v1, 0x1

    .line 31
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 9
    invoke-super {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;->getObjectClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readStringArray()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readStringArray()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
