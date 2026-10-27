.class Lbhr$1;
.super Ljava/lang/Object;
.source "KugouZoneAlbumBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhr;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbhx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhx;

.field final synthetic b:Lbhr;


# direct methods
.method constructor <init>(Lbhr;Lbhx;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lbhr$1;->b:Lbhr;

    iput-object p2, p0, Lbhr$1;->a:Lbhx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 133
    iget-object p1, p0, Lbhr$1;->b:Lbhr;

    iget-object v0, p0, Lbhr$1;->a:Lbhx;

    invoke-virtual {v0}, Lbhx;->g()I

    move-result v0

    invoke-static {p1, v0}, Lbhr;->a(Lbhr;I)I

    .line 134
    iget-object p1, p0, Lbhr$1;->a:Lbhx;

    invoke-virtual {p1}, Lbhx;->i()I

    move-result p1

    iget-object v0, p0, Lbhr$1;->a:Lbhx;

    invoke-virtual {v0}, Lbhx;->h()I

    move-result v0

    invoke-static {p1, v0}, Lbjl;->c(II)V

    .line 135
    iget-object p1, p0, Lbhr$1;->b:Lbhr;

    invoke-static {p1}, Lbhr;->a(Lbhr;)V

    return-void
.end method
