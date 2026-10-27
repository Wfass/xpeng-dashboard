.class Lorg/chromium/base/c$a;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lorg/chromium/base/c;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/c$a;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a()Landroid/content/SharedPreferences;
    .locals 1

    .line 31
    sget-object v0, Lorg/chromium/base/c$a;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method
