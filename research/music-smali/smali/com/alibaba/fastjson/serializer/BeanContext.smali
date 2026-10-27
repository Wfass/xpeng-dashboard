.class public Lcom/alibaba/fastjson/serializer/BeanContext;
.super Lqi;
.source "BeanContext.java"


# direct methods
.method public constructor <init>(Lqi;)V
    .locals 11

    .line 7
    invoke-virtual {p1}, Lqi;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lqi;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lqi;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    .line 10
    invoke-virtual {p1}, Lqi;->getName()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {p1}, Lqi;->getLabel()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {p1}, Lqi;->getFieldClass()Ljava/lang/Class;

    move-result-object v6

    .line 13
    invoke-virtual {p1}, Lqi;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 14
    invoke-virtual {p1}, Lqi;->getFeatures()J

    move-result-wide v8

    .line 15
    invoke-virtual {p1}, Lqi;->getFormat()Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v10}, Lqi;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;JLjava/lang/String;)V

    return-void
.end method
