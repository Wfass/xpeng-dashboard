.class Lbhu$4;
.super Ljava/lang/Object;
.source "KugouZoneCollectBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhu;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

.field final synthetic b:Lbia;

.field final synthetic c:Lbhu;


# direct methods
.method constructor <init>(Lbhu;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lbia;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lbhu$4;->c:Lbhu;

    iput-object p2, p0, Lbhu$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    iput-object p3, p0, Lbhu$4;->b:Lbia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 186
    iget-object p1, p0, Lbhu$4;->c:Lbhu;

    iget-object p1, p1, Lbhu;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lbhu$4;->c:Lbhu;

    iget-object v0, p1, Lbhu;->c:Lcom/xiaopeng/musicradio/music/kugouzone/view/b;

    iget-object p1, p0, Lbhu$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lbhu$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lbhu$4;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lbhu$4;->b:Lbia;

    invoke-virtual {p1}, Lbia;->i()I

    move-result v4

    iget-object p1, p0, Lbhu$4;->b:Lbia;

    invoke-virtual {p1}, Lbia;->h()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/musicradio/music/kugouzone/view/b;->openCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
