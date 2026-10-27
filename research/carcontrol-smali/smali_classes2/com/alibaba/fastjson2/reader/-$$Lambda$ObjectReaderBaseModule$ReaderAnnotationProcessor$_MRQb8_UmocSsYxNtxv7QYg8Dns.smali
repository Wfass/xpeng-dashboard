.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$_MRQb8_UmocSsYxNtxv7QYg8Dns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/alibaba/fastjson2/codec/FieldInfo;

.field public final synthetic f$3:Ljava/lang/Class;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;Ljava/lang/String;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$_MRQb8_UmocSsYxNtxv7QYg8Dns;->f$0:Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$_MRQb8_UmocSsYxNtxv7QYg8Dns;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$_MRQb8_UmocSsYxNtxv7QYg8Dns;->f$2:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$_MRQb8_UmocSsYxNtxv7QYg8Dns;->f$3:Ljava/lang/Class;

    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$_MRQb8_UmocSsYxNtxv7QYg8Dns;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$_MRQb8_UmocSsYxNtxv7QYg8Dns;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$_MRQb8_UmocSsYxNtxv7QYg8Dns;->f$0:Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$_MRQb8_UmocSsYxNtxv7QYg8Dns;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$_MRQb8_UmocSsYxNtxv7QYg8Dns;->f$2:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$_MRQb8_UmocSsYxNtxv7QYg8Dns;->f$3:Ljava/lang/Class;

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$_MRQb8_UmocSsYxNtxv7QYg8Dns;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$ReaderAnnotationProcessor$_MRQb8_UmocSsYxNtxv7QYg8Dns;->f$5:Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;->lambda$getFieldInfo$9$ObjectReaderBaseModule$ReaderAnnotationProcessor(Ljava/lang/String;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-void
.end method
