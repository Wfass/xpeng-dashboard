.class Lcom/xiaopeng/musicradio/home/view/HomeFragment$10;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/home/view/HomeFragment;->ChangeAccountType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$10;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$10;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$500(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/main/view/MainLoadingLayout;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$10;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$600(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setVisibility(I)V

    return-void
.end method
