.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

.field public final synthetic f$1:Lcom/alibaba/fastjson2/codec/FieldInfo;

.field public final synthetic f$2:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

.field public final synthetic f$3:Ljava/lang/Class;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/Class;

.field public final synthetic f$6:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic f$7:I

.field public final synthetic f$8:Ljava/util/Map;

.field public final synthetic f$9:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;ILjava/util/Map;Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$1:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$2:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$3:Ljava/lang/Class;

    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$5:Ljava/lang/Class;

    iput-object p7, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$6:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput p8, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$7:I

    iput-object p9, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$8:Ljava/util/Map;

    iput-object p10, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$9:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$0:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$1:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$2:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$3:Ljava/lang/Class;

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$5:Ljava/lang/Class;

    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$6:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget v7, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$7:I

    iget-object v8, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$8:Ljava/util/Map;

    iget-object v9, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$rTOgf0B6GeWbu_4dv80ql_A75oQ;->f$9:Ljava/lang/reflect/Type;

    move-object v10, p1

    check-cast v10, Ljava/lang/reflect/Method;

    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->lambda$createObjectReaderWithBuilder$0$ObjectReaderCreator(Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;ILjava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;)V

    return-void
.end method
