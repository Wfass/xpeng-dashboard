.class public Lcom/xiaopeng/kmslib/AntiDebug;
.super Ljava/lang/Object;
.source "AntiDebug.java"


# static fields
.field private static a:Ljava/lang/String; = "com.saurik.substrate.MS$2"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native setAntiDebugCallback(Lcom/xiaopeng/kmslib/IAntiDebugCallback;)V
.end method
