.class public Lcom/xiaopeng/util/CarSettings;
.super Ljava/lang/Object;
.source "CarSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/util/CarSettings$Global;,
        Lcom/xiaopeng/util/CarSettings$Secure;,
        Lcom/xiaopeng/util/CarSettings$System;
    }
.end annotation


# static fields
.field public static final TYPE_GLOBAL:I = 0x3

.field public static final TYPE_SECURE:I = 0x2

.field public static final TYPE_SYSTEM:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInt(Landroid/content/Context;ILjava/lang/String;I)I
    .locals 1

    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    goto :goto_0

    .line 21
    :cond_2
    invoke-static {p0, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return p3
.end method

.method public static getInt(Landroid/content/Context;ILjava/lang/String;II)I
    .locals 0

    .line 57
    invoke-static {p2, p4}, Lcom/xiaopeng/util/CarSettings;->buildKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/util/CarSettings;->getInt(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 66
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {p0, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public static getString(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-static {p2, p3}, Lcom/xiaopeng/util/CarSettings;->buildKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/util/CarSettings;->getString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putInt(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p0, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0
.end method

.method public static putInt(Landroid/content/Context;ILjava/lang/String;II)Z
    .locals 0

    .line 60
    invoke-static {p2, p4}, Lcom/xiaopeng/util/CarSettings;->buildKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/util/CarSettings;->putInt(Landroid/content/Context;ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putString(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {p0, p2, p3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {p0, p2, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0
.end method

.method public static putString(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 108
    invoke-static {p2, p4}, Lcom/xiaopeng/util/CarSettings;->buildKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/util/CarSettings;->putString(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
