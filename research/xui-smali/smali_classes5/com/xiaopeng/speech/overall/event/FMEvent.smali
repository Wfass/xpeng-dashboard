.class public Lcom/xiaopeng/speech/overall/event/FMEvent;
.super Ljava/lang/Object;
.source "FMEvent.java"


# static fields
.field public static final EVENTS:[Ljava/lang/String;

.field public static final FM_LOCAL_OFF:Ljava/lang/String; = "command://fm.local.off"

.field public static final FM_LOCAL_ON:Ljava/lang/String; = "command://fm.local.on"

.field public static final FM_NETWORK_OFF:Ljava/lang/String; = "command://fm.network.off"

.field public static final FM_NETWORK_ON:Ljava/lang/String; = "command://fm.network.on"

.field public static final FM_PLAY_CHANNEL:Ljava/lang/String; = "command://fm.play.channel"

.field public static final FM_PLAY_COLLECT:Ljava/lang/String; = "command://fm.play.collection"

.field public static final FM_PLAY_NAME:Ljava/lang/String; = "native://fm.play.channelname"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 60
    const-string v0, "command://fm.local.on"

    const-string v1, "command://fm.local.off"

    const-string v2, "command://fm.network.on"

    const-string v3, "command://fm.network.off"

    const-string v4, "command://fm.play.channel"

    const-string v5, "native://fm.play.channelname"

    const-string v6, "command://fm.play.collection"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/overall/event/FMEvent;->EVENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
