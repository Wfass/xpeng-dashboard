.class public Lcom/xiaopeng/musicradio/PlayerComponentInit;
.super Lbex;
.source "PlayerComponentInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerComponentInit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lbex;-><init>()V

    return-void
.end method


# virtual methods
.method public igOff()V
    .locals 0

    return-void
.end method

.method public igOn()V
    .locals 0

    return-void
.end method

.method public initDelay()V
    .locals 1

    .line 15
    invoke-static {}, Lcom/xiaopeng/musicradio/player/m;->a()Lcom/xiaopeng/musicradio/player/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/player/m;->b()V

    return-void
.end method

.method public initNow()V
    .locals 0

    return-void
.end method

.method public onMusicBinded()V
    .locals 0

    return-void
.end method

.method public registerService()V
    .locals 0

    return-void
.end method
