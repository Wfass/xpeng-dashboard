.class public Lorg/chromium/base/b;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static a:Z

.field public static b:[Ljava/lang/String;

.field public static c:[Ljava/lang/String;

.field public static d:I

.field public static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 7
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/chromium/base/b;->b:[Ljava/lang/String;

    .line 8
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/chromium/base/b;->c:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 10
    sput v0, Lorg/chromium/base/b;->e:I

    return-void
.end method
