.class public Lcom/alibaba/fastjson2/codec/BeanInfo;
.super Ljava/lang/Object;
.source "BeanInfo.java"


# instance fields
.field public alphabetic:Z

.field public autoTypeBeforeHandler:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;",
            ">;"
        }
    .end annotation
.end field

.field public buildMethod:Ljava/lang/reflect/Method;

.field public builder:Ljava/lang/Class;

.field public builderWithPrefix:Ljava/lang/String;

.field public createMethod:Ljava/lang/reflect/Method;

.field public createParameterNames:[Ljava/lang/String;

.field public creatorConstructor:Ljava/lang/reflect/Constructor;

.field public deserializer:Ljava/lang/Class;

.field public format:Ljava/lang/String;

.field public ignores:[Ljava/lang/String;

.field public includes:[Ljava/lang/String;

.field public kotlin:Z

.field public locale:Ljava/util/Locale;

.field public markerConstructor:Ljava/lang/reflect/Constructor;

.field public mixIn:Z

.field public namingStrategy:Ljava/lang/String;

.field public objectReaderFieldName:Ljava/lang/String;

.field public objectWriterFieldName:Ljava/lang/String;

.field public orders:[Ljava/lang/String;

.field public readerFeatures:J

.field public schema:Ljava/lang/String;

.field public seeAlso:[Ljava/lang/Class;

.field public seeAlsoDefault:Ljava/lang/Class;

.field public seeAlsoNames:[Ljava/lang/String;

.field public serializeFilters:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            ">;"
        }
    .end annotation
.end field

.field public serializer:Ljava/lang/Class;

.field public typeKey:Ljava/lang/String;

.field public typeName:Ljava/lang/String;

.field public writeEnumAsJavaBean:Z

.field public writerFeatures:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->alphabetic:Z

    return-void
.end method


# virtual methods
.method public required(Ljava/lang/String;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->schema:Ljava/lang/String;

    const-string v1, "required"

    if-nez v0, :cond_0

    .line 52
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->schema:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v1

    .line 56
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->schema:Ljava/lang/String;

    :goto_0
    return-void
.end method
