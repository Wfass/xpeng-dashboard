.class Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout$3;
.super Ljava/lang/Object;
.source "MusicMainAuthLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout$3;->a:Lcom/xiaopeng/musicradio/music/main/view/MusicMainAuthLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 118
    invoke-static {p1}, Lcom/xiaopeng/musicradio/account/qlogin/g;->c(Ljava/lang/String;)V

    return-void
.end method
