.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$1;
.super Ljava/lang/Object;
.source "MqttChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->init(Landroid/app/Application;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

.field final synthetic val$profile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$1;->val$profile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$1;->val$profile:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
