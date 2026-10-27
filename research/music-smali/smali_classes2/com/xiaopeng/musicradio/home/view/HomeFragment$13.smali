.class Lcom/xiaopeng/musicradio/home/view/HomeFragment$13;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/home/view/HomeFragment;->hideSelectMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;I)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$13;->b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    iput p2, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$13;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$13;->b:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    iget v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$13;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->selectChange(I)V

    return-void
.end method
