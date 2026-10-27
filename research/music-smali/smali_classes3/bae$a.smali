.class public Lbae$a;
.super Ljava/lang/Object;
.source "MusicInfoOperationBase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput p1, p0, Lbae$a;->a:I

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)J
    .locals 6

    .line 608
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v0

    .line 609
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSortCreateTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 610
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSortCreateTime()J

    move-result-wide v0

    .line 612
    :cond_0
    iget v2, p0, Lbae$a;->a:I

    const/16 v3, 0x32

    if-eq v2, v3, :cond_1

    .line 613
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v2

    iget v3, p0, Lbae$a;->a:I

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v2

    iget v3, p0, Lbae$a;->a:I

    if-ne v2, v3, :cond_1

    .line 614
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldCreateTime()J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 600
    :cond_2
    invoke-direct {p0, p1}, Lbae$a;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)J

    move-result-wide v0

    .line 601
    invoke-direct {p0, p2}, Lbae$a;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)J

    move-result-wide p1

    .line 604
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 580
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1, p2}, Lbae$a;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result p1

    return p1
.end method
