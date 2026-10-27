.class Laai$a;
.super Ljava/lang/Object;
.source "JSONSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 928
    check-cast p2, Laai;

    invoke-virtual {p2}, Laai;->b()Lcom/alibaba/fastjson2/e;

    move-result-object p2

    .line 929
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/e;)V

    return-void
.end method
