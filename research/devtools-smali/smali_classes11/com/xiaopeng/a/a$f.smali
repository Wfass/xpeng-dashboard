.class public Lcom/xiaopeng/a/a$f;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public static cE(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 522
    const-string v0, "host"

    invoke-static {p0, v0}, Lcom/xiaopeng/a/a$g;->ae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ef(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 518
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/a/a$g;->ae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
