.class Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout$3;
.super Ljava/lang/Object;
.source "SingerItemLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->setStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;I)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout$3;->b:Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;

    iput p2, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 196
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout$3;->a:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout$3;->b:Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;->access$100(Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lbxo;->a(ZILcom/xiaopeng/xui/widget/XImageView;)V

    return-void
.end method
