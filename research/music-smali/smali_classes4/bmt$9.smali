.class Lbmt$9;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Lask$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt;->pauseByLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmt;


# direct methods
.method constructor <init>(Lbmt;)V
    .locals 0

    .line 2216
    iput-object p1, p0, Lbmt$9;->a:Lbmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeState()V
    .locals 1

    .line 2224
    iget-object v0, p0, Lbmt$9;->a:Lbmt;

    invoke-static {v0}, Lbmt;->k(Lbmt;)Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->pause()V

    return-void
.end method

.method public updateSoundVolume(F)V
    .locals 1

    .line 2219
    iget-object v0, p0, Lbmt$9;->a:Lbmt;

    invoke-virtual {v0, p1}, Lbmt;->setVolume(F)Z

    return-void
.end method
