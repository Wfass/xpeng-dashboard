.class Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$a;
.super Lcom/xiaopeng/musicradio/datalist/d$a;
.source "CustomDetailListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/d$a<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$a;->b:Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter;

    .line 184
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/datalist/d$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 181
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/customdetaillist/presenter/CustomDetailListPresenter$a;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    return p1
.end method
