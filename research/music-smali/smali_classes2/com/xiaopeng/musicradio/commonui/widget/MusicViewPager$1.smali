.class final Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$1;
.super Ljava/lang/Object;
.source "MusicViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;)I
    .locals 0

    .line 152
    iget p1, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iget p2, p2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 149
    check-cast p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    check-cast p2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$1;->a(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;)I

    move-result p1

    return p1
.end method
