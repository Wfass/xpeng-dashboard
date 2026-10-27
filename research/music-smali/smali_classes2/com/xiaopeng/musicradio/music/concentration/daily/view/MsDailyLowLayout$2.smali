.class Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout$2;
.super Ljava/lang/Object;
.source "MsDailyLowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 154
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Lbjl;->b(I)V

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->access$100(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbjp;->a(Landroid/content/Context;)V

    return-void
.end method
