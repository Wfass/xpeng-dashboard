.class public Lapb;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static a:J = 0x0L

.field public static b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    sget-boolean v0, Lapb;->b:Z

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
