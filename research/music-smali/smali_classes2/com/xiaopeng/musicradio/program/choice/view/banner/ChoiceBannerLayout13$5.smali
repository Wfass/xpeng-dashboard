.class Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13$5;
.super Landroid/view/ViewOutlineProvider;
.source "ChoiceBannerLayout13.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13$5;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
