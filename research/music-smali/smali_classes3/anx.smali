.class public Lanx;
.super Ljava/lang/Object;
.source "DataLogContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanx$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Lanx$a;

.field private static c:Ljava/lang/String;


# direct methods
.method public static a(Lanx$a;)V
    .locals 0

    .line 26
    sput-object p0, Lanx;->b:Lanx$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 34
    sput-object p0, Lanx;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 18
    sput-boolean p0, Lanx;->a:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 14
    sget-boolean v0, Lanx;->a:Z

    return v0
.end method

.method public static b()Lanx$a;
    .locals 1

    .line 22
    sget-object v0, Lanx;->b:Lanx$a;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lanx;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
