.class Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$7;
.super Ljava/lang/Object;
.source "ChoiceBannerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->setBannerIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;I)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$7;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;

    iput p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$7;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->g(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$7;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->g(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$7;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/to/aboomy/pager2banner/Banner;->a(IZ)V

    :cond_0
    return-void
.end method
