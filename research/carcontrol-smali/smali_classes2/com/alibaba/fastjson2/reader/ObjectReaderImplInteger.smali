.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplInteger;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "ObjectReaderImplInteger.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInteger;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInteger;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInteger;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
