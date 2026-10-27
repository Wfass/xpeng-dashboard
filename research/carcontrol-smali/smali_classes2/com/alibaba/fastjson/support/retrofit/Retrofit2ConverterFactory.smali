.class public Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "Retrofit2ConverterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;,
        Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE:Lokhttp3/MediaType;


# instance fields
.field private fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 27
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->MEDIA_TYPE:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 32
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object p0
.end method

.method static synthetic access$100()Lokhttp3/MediaType;
    .locals 1

    .line 25
    sget-object v0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->MEDIA_TYPE:Lokhttp3/MediaType;

    return-object v0
.end method

.method public static create()Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;
    .locals 1

    .line 40
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    invoke-static {v0}, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->create(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;
    .locals 1

    const-string v0, "fastJsonConfig == null"

    .line 45
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;-><init>(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)V

    return-object v0
.end method


# virtual methods
.method public getFastJsonConfig()Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object v0
.end method

.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "Ljava/lang/Object;",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance p1, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;-><init>(Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;)V

    return-object p1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance p2, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;-><init>(Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;Ljava/lang/reflect/Type;)V

    return-object p2
.end method

.method public setFastJsonConfig(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/fastjson/support/retrofit/Retrofit2ConverterFactory;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object p0
.end method
