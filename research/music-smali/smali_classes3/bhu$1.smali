.class Lbhu$1;
.super Ljava/lang/Object;
.source "KugouZoneCollectBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhu;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbia;

.field final synthetic b:Lbhu;


# direct methods
.method constructor <init>(Lbhu;Lbia;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lbhu$1;->b:Lbhu;

    iput-object p2, p0, Lbhu$1;->a:Lbia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lbhu$1;->b:Lbhu;

    iget-object v0, p0, Lbhu$1;->a:Lbia;

    invoke-virtual {v0}, Lbia;->g()I

    move-result v0

    invoke-static {p1, v0}, Lbhu;->a(Lbhu;I)I

    .line 139
    iget-object p1, p0, Lbhu$1;->a:Lbia;

    invoke-virtual {p1}, Lbia;->i()I

    move-result p1

    iget-object v0, p0, Lbhu$1;->a:Lbia;

    invoke-virtual {v0}, Lbia;->h()I

    move-result v0

    invoke-static {p1, v0}, Lbjl;->c(II)V

    .line 140
    iget-object p1, p0, Lbhu$1;->b:Lbhu;

    invoke-static {p1}, Lbhu;->a(Lbhu;)V

    return-void
.end method
