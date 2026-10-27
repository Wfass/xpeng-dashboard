.class public abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field public static final REASON_ALREADY_INITIALIZED:I = 0x13

.field public static final REASON_MQTT_EXCEPTION:I = 0x1

.field public static final REASON_NOT_ALLOW_PUBLISH:I = 0x20

.field public static final REASON_NOT_ALLOW_SUBSCRIBE:I = 0x21

.field public static final REASON_NOT_INITIALIZED:I = 0x11

.field public static final REASON_NOT_SUPPORTED_CHANNEL:I = 0x10

.field public static final REASON_NO_EXCEPTION:I = 0x0

.field public static final REASON_SERVICE_BINDING_ERROR:I = 0x12

.field private static final serialVersionUID:J = 0x64L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getProtocolReasonCode()I
.end method

.method public abstract getReasonCode()I
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;->getReasonCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reason: ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;->getReasonCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
