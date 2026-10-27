.class Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$1;
.super Ljava/lang/Object;
.source "MsSingerHotLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$000(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->e()V

    return-void
.end method
