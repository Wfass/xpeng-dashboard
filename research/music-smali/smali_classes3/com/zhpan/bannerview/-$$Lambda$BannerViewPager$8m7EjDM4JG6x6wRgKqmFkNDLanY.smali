.class public final synthetic Lcom/zhpan/bannerview/-$$Lambda$BannerViewPager$8m7EjDM4JG6x6wRgKqmFkNDLanY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zhpan/bannerview/BaseBannerAdapter$PageClickListener;


# instance fields
.field private final synthetic f$0:Lcom/zhpan/bannerview/BannerViewPager;

.field private final synthetic f$1:Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/zhpan/bannerview/BannerViewPager;Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhpan/bannerview/-$$Lambda$BannerViewPager$8m7EjDM4JG6x6wRgKqmFkNDLanY;->f$0:Lcom/zhpan/bannerview/BannerViewPager;

    iput-object p2, p0, Lcom/zhpan/bannerview/-$$Lambda$BannerViewPager$8m7EjDM4JG6x6wRgKqmFkNDLanY;->f$1:Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;

    iput-boolean p3, p0, Lcom/zhpan/bannerview/-$$Lambda$BannerViewPager$8m7EjDM4JG6x6wRgKqmFkNDLanY;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onPageClick(Landroid/view/View;II)V
    .locals 6

    iget-object v0, p0, Lcom/zhpan/bannerview/-$$Lambda$BannerViewPager$8m7EjDM4JG6x6wRgKqmFkNDLanY;->f$0:Lcom/zhpan/bannerview/BannerViewPager;

    iget-object v1, p0, Lcom/zhpan/bannerview/-$$Lambda$BannerViewPager$8m7EjDM4JG6x6wRgKqmFkNDLanY;->f$1:Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;

    iget-boolean v2, p0, Lcom/zhpan/bannerview/-$$Lambda$BannerViewPager$8m7EjDM4JG6x6wRgKqmFkNDLanY;->f$2:Z

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zhpan/bannerview/BannerViewPager;->lambda$setOnPageClickListener$0$BannerViewPager(Lcom/zhpan/bannerview/BannerViewPager$OnPageClickListener;ZLandroid/view/View;II)V

    return-void
.end method
