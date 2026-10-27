.class public final synthetic Lcom/alibaba/fastjson2/schema/-$$Lambda$JSONSchema$yOhPLoLNwzG16pgpPUgc_cwE4cw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/alibaba/fastjson2/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/-$$Lambda$JSONSchema$yOhPLoLNwzG16pgpPUgc_cwE4cw;->f$0:Lcom/alibaba/fastjson2/JSONArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/-$$Lambda$JSONSchema$yOhPLoLNwzG16pgpPUgc_cwE4cw;->f$0:Lcom/alibaba/fastjson2/JSONArray;

    check-cast p1, Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/schema/JSONSchema;->lambda$of$0(Lcom/alibaba/fastjson2/JSONArray;Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method
