.class public Lbmk;
.super Ljava/lang/Object;
.source "RankItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;III)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lbmk;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lbmk;->b:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 19
    iput p3, p0, Lbmk;->c:I

    .line 20
    iput p4, p0, Lbmk;->d:I

    .line 21
    iput p5, p0, Lbmk;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 25
    iget v0, p0, Lbmk;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lbmk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 33
    iget v0, p0, Lbmk;->d:I

    return v0
.end method

.method public d()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;
    .locals 1

    .line 37
    iget-object v0, p0, Lbmk;->b:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 41
    iget v0, p0, Lbmk;->e:I

    return v0
.end method
