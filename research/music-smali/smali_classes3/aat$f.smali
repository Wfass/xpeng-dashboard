.class final Laat$f;
.super Ljava/lang/Object;
.source "LambdaMiscCodec.java"

# interfaces
.implements Ljava/util/function/LongFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field final a:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput-object p1, p0, Laat$f;->a:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public apply(J)Ljava/lang/Object;
    .locals 3

    .line 817
    :try_start_0
    iget-object v0, p0, Laat$f;->a:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 819
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string v0, "createInstance error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
