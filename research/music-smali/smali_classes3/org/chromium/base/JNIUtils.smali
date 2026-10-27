.class public Lorg/chromium/base/JNIUtils;
.super Ljava/lang/Object;
.source "JNIUtils.java"


# static fields
.field static final synthetic a:Z

.field private static b:Ljava/lang/Boolean;

.field private static c:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lorg/chromium/base/JNIUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/base/JNIUtils;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassLoader()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 25
    sget-object v0, Lorg/chromium/base/JNIUtils;->c:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 26
    const-class v0, Lorg/chromium/base/JNIUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isSelectiveJniRegistrationEnabled()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 44
    sget-object v0, Lorg/chromium/base/JNIUtils;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/JNIUtils;->b:Ljava/lang/Boolean;

    .line 47
    :cond_0
    sget-object v0, Lorg/chromium/base/JNIUtils;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
