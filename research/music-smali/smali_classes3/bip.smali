.class public Lbip;
.super Ljava/lang/Object;
.source "UsbMusicPlayHandler.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/model/music/g;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Laqt;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0}, Lbip;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbMusicPlayHandler: ======="

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 69
    iput p1, p0, Lbip;->a:I

    return-void
.end method

.method public a(ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ZZLcom/xiaopeng/musicradio/model/music/f;)V
    .locals 0

    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    .line 74
    iget v0, p0, Lbip;->a:I

    return v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "UsbMusicPlayHandler"

    return-object v0
.end method
