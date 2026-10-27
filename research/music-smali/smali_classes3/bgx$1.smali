.class Lbgx$1;
.super Ljava/lang/Object;
.source "DolbyZoneAlbumBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgx;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhc;

.field final synthetic b:Lbgx;


# direct methods
.method constructor <init>(Lbgx;Lbhc;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lbgx$1;->b:Lbgx;

    iput-object p2, p0, Lbgx$1;->a:Lbhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lbgx$1;->b:Lbgx;

    iget-object v0, p0, Lbgx$1;->a:Lbhc;

    invoke-virtual {v0}, Lbhc;->g()I

    move-result v0

    invoke-static {p1, v0}, Lbgx;->a(Lbgx;I)I

    .line 132
    iget-object p1, p0, Lbgx$1;->b:Lbgx;

    invoke-static {p1}, Lbgx;->a(Lbgx;)V

    return-void
.end method
