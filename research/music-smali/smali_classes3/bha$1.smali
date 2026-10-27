.class Lbha$1;
.super Ljava/lang/Object;
.source "DolbyZoneSongBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbha;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneMixItemLayout;Lbhf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhf;

.field final synthetic b:Lbha;


# direct methods
.method constructor <init>(Lbha;Lbhf;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lbha$1;->b:Lbha;

    iput-object p2, p0, Lbha$1;->a:Lbhf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lbha$1;->b:Lbha;

    iget-object v0, p0, Lbha$1;->a:Lbhf;

    invoke-virtual {v0}, Lbhf;->g()I

    move-result v0

    invoke-static {p1, v0}, Lbha;->a(Lbha;I)I

    .line 117
    iget-object p1, p0, Lbha$1;->b:Lbha;

    invoke-static {p1}, Lbha;->a(Lbha;)V

    return-void
.end method
