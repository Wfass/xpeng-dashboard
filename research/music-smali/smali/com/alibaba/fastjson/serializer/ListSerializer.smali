.class public Lcom/alibaba/fastjson/serializer/ListSerializer;
.super Ljava/lang/Object;
.source "ListSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ListSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/alibaba/fastjson/serializer/ListSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ListSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 30
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/ab;

    if-nez p2, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 37
    :cond_0
    check-cast p2, Ljava/util/List;

    .line 38
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Ljava/util/List;)V

    return-void
.end method

.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 18
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/ab;

    if-nez p2, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 25
    :cond_0
    check-cast p2, Ljava/util/List;

    .line 26
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Ljava/util/List;)V

    return-void
.end method
