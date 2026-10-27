.class public final synthetic Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;

.field public final synthetic f$1:Lcom/alibaba/fastjson2/codec/FieldInfo;

.field public final synthetic f$2:Ljava/lang/Class;

.field public final synthetic f$3:J

.field public final synthetic f$4:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

.field public final synthetic f$5:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic f$6:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;->f$0:Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;->f$1:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;->f$2:Ljava/lang/Class;

    iput-wide p4, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;->f$3:J

    iput-object p6, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;->f$4:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iput-object p7, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;->f$5:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput-object p8, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;->f$6:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;->f$0:Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;->f$1:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;->f$2:Ljava/lang/Class;

    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;->f$3:J

    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;->f$4:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;->f$5:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget-object v7, p0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreatorASM$dC1TY9nURd9TRcu4ZZoMvRFA2Fw;->f$6:Ljava/util/Map;

    move-object v8, p1

    check-cast v8, Ljava/lang/reflect/Field;

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;->lambda$createObjectWriter$2$ObjectWriterCreatorASM(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/Map;Ljava/lang/reflect/Field;)V

    return-void
.end method
