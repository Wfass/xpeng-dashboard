.class public final Laim;
.super Ljava/lang/Object;
.source "PluginSpecifier.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Long;


# virtual methods
.method a(Landroid/content/pm/PackageInfo;)Z
    .locals 7

    .line 51
    iget-object v0, p0, Laim;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 53
    :goto_1
    iget-object v3, p0, Laim;->b:Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 54
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-ltz p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v2

    :goto_3
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method
