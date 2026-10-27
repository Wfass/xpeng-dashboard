.class Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$3;
.super Ljava/lang/Object;
.source "MsRadioItemLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;I)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$3;->b:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;

    iput p2, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 178
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$3;->a:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$3;->b:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->access$100(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lbxo;->a(ZILcom/xiaopeng/xui/widget/XImageView;)V

    return-void
.end method
