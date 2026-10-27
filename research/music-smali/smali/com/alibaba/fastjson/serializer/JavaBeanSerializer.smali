.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Ljava/lang/Object;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field private final raw:Laem;


# direct methods
.method public constructor <init>(Laem;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->raw:Laem;

    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->raw:Laem;

    invoke-interface {v0, p2}, Laem;->a_(Ljava/lang/String;)Labq;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    invoke-virtual {p2, p1}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7

    .line 26
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/ab;

    .line 27
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->raw:Laem;

    const-wide/16 v5, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v6}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method
