.class Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$3;
.super Ljava/lang/Object;
.source "MsMusicDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$3;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$3;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbni;->a(Landroid/content/Context;)V

    return-void
.end method
