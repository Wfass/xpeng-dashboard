.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

.field public final synthetic f$1:Lcom/alibaba/fastjson2/codec/FieldInfo;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/Class;

.field public final synthetic f$4:Ljava/lang/reflect/Type;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:[Ljava/lang/String;

.field public final synthetic f$7:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic f$8:Ljava/util/Map;

.field public final synthetic f$9:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;JLjava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/Map;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$1:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iput-wide p3, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$2:J

    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$3:Ljava/lang/Class;

    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$4:Ljava/lang/reflect/Type;

    iput-object p7, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$5:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$6:[Ljava/lang/String;

    iput-object p9, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$7:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput-object p10, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$8:Ljava/util/Map;

    iput-object p11, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$9:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$1:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$2:J

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$3:Ljava/lang/Class;

    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$4:Ljava/lang/reflect/Type;

    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$5:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$6:[Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$7:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget-object v9, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$8:Ljava/util/Map;

    iget-object v10, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$SqMjY6eMBv7tybAcFi8-rj6H7jg;->f$9:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-object v11, p1

    check-cast v11, Ljava/lang/reflect/Method;

    invoke-virtual/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->lambda$createFieldReaders$5$ObjectReaderCreator(Lcom/alibaba/fastjson2/codec/FieldInfo;JLjava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/Map;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/reflect/Method;)V

    return-void
.end method
