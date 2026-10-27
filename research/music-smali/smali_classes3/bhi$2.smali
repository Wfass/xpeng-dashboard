.class Lbhi$2;
.super Ljava/lang/Object;
.source "NeteaseDown.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhi;->a(Lcom/xiaopeng/musicradio/bean/music/DownState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/music/DownState;

.field final synthetic b:Lbhi;


# direct methods
.method constructor <init>(Lbhi;Lcom/xiaopeng/musicradio/bean/music/DownState;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lbhi$2;->b:Lbhi;

    iput-object p2, p0, Lbhi$2;->a:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 218
    iget-object v0, p0, Lbhi$2;->a:Lcom/xiaopeng/musicradio/bean/music/DownState;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lbhi$2;->b:Lbhi;

    invoke-virtual {v1}, Lbhi;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/mnt/sdcard/musicdown/down"

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/xiaopeng/musicradio/utils/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
