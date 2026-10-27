.class public interface abstract Lcom/alibaba/fastjson/serializer/ContextValueFilter;
.super Ljava/lang/Object;
.source "ContextValueFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/SerializeFilter;
.implements Lqm;


# virtual methods
.method public abstract process(Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public process(Lqi;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    new-instance v0, Lcom/alibaba/fastjson/serializer/BeanContext;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/BeanContext;-><init>(Lqi;)V

    invoke-interface {p0, v0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ContextValueFilter;->process(Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
