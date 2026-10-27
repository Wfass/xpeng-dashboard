.class final Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;
.super Ljava/lang/Object;
.source "Retrofit2ConverterFactory.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResponseBodyConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "Lokhttp3/ResponseBody;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

.field private type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;->type:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;->convert(Lokhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    invoke-static {v0}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$000(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->isJSONB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;->type:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    .line 92
    invoke-static {v2}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$000(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->getSymbolTable()Lcom/alibaba/fastjson2/SymbolTable;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    .line 93
    invoke-static {v3}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$000(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->getReaderFilters()[Lcom/alibaba/fastjson2/filter/Filter;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    .line 94
    invoke-static {v4}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$000(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->getReaderFeatures()[Lcom/alibaba/fastjson2/JSONReader$Feature;

    move-result-object v4

    .line 89
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONB;->parseObject([BLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-object v0

    .line 98
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;->type:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    .line 100
    invoke-static {v2}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$000(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    .line 101
    invoke-static {v3}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$000(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->getReaderFilters()[Lcom/alibaba/fastjson2/filter/Filter;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$ResponseBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    .line 102
    invoke-static {v4}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$000(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->getReaderFeatures()[Lcom/alibaba/fastjson2/JSONReader$Feature;

    move-result-object v4

    .line 97
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSON;->parseObject([BLjava/lang/reflect/Type;Ljava/lang/String;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON parse error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :goto_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 109
    throw v0
.end method
