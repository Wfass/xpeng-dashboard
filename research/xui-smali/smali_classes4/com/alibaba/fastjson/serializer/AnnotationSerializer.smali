.class public Lcom/alibaba/fastjson/serializer/AnnotationSerializer;
.super Ljava/lang/Object;
.source "AnnotationSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

.field private static volatile sun_AnnotationType:Ljava/lang/Class;

.field private static volatile sun_AnnotationType_error:Z

.field private static volatile sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;

.field private static volatile sun_AnnotationType_members:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;

    .line 19
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    .line 20
    sput-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;

    .line 21
    sput-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_members:Ljava/lang/reflect/Method;

    .line 23
    new-instance v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 13
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 27
    .local v1, "objClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 28
    .local v2, "interfaces":[Ljava/lang/Class;
    array-length v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    const/4 v4, 0x0

    aget-object v0, v2, v4

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    aget-object v5, v2, v4

    .line 31
    .local v5, "annotationClass":Ljava/lang/Class;
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    if-nez v0, :cond_0

    .line 33
    :try_start_0
    const-string v0, "sun.reflect.annotation.AnnotationType"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "ex":Ljava/lang/Throwable;
    sput-boolean v3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    .line 36
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "not support Type Annotation."

    invoke-direct {v3, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 40
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 44
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    if-nez v0, :cond_1

    .line 46
    :try_start_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;

    const-string v6, "getInstance"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    goto :goto_1

    .line 47
    :catch_1
    move-exception v0

    .line 48
    .restart local v0    # "ex":Ljava/lang/Throwable;
    sput-boolean v3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    .line 49
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "not support Type Annotation."

    invoke-direct {v3, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 53
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_members:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    if-nez v0, :cond_2

    .line 55
    :try_start_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;

    const-string v6, "members"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_members:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    goto :goto_2

    .line 56
    :catch_2
    move-exception v0

    .line 57
    .restart local v0    # "ex":Ljava/lang/Throwable;
    sput-boolean v3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    .line 58
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "not support Type Annotation."

    invoke-direct {v3, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 62
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    if-nez v0, :cond_4

    .line 68
    :try_start_3
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v4

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8

    move-object v6, v0

    .line 72
    .local v6, "type":Ljava/lang/Object;
    nop

    .line 71
    nop

    .line 76
    :try_start_4
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_members:Ljava/lang/reflect/Method;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    move-object v3, v0

    .line 80
    .local v3, "members":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    nop

    .line 79
    nop

    .line 82
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    move-object v8, v0

    .line 83
    .local v8, "json":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 85
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;>;"
    nop

    .line 86
    .local v7, "val":Ljava/lang/Object;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v10, v0

    .line 89
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :try_start_5
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    new-array v11, v4, [Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v12, p2

    :try_start_6
    invoke-virtual {v0, v12, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_3

    .line 94
    .end local v7    # "val":Ljava/lang/Object;
    .local v0, "val":Ljava/lang/Object;
    nop

    .line 95
    move-object v7, v0

    goto :goto_6

    .line 92
    .end local v0    # "val":Ljava/lang/Object;
    .restart local v7    # "val":Ljava/lang/Object;
    :catch_3
    move-exception v0

    goto :goto_4

    .line 90
    :catch_4
    move-exception v0

    goto :goto_5

    .line 92
    :catch_5
    move-exception v0

    move-object v12, p2

    :goto_4
    goto :goto_6

    .line 90
    :catch_6
    move-exception v0

    move-object v12, p2

    .line 94
    :goto_5
    nop

    .line 95
    :goto_6
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v0, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 97
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_3
    move-object v12, p2

    move-object v4, p1

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 98
    return-void

    .line 77
    .end local v3    # "members":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v7    # "val":Ljava/lang/Object;
    .end local v8    # "json":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;>;"
    :catch_7
    move-exception v0

    move-object v4, p1

    move-object v12, p2

    .line 78
    .local v0, "ex":Ljava/lang/Throwable;
    sput-boolean v3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    .line 79
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "not support Type Annotation."

    invoke-direct {v3, v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 69
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v6    # "type":Ljava/lang/Object;
    :catch_8
    move-exception v0

    move-object v4, p1

    move-object v12, p2

    .line 70
    .restart local v0    # "ex":Ljava/lang/Throwable;
    sput-boolean v3, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    .line 71
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "not support Type Annotation."

    invoke-direct {v3, v6, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 63
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_4
    move-object v4, p1

    move-object v12, p2

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "not support Type Annotation."

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_5
    move-object v4, p1

    move-object v12, p2

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "not support Type Annotation."

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    .end local v5    # "annotationClass":Ljava/lang/Class;
    :cond_6
    move-object v4, p1

    move-object v12, p2

    return-void
.end method
