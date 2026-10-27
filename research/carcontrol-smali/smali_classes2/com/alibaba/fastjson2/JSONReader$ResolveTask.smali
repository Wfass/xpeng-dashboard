.class Lcom/alibaba/fastjson2/JSONReader$ResolveTask;
.super Ljava/lang/Object;
.source "JSONReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResolveTask"
.end annotation


# instance fields
.field final fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

.field final name:Ljava/lang/Object;

.field final object:Ljava/lang/Object;

.field final reference:Lcom/alibaba/fastjson2/JSONPath;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V
    .locals 0

    .line 4551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4552
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 4553
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->object:Ljava/lang/Object;

    .line 4554
    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->name:Ljava/lang/Object;

    .line 4555
    iput-object p4, p0, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->reference:Lcom/alibaba/fastjson2/JSONPath;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 4560
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->reference:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
