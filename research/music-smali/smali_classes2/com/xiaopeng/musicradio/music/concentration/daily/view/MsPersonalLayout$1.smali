.class Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout$1;
.super Ljava/lang/Object;
.source "MsPersonalLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->access$000(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->e()V

    return-void
.end method
