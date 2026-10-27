.class public final synthetic Lcom/alibaba/fastjson2/schema/-$$Lambda$JSONSchema$xCAP_U5eGLILOu2mXbh8peXnvvg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/schema/ObjectSchema;

.field public final synthetic f$1:Lcom/alibaba/fastjson2/schema/JSONSchema;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/schema/ObjectSchema;Lcom/alibaba/fastjson2/schema/JSONSchema;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/-$$Lambda$JSONSchema$xCAP_U5eGLILOu2mXbh8peXnvvg;->f$0:Lcom/alibaba/fastjson2/schema/ObjectSchema;

    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/-$$Lambda$JSONSchema$xCAP_U5eGLILOu2mXbh8peXnvvg;->f$1:Lcom/alibaba/fastjson2/schema/JSONSchema;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/-$$Lambda$JSONSchema$xCAP_U5eGLILOu2mXbh8peXnvvg;->f$0:Lcom/alibaba/fastjson2/schema/ObjectSchema;

    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/-$$Lambda$JSONSchema$xCAP_U5eGLILOu2mXbh8peXnvvg;->f$1:Lcom/alibaba/fastjson2/schema/JSONSchema;

    check-cast p1, Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->lambda$of$1(Lcom/alibaba/fastjson2/schema/ObjectSchema;Lcom/alibaba/fastjson2/schema/JSONSchema;Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method
