.class Lcom/xiaopeng/musicradio/model/music/i$2;
.super Ljava/lang/Object;
.source "MusicControlModel.java"

# interfaces
.implements Lbry$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILjava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/music/i;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/i;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$2;->b:Lcom/xiaopeng/musicradio/model/music/i;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1137
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object v0

    invoke-virtual {v0}, Lbcj;->b()Lbci;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, v1}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v0

    return v0
.end method
