.class public Lorg/chromium/base/c;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/c$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lorg/chromium/base/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/base/c;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .line 49
    sget-object v0, Lorg/chromium/base/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 64
    sget-boolean v0, Lorg/chromium/base/c;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/base/c;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    check-cast v0, Landroid/content/ContextWrapper;

    .line 65
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 66
    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/chromium/base/c;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Landroid/content/SharedPreferences;
    .locals 1

    .line 86
    invoke-static {}, Lorg/chromium/base/c$a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    .line 103
    sget-boolean v0, Lorg/chromium/base/c;->a:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 105
    :cond_1
    :goto_0
    sget-boolean v0, Lorg/chromium/base/b;->a:Z

    if-eqz v0, :cond_2

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 106
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    .line 108
    :cond_2
    sput-object p0, Lorg/chromium/base/c;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic c()Landroid/content/SharedPreferences;
    .locals 1

    .line 22
    invoke-static {}, Lorg/chromium/base/c;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static d()Landroid/content/SharedPreferences;
    .locals 1

    .line 75
    sget-object v0, Lorg/chromium/base/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
