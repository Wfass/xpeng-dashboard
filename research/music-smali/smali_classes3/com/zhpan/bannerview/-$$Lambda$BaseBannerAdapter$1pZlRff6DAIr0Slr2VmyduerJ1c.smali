.class public final synthetic Lcom/zhpan/bannerview/-$$Lambda$BaseBannerAdapter$1pZlRff6DAIr0Slr2VmyduerJ1c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/zhpan/bannerview/BaseBannerAdapter;

.field private final synthetic f$1:Lcom/zhpan/bannerview/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/zhpan/bannerview/BaseBannerAdapter;Lcom/zhpan/bannerview/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhpan/bannerview/-$$Lambda$BaseBannerAdapter$1pZlRff6DAIr0Slr2VmyduerJ1c;->f$0:Lcom/zhpan/bannerview/BaseBannerAdapter;

    iput-object p2, p0, Lcom/zhpan/bannerview/-$$Lambda$BaseBannerAdapter$1pZlRff6DAIr0Slr2VmyduerJ1c;->f$1:Lcom/zhpan/bannerview/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zhpan/bannerview/-$$Lambda$BaseBannerAdapter$1pZlRff6DAIr0Slr2VmyduerJ1c;->f$0:Lcom/zhpan/bannerview/BaseBannerAdapter;

    iget-object v1, p0, Lcom/zhpan/bannerview/-$$Lambda$BaseBannerAdapter$1pZlRff6DAIr0Slr2VmyduerJ1c;->f$1:Lcom/zhpan/bannerview/BaseViewHolder;

    invoke-virtual {v0, v1, p1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->lambda$onCreateViewHolder$0$BaseBannerAdapter(Lcom/zhpan/bannerview/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method
