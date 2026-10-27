.class public Lbkb;
.super Lcom/zhpan/bannerview/BaseBannerAdapter;
.source "LocalRadioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhpan/bannerview/BaseBannerAdapter<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/zhpan/bannerview/BaseViewHolder;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhpan/bannerview/BaseViewHolder<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            "II)V"
        }
    .end annotation

    .line 22
    sget p3, Lbuc$d;->iv_local_radio:I

    invoke-virtual {p1, p3}, Lcom/zhpan/bannerview/BaseViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/xui/widget/XImageView;

    .line 23
    sget p4, Lbuc$d;->rd_night_mask:I

    invoke-virtual {p1, p4}, Lcom/zhpan/bannerview/BaseViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 24
    invoke-virtual {p3}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPicUrl()Ljava/lang/String;

    move-result-object p2

    sget v0, Lbuc$c;->pic_covers_music_220:I

    new-instance v1, Lbkh;

    invoke-virtual {p3}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lbkh;-><init>(Landroid/content/Context;I)V

    invoke-static {p4, p2, v0, p3, v1}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)V

    .line 25
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p2}, Lapo;->d(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected synthetic bindData(Lcom/zhpan/bannerview/BaseViewHolder;Ljava/lang/Object;II)V
    .locals 0

    .line 19
    check-cast p2, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lbkb;->a(Lcom/zhpan/bannerview/BaseViewHolder;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;II)V

    return-void
.end method

.method public getLayoutId(I)I
    .locals 0

    .line 31
    sget p1, Lbuc$f;->nr_layout_location_item:I

    return p1
.end method
