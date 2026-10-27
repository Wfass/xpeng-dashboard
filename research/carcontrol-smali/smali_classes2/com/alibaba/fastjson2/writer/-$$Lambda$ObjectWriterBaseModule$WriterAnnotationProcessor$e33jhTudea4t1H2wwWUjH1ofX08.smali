.class public final synthetic Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$e33jhTudea4t1H2wwWUjH1ofX08;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/annotation/Annotation;

.field public final synthetic f$1:Lcom/alibaba/fastjson2/codec/BeanInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$e33jhTudea4t1H2wwWUjH1ofX08;->f$0:Ljava/lang/annotation/Annotation;

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$e33jhTudea4t1H2wwWUjH1ofX08;->f$1:Lcom/alibaba/fastjson2/codec/BeanInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$e33jhTudea4t1H2wwWUjH1ofX08;->f$0:Ljava/lang/annotation/Annotation;

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$e33jhTudea4t1H2wwWUjH1ofX08;->f$1:Lcom/alibaba/fastjson2/codec/BeanInfo;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->lambda$processJacksonJsonSubTypes$1(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V

    return-void
.end method
