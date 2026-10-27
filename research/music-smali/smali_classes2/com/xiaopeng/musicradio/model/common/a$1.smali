.class Lcom/xiaopeng/musicradio/model/common/a$1;
.super Ljava/lang/Object;
.source "AppLogic.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/common/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/common/a;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/common/a$1;->a:Lcom/xiaopeng/musicradio/model/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 78
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 80
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/br;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/common/a$1;->a:Lcom/xiaopeng/musicradio/model/common/a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/common/a;->a(Lcom/xiaopeng/musicradio/model/common/a;)I

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/common/a$1;->a:Lcom/xiaopeng/musicradio/model/common/a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/common/a;->b(Lcom/xiaopeng/musicradio/model/common/a;)I

    move-result p1

    const/16 v1, 0xa

    if-ge p1, v1, :cond_2

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/common/a$1;->a:Lcom/xiaopeng/musicradio/model/common/a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/common/a;->c(Lcom/xiaopeng/musicradio/model/common/a;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string p1, "AppLogic"

    const-string v1, "handleMessage: stop musicservice"

    .line 86
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/common/a$1;->a:Lcom/xiaopeng/musicradio/model/common/a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/common/a;->d(Lcom/xiaopeng/musicradio/model/common/a;)V

    :cond_2
    :goto_0
    return v0
.end method
