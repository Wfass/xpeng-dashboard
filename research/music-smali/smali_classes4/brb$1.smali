.class Lbrb$1;
.super Ljava/lang/Object;
.source "UsbDurationRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrb;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic b:Lbrb;


# direct methods
.method constructor <init>(Lbrb;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lbrb$1;->b:Lbrb;

    iput-object p2, p0, Lbrb$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 62
    iget-object v0, p0, Lbrb$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object v1, p0, Lbrb$1;->b:Lbrb;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbrb;->a(Lbrb;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setDuration(J)V

    .line 63
    new-instance v0, Lbrb$1$1;

    invoke-direct {v0, p0}, Lbrb$1$1;-><init>(Lbrb$1;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
