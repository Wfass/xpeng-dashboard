.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAVAS;
.super Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAudio;
.source "ActionAVAS.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "repeat"    # I

    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAudio;-><init>(Ljava/lang/String;II)V

    .line 9
    return-void
.end method


# virtual methods
.method protected audioSteamType()I
    .locals 1

    .line 13
    const/16 v0, 0xb

    return v0
.end method
