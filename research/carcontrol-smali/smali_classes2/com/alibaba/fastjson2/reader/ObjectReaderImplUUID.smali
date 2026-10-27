.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplUUID;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "ObjectReaderImplUUID.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplUUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplUUID;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplUUID;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplUUID;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplUUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readUUID()Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readUUID()Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method
