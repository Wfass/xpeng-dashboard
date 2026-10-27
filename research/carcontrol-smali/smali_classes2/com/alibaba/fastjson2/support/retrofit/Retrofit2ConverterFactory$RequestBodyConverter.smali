.class final Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;
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
    name = "RequestBodyConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "TT;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 113
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;->convert(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Lokhttp3/RequestBody;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    invoke-static {v0}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$000(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->isJSONB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    .line 125
    invoke-static {v0}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$000(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->getSymbolTable()Lcom/alibaba/fastjson2/SymbolTable;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    .line 126
    invoke-static {v1}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$000(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->getWriterFilters()[Lcom/alibaba/fastjson2/filter/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    .line 127
    invoke-static {v2}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$000(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->getWriterFeatures()[Lcom/alibaba/fastjson2/JSONWriter$Feature;

    move-result-object v2

    .line 123
    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/Object;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    .line 132
    invoke-static {v0}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$000(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    .line 133
    invoke-static {v1}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$000(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->getWriterFilters()[Lcom/alibaba/fastjson2/filter/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory$RequestBodyConverter;->this$0:Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;

    .line 134
    invoke-static {v2}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$000(Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;)Lcom/alibaba/fastjson2/support/config/FastJsonConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->getWriterFeatures()[Lcom/alibaba/fastjson2/JSONWriter$Feature;

    move-result-object v2

    .line 130
    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/JSON;->toJSONBytes(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B

    move-result-object p1

    .line 137
    :goto_0
    invoke-static {}, Lcom/alibaba/fastjson2/support/retrofit/Retrofit2ConverterFactory;->access$100()Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 139
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not write JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
