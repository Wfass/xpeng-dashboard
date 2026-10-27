.class final Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectObjIntConsumer;
.super Ljava/lang/Object;
.source "LambdaMiscCodec.java"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/support/LambdaMiscCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReflectObjIntConsumer"
.end annotation


# instance fields
.field final method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectObjIntConsumer;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;I)V
    .locals 3

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectObjIntConsumer;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 765
    :goto_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "invoke error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
