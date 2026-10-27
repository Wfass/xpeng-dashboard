.class Lbav$2;
.super Ljava/lang/Object;
.source "KugouMusicRadioOperation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbav;->b(Ljava/util/List;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbav;


# direct methods
.method constructor <init>(Lbav;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lbav$2;->a:Lbav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;)I
    .locals 2

    .line 171
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCacheTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCacheTime()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 168
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    invoke-virtual {p0, p1, p2}, Lbav$2;->a(Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;)I

    move-result p1

    return p1
.end method
