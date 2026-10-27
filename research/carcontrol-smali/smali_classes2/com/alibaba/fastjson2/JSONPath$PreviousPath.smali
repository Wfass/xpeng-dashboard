.class final Lcom/alibaba/fastjson2/JSONPath$PreviousPath;
.super Lcom/alibaba/fastjson2/JSONPath;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PreviousPath"
.end annotation


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/JSONPath$PreviousPath;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 999
    new-instance v0, Lcom/alibaba/fastjson2/JSONPath$PreviousPath;

    const-string v1, "#-1"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPath$PreviousPath;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPath$PreviousPath;->INSTANCE:Lcom/alibaba/fastjson2/JSONPath$PreviousPath;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    .line 1002
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONPath;-><init>(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1017
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v0, "unsupported operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1022
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v0, "unsupported operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 1

    .line 1027
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v0, "unsupported operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extractScalar(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;
    .locals 1

    .line 1032
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v0, "unsupported operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getParent()Lcom/alibaba/fastjson2/JSONPath;
    .locals 2

    .line 1052
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v1, "unsupported operation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isPrevious()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRef()Z
    .locals 2

    .line 1007
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v1, "unsupported operation"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1067
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v0, "unsupported operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1037
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "unsupported operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs set(Ljava/lang/Object;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 0

    .line 1042
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "unsupported operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCallback(Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 0

    .line 1047
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "unsupported operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInt(Ljava/lang/Object;I)V
    .locals 0

    .line 1057
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "unsupported operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLong(Ljava/lang/Object;J)V
    .locals 0

    .line 1062
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "unsupported operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
