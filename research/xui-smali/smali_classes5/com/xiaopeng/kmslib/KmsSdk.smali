.class public Lcom/xiaopeng/kmslib/KmsSdk;
.super Ljava/lang/Object;
.source "KmsSdk.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, "kmslib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getKey(ILjava/lang/String;)Ljava/lang/String;
.end method
