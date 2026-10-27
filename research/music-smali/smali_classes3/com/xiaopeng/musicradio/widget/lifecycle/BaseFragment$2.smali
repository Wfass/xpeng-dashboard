.class Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment$2;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Lfp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->registerLifecycleView(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;Landroid/view/LayoutInflater;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment$2;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment$2;->a:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 82
    invoke-static {p2}, Lbtw;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 87
    :cond_0
    instance-of v0, p3, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_2

    .line 88
    move-object v0, p3

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/app/e;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p3, -0x1

    const/16 v0, 0x2e

    .line 89
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq p3, v0, :cond_1

    .line 92
    :try_start_0
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment$2;->a:Landroid/view/LayoutInflater;

    invoke-virtual {p3, p2, v1, p4}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 94
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BaseFragment"

    invoke-static {p3, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    .line 96
    instance-of p2, p1, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    if-eqz p2, :cond_1

    .line 97
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment$2;->b:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->access$000(Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;)Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    move-result-object p2

    move-object p3, p1

    check-cast p3, Lcom/xiaopeng/musicradio/widget/lifecycle/e;

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->registerSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    :cond_1
    return-object p1

    :cond_2
    return-object v1
.end method
