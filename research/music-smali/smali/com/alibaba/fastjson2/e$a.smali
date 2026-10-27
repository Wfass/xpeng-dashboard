.class Lcom/alibaba/fastjson2/e$a;
.super Ljava/lang/Object;
.source "JSONObject.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/annotation/Annotation;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 0

    .line 1662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1663
    iput-object p1, p0, Lcom/alibaba/fastjson2/e$a;->a:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Method;)V
    .locals 2

    .line 1668
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    .line 1669
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1671
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/e$a;->a:Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1672
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1673
    iput-object p1, p0, Lcom/alibaba/fastjson2/e$a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1657
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/e$a;->a(Ljava/lang/reflect/Method;)V

    return-void
.end method
