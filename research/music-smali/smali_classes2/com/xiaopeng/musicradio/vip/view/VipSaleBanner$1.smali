.class Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "VipSaleBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner$1;->a:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner$1;->a:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->access$002(Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;I)I

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "aa"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
