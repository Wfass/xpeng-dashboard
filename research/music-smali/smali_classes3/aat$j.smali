.class final Laat$j;
.super Ljava/lang/Object;
.source "LambdaMiscCodec.java"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation


# instance fields
.field final a:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput-object p1, p0, Laat$j;->a:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public applyAsLong(Ljava/lang/Object;)J
    .locals 2

    .line 851
    :try_start_0
    iget-object v0, p0, Laat$j;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 853
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "applyAsLong error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
