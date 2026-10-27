.class Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$1;
.super Ljava/lang/Object;
.source "MsRadioItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$1;->b:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$1;->b:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;->access$000(Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    return-void
.end method
