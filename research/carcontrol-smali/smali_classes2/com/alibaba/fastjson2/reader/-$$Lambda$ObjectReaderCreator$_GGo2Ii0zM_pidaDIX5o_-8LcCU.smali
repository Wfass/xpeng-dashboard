.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$_GGo2Ii0zM_pidaDIX5o_-8LcCU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

.field public final synthetic f$2:Ljava/lang/Class;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/alibaba/fastjson2/codec/FieldInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Ljava/lang/String;Lcom/alibaba/fastjson2/codec/FieldInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$_GGo2Ii0zM_pidaDIX5o_-8LcCU;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$_GGo2Ii0zM_pidaDIX5o_-8LcCU;->f$1:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$_GGo2Ii0zM_pidaDIX5o_-8LcCU;->f$2:Ljava/lang/Class;

    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$_GGo2Ii0zM_pidaDIX5o_-8LcCU;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$_GGo2Ii0zM_pidaDIX5o_-8LcCU;->f$4:Lcom/alibaba/fastjson2/codec/FieldInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$_GGo2Ii0zM_pidaDIX5o_-8LcCU;->f$0:Ljava/lang/Class;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$_GGo2Ii0zM_pidaDIX5o_-8LcCU;->f$1:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$_GGo2Ii0zM_pidaDIX5o_-8LcCU;->f$2:Ljava/lang/Class;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$_GGo2Ii0zM_pidaDIX5o_-8LcCU;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreator$_GGo2Ii0zM_pidaDIX5o_-8LcCU;->f$4:Lcom/alibaba/fastjson2/codec/FieldInfo;

    move-object v5, p1

    check-cast v5, Ljava/lang/reflect/Method;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->lambda$createObjectReaderWithCreator$1(Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Ljava/lang/String;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V

    return-void
.end method
