.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloat;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "ObjectReaderImplFloat.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloat;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloat;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloat;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloat;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 12
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFloat()Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFloat()Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
