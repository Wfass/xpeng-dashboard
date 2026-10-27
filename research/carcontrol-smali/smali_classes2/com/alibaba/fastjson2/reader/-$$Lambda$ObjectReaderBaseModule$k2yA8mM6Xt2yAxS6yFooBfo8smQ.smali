.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$k2yA8mM6Xt2yAxS6yFooBfo8smQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/annotation/Annotation;

.field public final synthetic f$1:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic f$2:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$k2yA8mM6Xt2yAxS6yFooBfo8smQ;->f$0:Ljava/lang/annotation/Annotation;

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$k2yA8mM6Xt2yAxS6yFooBfo8smQ;->f$1:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$k2yA8mM6Xt2yAxS6yFooBfo8smQ;->f$2:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$k2yA8mM6Xt2yAxS6yFooBfo8smQ;->f$0:Ljava/lang/annotation/Annotation;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$k2yA8mM6Xt2yAxS6yFooBfo8smQ;->f$1:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$k2yA8mM6Xt2yAxS6yFooBfo8smQ;->f$2:Ljava/lang/Class;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->lambda$getBeanInfo1xJSONPOJOBuilder$4(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-void
.end method
