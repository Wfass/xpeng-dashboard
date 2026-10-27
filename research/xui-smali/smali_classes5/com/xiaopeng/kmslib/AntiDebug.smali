.class public Lcom/xiaopeng/kmslib/AntiDebug;
.super Ljava/lang/Object;
.source "AntiDebug.java"


# static fields
.field private static KEY_SUBSTRATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const-string v0, "com.saurik.substrate.MS$2"

    sput-object v0, Lcom/xiaopeng/kmslib/AntiDebug;->KEY_SUBSTRATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInject()Z
    .locals 10

    .line 11
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 14
    .local v1, "i":I
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    .end local v1    # "i":I
    .local v5, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v6, v2, v1

    .line 15
    .local v6, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.internal.os.ZygoteInit"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 16
    add-int/lit8 v5, v5, 0x1

    .line 17
    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 18
    return v8

    .line 21
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/xiaopeng/kmslib/AntiDebug;->KEY_SUBSTRATE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 22
    return v8

    .line 14
    .end local v6    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_2
    return v4
.end method

.method public static native setAntiDebugCallback(Lcom/xiaopeng/kmslib/IAntiDebugCallback;)V
.end method
