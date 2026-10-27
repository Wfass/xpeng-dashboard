.class public Lcom/amap/api/services/a/aq$a;
.super Ljava/lang/Object;
.source "DexFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/amap/api/services/a/x;Ljava/lang/String;)Lcom/amap/api/services/a/av;
    .locals 1

    .line 67
    nop

    .line 68
    invoke-static {p1}, Lcom/amap/api/services/a/av;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/amap/api/services/a/av;

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/services/a/x;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 70
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 71
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/services/a/av;

    .line 72
    return-object p0

    .line 74
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/amap/api/services/a/x;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/a/x;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amap/api/services/a/av;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-static {p1, p2}, Lcom/amap/api/services/a/av;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/amap/api/services/a/av;

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/services/a/x;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 81
    return-object p0
.end method

.method public static a(Lcom/amap/api/services/a/x;Lcom/amap/api/services/a/av;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/services/a/x;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    return-void
.end method
