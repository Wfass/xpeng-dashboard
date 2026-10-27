.class public final synthetic Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;

.field public final synthetic f$1:Lcom/alibaba/fastjson2/codec/FieldInfo;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic f$4:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

.field public final synthetic f$5:Ljava/lang/Class;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;Lcom/alibaba/fastjson2/codec/FieldInfo;JLcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;ZLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$0:Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$1:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iput-wide p3, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$2:J

    iput-object p5, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$3:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput-object p6, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$4:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iput-object p7, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$5:Ljava/lang/Class;

    iput-boolean p8, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$6:Z

    iput-object p9, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$7:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$0:Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$1:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$2:J

    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$3:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$4:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$5:Ljava/lang/Class;

    iget-boolean v7, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$6:Z

    iget-object v8, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$ktcjCmrD963NMkayyQCsurXU3ds;->f$7:Ljava/util/Map;

    move-object v9, p1

    check-cast v9, Ljava/lang/reflect/Method;

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;->lambda$createObjectWriter$1$ObjectWriterCreatorASM(Lcom/alibaba/fastjson2/codec/FieldInfo;JLcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;ZLjava/util/Map;Ljava/lang/reflect/Method;)V

    return-void
.end method
