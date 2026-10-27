.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$bYb2Uz6tInIrxf_7h3h0-iTCdR8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;

.field public final synthetic f$1:Ljava/lang/annotation/Annotation;

.field public final synthetic f$2:Lcom/alibaba/fastjson2/codec/BeanInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$bYb2Uz6tInIrxf_7h3h0-iTCdR8;->f$0:Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$bYb2Uz6tInIrxf_7h3h0-iTCdR8;->f$1:Ljava/lang/annotation/Annotation;

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$bYb2Uz6tInIrxf_7h3h0-iTCdR8;->f$2:Lcom/alibaba/fastjson2/codec/BeanInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$bYb2Uz6tInIrxf_7h3h0-iTCdR8;->f$0:Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$bYb2Uz6tInIrxf_7h3h0-iTCdR8;->f$1:Ljava/lang/annotation/Annotation;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$bYb2Uz6tInIrxf_7h3h0-iTCdR8;->f$2:Lcom/alibaba/fastjson2/codec/BeanInfo;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;->lambda$processJacksonJsonDeserializer$5$ObjectReaderBaseModule$ReaderAnnotationProcessor(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V

    return-void
.end method
