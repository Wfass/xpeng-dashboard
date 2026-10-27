.class final Lcom/alibaba/fastjson2/JSONPathSegment$RootSegment;
.super Lcom/alibaba/fastjson2/JSONPathSegment;
.source "JSONPathSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RootSegment"
.end annotation


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$RootSegment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1085
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathSegment$RootSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONPathSegment$RootSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathSegment$RootSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$RootSegment;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1087
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathSegment;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 1

    .line 1092
    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 1095
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1096
    iput-boolean p1, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void

    .line 1093
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "not support operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 1

    .line 1101
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 1102
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    goto :goto_0

    .line 1103
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    :goto_0
    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-void
.end method
