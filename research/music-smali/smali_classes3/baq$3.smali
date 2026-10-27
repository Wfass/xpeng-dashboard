.class Lbaq$3;
.super Ljava/lang/Object;
.source "KugouLatelyMusicOperation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaq;->b(Ljava/util/List;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbaq;


# direct methods
.method constructor <init>(Lbaq;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lbaq$3;->a:Lbaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)I
    .locals 2

    .line 260
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getTs()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getTs()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 257
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    invoke-virtual {p0, p1, p2}, Lbaq$3;->a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)I

    move-result p1

    return p1
.end method
