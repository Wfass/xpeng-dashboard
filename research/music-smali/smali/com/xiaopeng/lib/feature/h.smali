.class public final Lcom/xiaopeng/lib/feature/h;
.super Ljava/lang/Object;
.source "XpFeature.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 23
    invoke-static {}, Lcom/xiaopeng/lib/feature/i;->a()Lcom/xiaopeng/lib/feature/i;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/lib/feature/i;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .line 79
    invoke-static {}, Lcom/xiaopeng/lib/feature/i;->a()Lcom/xiaopeng/lib/feature/i;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/lib/feature/i;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
