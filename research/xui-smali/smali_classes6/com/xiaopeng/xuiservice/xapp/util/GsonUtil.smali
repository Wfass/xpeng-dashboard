.class public Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;
.super Ljava/lang/Object;
.source "GsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$MapTypeAdapter;,
        Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$CustomTypeAdapterFactory;,
        Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$DoubleAdapter;,
        Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$FloatAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GsonUtil"

.field private static sGSon:Lcom/google/gson/Gson;

.field private static sGsonExclude:Lcom/google/gson/Gson;

.field private static sGsonMap:Lcom/google/gson/Gson;

.field private static sGsonNoHTML:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$CustomTypeAdapterFactory;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$CustomTypeAdapterFactory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGSon:Lcom/google/gson/Gson;

    .line 27
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$CustomTypeAdapterFactory;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$CustomTypeAdapterFactory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGsonExclude:Lcom/google/gson/Gson;

    .line 29
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$CustomTypeAdapterFactory;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$CustomTypeAdapterFactory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGsonNoHTML:Lcom/google/gson/Gson;

    .line 33
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$1;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$1;-><init>()V

    .line 34
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$MapTypeAdapter;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$MapTypeAdapter;-><init>()V

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGsonMap:Lcom/google/gson/Gson;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "json"    # Lcom/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 75
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGSon:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "isExclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 83
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p2, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGsonExclude:Lcom/google/gson/Gson;

    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGSon:Lcom/google/gson/Gson;

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p0, "json"    # Lcom/google/gson/JsonElement;
    .param p1, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGSon:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 55
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 57
    .local v0, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGSon:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GsonUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not json string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 5
    .param p0, "json"    # Ljava/lang/String;
    .param p2, "isExclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 65
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 67
    .local v0, "result":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_0

    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGsonExclude:Lcom/google/gson/Gson;

    :goto_0
    invoke-virtual {v1, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 68
    :catch_0
    move-exception v1

    goto :goto_2

    .line 67
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGSon:Lcom/google/gson/Gson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    move-object v0, v1

    .line 70
    goto :goto_3

    .line 68
    :goto_2
    nop

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GsonUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not json string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGSon:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJson2Map(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGsonMap:Lcom/google/gson/Gson;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$2;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$2;-><init>()V

    .line 39
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 38
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGSon:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJson(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "isExclude"    # Z

    .line 51
    if-eqz p1, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGsonExclude:Lcom/google/gson/Gson;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGSon:Lcom/google/gson/Gson;

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method public static toJsonNoHTML(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->sGsonNoHTML:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
