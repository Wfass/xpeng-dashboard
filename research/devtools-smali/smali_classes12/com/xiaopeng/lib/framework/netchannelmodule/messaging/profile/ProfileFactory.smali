.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ProfileFactory;
.super Ljava/lang/Object;
.source "ProfileFactory.java"


# static fields
.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ProfileFactory;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static channelProfile(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/MessagingException;
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ProfileFactory$1;->$SwitchMap$com$xiaopeng$lib$framework$moduleinterface$netchannelmodule$messaging$IMessaging$CHANNEL:[I

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 38
    new-instance p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/exception/MessagingExceptionImpl;-><init>(I)V

    throw p0

    .line 31
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ProfileFactory;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    .line 32
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/TestingChannelProfile;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/TestingChannelProfile;-><init>()V

    .line 34
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ProfileFactory;->map:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 24
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ProfileFactory;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    .line 25
    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ReportingChannelProfile;-><init>()V

    .line 27
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ProfileFactory;->map:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ProfileFactory;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    .line 18
    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/CommunicationChannelProfile;-><init>()V

    .line 20
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/ProfileFactory;->map:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
