.class public final synthetic Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$OylkIlR62lrXGywdkt5IHyOas0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;

.field public final synthetic f$1:Ljava/lang/annotation/Annotation;

.field public final synthetic f$2:Lcom/alibaba/fastjson2/codec/BeanInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$OylkIlR62lrXGywdkt5IHyOas0o;->f$0:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$OylkIlR62lrXGywdkt5IHyOas0o;->f$1:Ljava/lang/annotation/Annotation;

    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$OylkIlR62lrXGywdkt5IHyOas0o;->f$2:Lcom/alibaba/fastjson2/codec/BeanInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$OylkIlR62lrXGywdkt5IHyOas0o;->f$0:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$OylkIlR62lrXGywdkt5IHyOas0o;->f$1:Ljava/lang/annotation/Annotation;

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$OylkIlR62lrXGywdkt5IHyOas0o;->f$2:Lcom/alibaba/fastjson2/codec/BeanInfo;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->lambda$processJacksonJsonSerialize$2$ObjectWriterBaseModule$WriterAnnotationProcessor(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V

    return-void
.end method
