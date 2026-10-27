.class Lcom/amap/api/services/a/cx$a;
.super Landroid/os/Handler;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/cx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 441
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 434
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 436
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/amap/api/services/a/cx$1;)V
    .locals 0

    .line 432
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/cx$a;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 445
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 446
    packed-switch v0, :pswitch_data_0

    .line 458
    return-void

    .line 453
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/services/a/db;

    .line 454
    iget-object v0, p1, Lcom/amap/api/services/a/db;->b:Lcom/amap/api/services/a/cz;

    .line 455
    iget-object p1, p1, Lcom/amap/api/services/a/db;->a:Lcom/amap/api/services/a/au;

    invoke-interface {v0, p1}, Lcom/amap/api/services/a/cz;->a(Lcom/amap/api/services/a/au;)V

    .line 456
    goto :goto_0

    .line 448
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/services/a/db;

    .line 449
    iget-object p1, p1, Lcom/amap/api/services/a/db;->b:Lcom/amap/api/services/a/cz;

    .line 450
    invoke-interface {p1}, Lcom/amap/api/services/a/cz;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    nop

    .line 463
    :goto_0
    goto :goto_1

    .line 461
    :catch_0
    move-exception p1

    .line 462
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 465
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
