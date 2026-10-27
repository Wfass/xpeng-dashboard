.class Lcom/xiaopeng/musicradio/widget/j$b$a$1;
.super Ljava/lang/Object;
.source "RecyclerTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/j$b$a;-><init>(Lcom/xiaopeng/musicradio/widget/j$b;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/j$b;

.field final synthetic b:Lcom/xiaopeng/musicradio/widget/j$b$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/j$b$a;Lcom/xiaopeng/musicradio/widget/j$b;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/j$b$a$1;->b:Lcom/xiaopeng/musicradio/widget/j$b$a;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/j$b$a$1;->a:Lcom/xiaopeng/musicradio/widget/j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 623
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/j$b$a$1;->b:Lcom/xiaopeng/musicradio/widget/j$b$a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/j$b$a;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j$b$a$1;->b:Lcom/xiaopeng/musicradio/widget/j$b$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/widget/j$b$a;->b:Lcom/xiaopeng/musicradio/widget/j$b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/j$b;->a()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
