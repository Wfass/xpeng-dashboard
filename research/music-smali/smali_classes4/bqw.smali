.class public Lbqw;
.super Ljava/lang/Object;
.source "UsbSongItem.java"


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/util/List;Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lbqw;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 32
    iput-object p2, p0, Lbqw;->b:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lbqw;->d:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    .line 34
    iput p4, p0, Lbqw;->e:I

    .line 35
    iput p5, p0, Lbqw;->f:I

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 39
    iget-object v0, p0, Lbqw;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lbqw;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;
    .locals 1

    .line 55
    iget-object v0, p0, Lbqw;->d:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 63
    iget v0, p0, Lbqw;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 71
    iget v0, p0, Lbqw;->f:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lbqw;->c:Ljava/lang/String;

    return-object v0
.end method
