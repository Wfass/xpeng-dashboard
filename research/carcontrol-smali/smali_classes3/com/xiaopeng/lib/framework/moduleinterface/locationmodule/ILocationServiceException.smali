.class public abstract Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;
.super Ljava/lang/Exception;
.source "ILocationServiceException.java"


# static fields
.field public static final REASON_SERVICE_BOUND:I = 0x3

.field public static final REASON_SERVICE_NOT_INITIALIZED:I = 0x5

.field public static final REASON_SERVICE_STARTED:I = 0x2

.field public static final REASON_SERVICE_STOPPED:I = 0x1

.field public static final REASON_SERVICE_SUBSCRIBE_EXCEPTION:I = 0x6

.field public static final REASON_SERVICE_UNBOUND:I = 0x4


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getReasonCode()I
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reason: ("

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;->getReasonCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
