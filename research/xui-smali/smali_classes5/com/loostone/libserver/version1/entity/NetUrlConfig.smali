.class public Lcom/loostone/libserver/version1/entity/NetUrlConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loostone/libserver/version1/entity/NetUrlConfig$TYPE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetUrlConfig"

.field private static netAddress:Lcom/loostone/libserver/version1/entity/NetAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddress(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/loostone/libserver/version1/entity/NetUrlConfig;->netAddress:Lcom/loostone/libserver/version1/entity/NetAddress;

    if-nez v0, :cond_0

    :goto_0
    const-string p0, ""

    return-object p0

    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 26
    :pswitch_0
    invoke-virtual {v0}, Lcom/loostone/libserver/version1/entity/NetAddress;->getKaraokeVolume()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :pswitch_1
    invoke-virtual {v0}, Lcom/loostone/libserver/version1/entity/NetAddress;->getKaraokeVoiceApp()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 28
    :pswitch_2
    invoke-virtual {v0}, Lcom/loostone/libserver/version1/entity/NetAddress;->getCommunicationKernel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 29
    :pswitch_3
    invoke-virtual {v0}, Lcom/loostone/libserver/version1/entity/NetAddress;->getCacheRefresh()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 30
    :pswitch_4
    invoke-virtual {v0}, Lcom/loostone/libserver/version1/entity/NetAddress;->getMicCommInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :pswitch_5
    invoke-virtual {v0}, Lcom/loostone/libserver/version1/entity/NetAddress;->getStatisticalMicInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :pswitch_6
    invoke-virtual {v0}, Lcom/loostone/libserver/version1/entity/NetAddress;->getMicLimitInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 33
    :pswitch_7
    invoke-virtual {v0}, Lcom/loostone/libserver/version1/entity/NetAddress;->getAppUpdate()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static init(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/loostone/libserver/version1/entity/NetUrlConfig;->netAddress:Lcom/loostone/libserver/version1/entity/NetAddress;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/loostone/libserver/version1/entity/NetAddress;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/loostone/libserver/version1/entity/NetAddress;

    sput-object p0, Lcom/loostone/libserver/version1/entity/NetUrlConfig;->netAddress:Lcom/loostone/libserver/version1/entity/NetAddress;

    :cond_0
    return-void
.end method
