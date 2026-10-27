.class final Lcom/alibaba/fastjson2/support/LambdaMiscCodec$FactoryFunction;
.super Ljava/lang/Object;
.source "LambdaMiscCodec.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/support/LambdaMiscCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FactoryFunction"
.end annotation


# instance fields
.field final method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$FactoryFunction;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 781
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$FactoryFunction;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 783
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "createInstance error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
