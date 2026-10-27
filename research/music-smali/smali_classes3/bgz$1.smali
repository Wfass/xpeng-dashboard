.class Lbgz$1;
.super Ljava/lang/Object;
.source "DolbyZoneCollectBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgz;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhe;

.field final synthetic b:Lbgz;


# direct methods
.method constructor <init>(Lbgz;Lbhe;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lbgz$1;->b:Lbgz;

    iput-object p2, p0, Lbgz$1;->a:Lbhe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lbgz$1;->b:Lbgz;

    iget-object v0, p0, Lbgz$1;->a:Lbhe;

    invoke-virtual {v0}, Lbhe;->g()I

    move-result v0

    invoke-static {p1, v0}, Lbgz;->a(Lbgz;I)I

    .line 138
    iget-object p1, p0, Lbgz$1;->b:Lbgz;

    invoke-static {p1}, Lbgz;->a(Lbgz;)V

    return-void
.end method
