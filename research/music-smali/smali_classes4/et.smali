.class public Let;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Let$c;,
        Let$a;,
        Let$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ler;IZILandroid/os/Handler;Let$c;)Landroid/graphics/Typeface;
    .locals 1

    .line 163
    new-instance v0, Leo;

    invoke-direct {v0, p6, p5}, Leo;-><init>(Let$c;Landroid/os/Handler;)V

    if-eqz p3, :cond_0

    .line 166
    invoke-static {p0, p1, v0, p2, p4}, Les;->a(Landroid/content/Context;Ler;Leo;II)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p3, 0x0

    .line 169
    invoke-static {p0, p1, p2, p3, v0}, Les;->a(Landroid/content/Context;Ler;ILjava/util/concurrent/Executor;Leo;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
