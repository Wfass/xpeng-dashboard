.class public Lorg/chromium/base/d;
.super Ljava/lang/Object;
.source "LifetimeAssert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/d$d;,
        Lorg/chromium/base/d$a;,
        Lorg/chromium/base/d$b;,
        Lorg/chromium/base/d$c;
    }
.end annotation


# static fields
.field static a:Lorg/chromium/base/d$c;


# instance fields
.field final b:Lorg/chromium/base/d$d;


# direct methods
.method private constructor <init>(Lorg/chromium/base/d$d;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lorg/chromium/base/d;->b:Lorg/chromium/base/d$d;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lorg/chromium/base/d;
    .locals 4

    .line 122
    sget-boolean v0, Lorg/chromium/base/b;->a:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_0
    new-instance v0, Lorg/chromium/base/d;

    new-instance v1, Lorg/chromium/base/d$d;

    new-instance v2, Lorg/chromium/base/d$a;

    invoke-direct {v2}, Lorg/chromium/base/d$a;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/chromium/base/d$d;-><init>(Ljava/lang/Object;Lorg/chromium/base/d$a;Z)V

    invoke-direct {v0, v1}, Lorg/chromium/base/d;-><init>(Lorg/chromium/base/d$d;)V

    return-object v0
.end method

.method public static a(Lorg/chromium/base/d;Z)V
    .locals 1

    .line 136
    sget-boolean v0, Lorg/chromium/base/b;->a:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object p0, p0, Lorg/chromium/base/d;->b:Lorg/chromium/base/d$d;

    iput-boolean p1, p0, Lorg/chromium/base/d$d;->a:Z

    :cond_0
    return-void
.end method
