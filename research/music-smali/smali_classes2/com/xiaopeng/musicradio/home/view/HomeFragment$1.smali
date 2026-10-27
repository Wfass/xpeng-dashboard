.class Lcom/xiaopeng/musicradio/home/view/HomeFragment$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/selectmenu/SelectMenuLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/home/view/HomeFragment;->setView()V
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

    .line 278
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$1;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/common/LeftSelect;Lcom/xiaopeng/musicradio/bean/common/LeftSelect;)V
    .locals 4

    const-string v0, "HomeFragment"

    const-string v1, "clickChange: "

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SwitchTab"

    .line 282
    invoke-static {v1}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->setCurrentPageKey(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->start()V

    .line 284
    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$1;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {v1, p2}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$002(Lcom/xiaopeng/musicradio/home/view/HomeFragment;Lcom/xiaopeng/musicradio/bean/common/LeftSelect;)Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    .line 285
    iget-object p2, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$1;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$100(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 286
    iget-object v2, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$1;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$100(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    invoke-static {v1}, Lbqj;->a(I)V

    const-string p1, "clickChange: 2"

    .line 288
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance p1, Lbnw$b;

    invoke-direct {p1}, Lbnw$b;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 291
    iget-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$1;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$200(Lcom/xiaopeng/musicradio/home/view/HomeFragment;I)V

    :cond_1
    return-void
.end method
