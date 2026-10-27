.class public Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallbackBuilder;
.super Ljava/lang/Object;
.source "ThrottleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThrottleCallbackBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private callback:Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private throttleDelay:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 90
    iput v0, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallbackBuilder;->throttleDelay:I

    return-void
.end method

.method public static isAllowedLog()Z
    .locals 3

    const-string v0, "persist.xiaopeng.carcontrol.throttle.logallowed"

    const/4 v1, 0x0

    .line 133
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method


# virtual methods
.method public build()Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils<",
            "TT;>;"
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;

    iget v1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallbackBuilder;->throttleDelay:I

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallbackBuilder;->callback:Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils;-><init>(ILcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$1;)V

    return-object v0
.end method

.method public setCallback(Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;)Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallbackBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback<",
            "TT;>;)",
            "Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallbackBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallbackBuilder;->callback:Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallback;

    return-object p0
.end method

.method public setThrottleDelay(I)Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallbackBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallbackBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 103
    iput p1, p0, Lcom/xiaopeng/carcontrol/common/util/ThrottleUtils$ThrottleCallbackBuilder;->throttleDelay:I

    return-object p0
.end method
