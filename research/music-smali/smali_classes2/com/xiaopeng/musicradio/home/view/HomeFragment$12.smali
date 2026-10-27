.class Lcom/xiaopeng/musicradio/home/view/HomeFragment$12;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setIdleListener()V
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

    .line 519
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$12;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "HomeFragment"

    const-string v0, "mSelectMenu"

    .line 522
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$12;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$200(Lcom/xiaopeng/musicradio/home/view/HomeFragment;I)V

    return-void
.end method
