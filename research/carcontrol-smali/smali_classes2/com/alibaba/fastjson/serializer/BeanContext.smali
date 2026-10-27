.class public Lcom/alibaba/fastjson/serializer/BeanContext;
.super Lcom/alibaba/fastjson2/filter/BeanContext;
.source "BeanContext.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/filter/BeanContext;)V
    .locals 11

    .line 7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/filter/BeanContext;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/filter/BeanContext;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/filter/BeanContext;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    .line 10
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/filter/BeanContext;->getName()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/filter/BeanContext;->getLabel()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/filter/BeanContext;->getFieldClass()Ljava/lang/Class;

    move-result-object v6

    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/filter/BeanContext;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/filter/BeanContext;->getFeatures()J

    move-result-wide v8

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/filter/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    .line 6
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/filter/BeanContext;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;JLjava/lang/String;)V

    return-void
.end method
