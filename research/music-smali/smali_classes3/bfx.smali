.class public Lbfx;
.super Ljava/lang/Object;
.source "RankItemBean.java"


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

.field private b:I

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbfx;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;
    .locals 1

    .line 17
    iget-object v0, p0, Lbfx;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 29
    iput p1, p0, Lbfx;->b:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lbfx;->c:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lbfx;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-void
.end method

.method public b()I
    .locals 1

    .line 25
    iget v0, p0, Lbfx;->b:I

    return v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 33
    iget-object v0, p0, Lbfx;->c:Landroid/content/Context;

    return-object v0
.end method
