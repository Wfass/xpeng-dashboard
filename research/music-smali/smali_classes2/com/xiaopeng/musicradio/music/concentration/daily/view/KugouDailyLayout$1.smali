.class Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout$1;
.super Ljava/lang/Object;
.source "KugouDailyLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Lbjl;->b(I)V

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->access$000(Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->e()V

    return-void
.end method
