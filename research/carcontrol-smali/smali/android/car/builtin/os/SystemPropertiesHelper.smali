.class public final Landroid/car/builtin/os/SystemPropertiesHelper;
.super Ljava/lang/Object;
.source "SystemPropertiesHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
