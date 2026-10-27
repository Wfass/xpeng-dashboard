.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplNumber;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "ObjectReaderImplNumber.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplNumber;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplNumber;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplNumber;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplNumber;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplNumber;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
