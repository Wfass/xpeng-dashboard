.class public Lcom/xiaopeng/a/a$b;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 57
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/a/a$g;->af(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 1

    .line 73
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/a/a$g;->ag(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/a/a$g;->ae(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
