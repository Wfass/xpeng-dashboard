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

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public abstract getReasonCode()I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;->getReasonCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason: ("

    goto :goto_0

    :goto_1
    return-object v0
.end method
