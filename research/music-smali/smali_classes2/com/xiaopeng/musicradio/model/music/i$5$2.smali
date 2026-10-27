.class Lcom/xiaopeng/musicradio/model/music/i$5$2;
.super Ljava/lang/Object;
.source "MusicControlModel.java"

# interfaces
.implements Lask$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/i$5;->riseVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/music/i$5;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/i$5;)V
    .locals 0

    .line 1259
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$5$2;->a:Lcom/xiaopeng/musicradio/model/music/i$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateSoundVolume(F)V
    .locals 1

    .line 1262
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$5$2;->a:Lcom/xiaopeng/musicradio/model/music/i$5;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/i$5;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->setVolume(F)Z

    return-void
.end method
