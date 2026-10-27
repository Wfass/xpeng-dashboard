.class public Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/NotSupportV1Exception;
.super Ljava/lang/Exception;
.source "NotSupportV1Exception.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "this api is not support for carControllerModuleImplement V1"

    .line 9
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/NotSupportV1Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
