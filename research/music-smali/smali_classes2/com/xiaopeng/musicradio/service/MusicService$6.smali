.class Lcom/xiaopeng/musicradio/service/MusicService$6;
.super Lcom/google/gson/reflect/TypeToken;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicService;->playMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/service/MusicService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicService;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicService$6;->a:Lcom/xiaopeng/musicradio/service/MusicService;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
