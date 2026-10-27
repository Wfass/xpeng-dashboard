.class public Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;
.super Ljava/lang/Object;
.source "FastJsonFeature.java"

# interfaces
.implements Ljavax/ws/rs/core/Feature;


# static fields
.field private static final JSON_FEATURE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;->JSON_FEATURE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Ljavax/ws/rs/core/FeatureContext;)Z
    .locals 7
    .param p1, "context"    # Ljavax/ws/rs/core/FeatureContext;

    .line 28
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1}, Ljavax/ws/rs/core/FeatureContext;->getConfiguration()Ljavax/ws/rs/core/Configuration;

    move-result-object v1

    .line 30
    .local v1, "config":Ljavax/ws/rs/core/Configuration;
    nop

    .line 31
    invoke-interface {v1}, Ljavax/ws/rs/core/Configuration;->getProperties()Ljava/util/Map;

    move-result-object v2

    .line 32
    invoke-interface {v1}, Ljavax/ws/rs/core/Configuration;->getRuntimeType()Ljavax/ws/rs/RuntimeType;

    move-result-object v3

    const-string v4, "jersey.config.jsonFeature"

    sget-object v5, Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;->JSON_FEATURE:Ljava/lang/String;

    const-class v6, Ljava/lang/String;

    .line 30
    invoke-static {v2, v3, v4, v5, v6}, Lorg/glassfish/jersey/CommonProperties;->getValue(Ljava/util/Map;Ljavax/ws/rs/RuntimeType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 38
    .local v2, "jsonFeature":Ljava/lang/String;
    sget-object v3, Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;->JSON_FEATURE:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 39
    return v4

    .line 43
    :cond_0
    const-string v3, "jersey.config.jsonFeature"

    .line 44
    invoke-interface {v1}, Ljavax/ws/rs/core/Configuration;->getRuntimeType()Ljavax/ws/rs/RuntimeType;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/glassfish/jersey/internal/util/PropertiesHelper;->getPropertyNameForRuntime(Ljava/lang/String;Ljavax/ws/rs/RuntimeType;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;->JSON_FEATURE:Ljava/lang/String;

    .line 43
    invoke-interface {p1, v3, v5}, Ljavax/ws/rs/core/FeatureContext;->property(Ljava/lang/String;Ljava/lang/Object;)Ljavax/ws/rs/core/Configurable;

    .line 48
    const-class v3, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;

    invoke-interface {v1, v3}, Ljavax/ws/rs/core/Configuration;->isRegistered(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 49
    const-class v3, Lcom/alibaba/fastjson/support/jaxrs/FastJsonProvider;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljavax/ws/rs/ext/MessageBodyReader;

    aput-object v6, v5, v4

    const-class v4, Ljavax/ws/rs/ext/MessageBodyWriter;

    aput-object v4, v5, v0

    invoke-interface {p1, v3, v5}, Ljavax/ws/rs/core/FeatureContext;->register(Ljava/lang/Class;[Ljava/lang/Class;)Ljavax/ws/rs/core/Configurable;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "config":Ljavax/ws/rs/core/Configuration;
    .end local v2    # "jsonFeature":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 55
    :goto_0
    return v0
.end method
