.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;
.super Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
.source "MessagingExceptionImpl.java"


# static fields
.field private static final serialVersionUID:J = 0x64L


# instance fields
.field private mProtocolReasonCode:I

.field private mReasonCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, ""

    .line 23
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;-><init>(Ljava/lang/String;)V

    .line 24
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;->mReasonCode:I

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;->mProtocolReasonCode:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;->mReasonCode:I

    .line 31
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;->mProtocolReasonCode:I

    return-void
.end method


# virtual methods
.method public getProtocolReasonCode()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;->mProtocolReasonCode:I

    return v0
.end method

.method public getReasonCode()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;->mReasonCode:I

    return v0
.end method
