.class public Lahv;
.super Ljava/lang/Object;
.source "CarAppsDebugUtils.java"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
