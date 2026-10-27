.class Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$2;
.super Ljava/lang/Object;
.source "MixItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Ljava/lang/String;I)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$2;->c:Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 100
    sget p1, Lcom/xiaopeng/musicradio/search/a$d;->title:I

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$2;->c:Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$2;->a:Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$2;->b:I

    invoke-static {p1, v0, v1}, Lbop;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$2;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x64ae5159

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x1564da7d

    if-eq v1, v2, :cond_1

    const v2, 0x5d65ef00

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "/search/fragment/result/song"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "/search/fragment/result/song_list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v4

    goto :goto_0

    :cond_2
    const-string v1, "/search/fragment/result/singer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_1

    .line 111
    :cond_4
    iget p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$2;->b:I

    invoke-static {p1}, Lbom;->i(I)V

    goto :goto_1

    .line 108
    :cond_5
    iget p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$2;->b:I

    invoke-static {p1}, Lbom;->g(I)V

    goto :goto_1

    .line 105
    :cond_6
    iget p1, p0, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout$2;->b:I

    invoke-static {p1}, Lbom;->f(I)V

    :cond_7
    :goto_1
    return-void
.end method
