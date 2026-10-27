.class public abstract Lbex;
.super Ljava/lang/Object;
.source "ModuleInit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract igOff()V
.end method

.method public abstract igOn()V
.end method

.method public abstract initDelay()V
.end method

.method public abstract initNow()V
.end method

.method public initPlayer()V
    .locals 0

    return-void
.end method

.method public onKugouBinded()V
    .locals 0

    return-void
.end method

.method public abstract onMusicBinded()V
.end method

.method public onNeteaseBinded()V
    .locals 0

    return-void
.end method

.method public abstract registerService()V
.end method
