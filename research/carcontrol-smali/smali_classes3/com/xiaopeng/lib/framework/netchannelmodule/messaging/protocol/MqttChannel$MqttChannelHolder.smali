.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$MqttChannelHolder;
.super Ljava/lang/Object;
.source "MqttChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MqttChannelHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 552
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$MqttChannelHolder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;
    .locals 1

    .line 551
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$MqttChannelHolder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    return-object v0
.end method
