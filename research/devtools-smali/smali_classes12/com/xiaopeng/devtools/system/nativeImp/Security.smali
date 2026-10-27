.class public Lcom/xiaopeng/devtools/system/nativeImp/Security;
.super Ljava/lang/Object;
.source "Security.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-string v0, "xpsecurity2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native checkUnlockTimeValid(I)Z
.end method

.method public native isUnlockKeyValid(Ljava/lang/String;)Z
.end method

.method public native isUnlockKeyValidV2(Ljava/lang/String;I)Z
.end method
