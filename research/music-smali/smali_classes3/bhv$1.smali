.class Lbhv$1;
.super Ljava/lang/Object;
.source "KugouZoneSongBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhv;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbib;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbib;

.field final synthetic b:Lbhv;


# direct methods
.method constructor <init>(Lbhv;Lbib;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lbhv$1;->b:Lbhv;

    iput-object p2, p0, Lbhv$1;->a:Lbib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lbhv$1;->b:Lbhv;

    iget-object v0, p0, Lbhv$1;->a:Lbib;

    invoke-virtual {v0}, Lbib;->g()I

    move-result v0

    invoke-static {p1, v0}, Lbhv;->a(Lbhv;I)I

    .line 114
    iget-object p1, p0, Lbhv$1;->a:Lbib;

    invoke-virtual {p1}, Lbib;->i()I

    move-result p1

    iget-object v0, p0, Lbhv$1;->a:Lbib;

    invoke-virtual {v0}, Lbib;->h()I

    move-result v0

    invoke-static {p1, v0}, Lbjl;->c(II)V

    .line 115
    iget-object p1, p0, Lbhv$1;->b:Lbhv;

    invoke-static {p1}, Lbhv;->a(Lbhv;)V

    return-void
.end method
