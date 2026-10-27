.class Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout$2;
.super Ljava/lang/Object;
.source "MsDailyLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 113
    invoke-static {}, Lbjl;->a()V

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout$2;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbjp;->a(Landroid/content/Context;)V

    return-void
.end method
