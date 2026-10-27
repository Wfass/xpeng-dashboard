.class Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout$1;
.super Ljava/lang/Object;
.source "KugouPersonalLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 128
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Lbjl;->c(I)V

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->access$000(Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e()V

    return-void
.end method
