.class Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout$1;
.super Ljava/lang/Object;
.source "DolbySongLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 55
    invoke-static {}, Lbjl;->r()V

    .line 56
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;->mContext:Landroid/content/Context;

    const-string v1, "/music/fragment/dolby_zone"

    invoke-static {v0, v1, p1}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
