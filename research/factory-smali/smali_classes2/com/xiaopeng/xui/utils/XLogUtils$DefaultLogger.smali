.class Lcom/xiaopeng/xui/utils/XLogUtils$DefaultLogger;
.super Ljava/lang/Object;
.source "XLogUtils.java"

# interfaces
.implements Lcom/xiaopeng/xui/utils/XLogUtils$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/XLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultLogger"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    return-void
.end method


# virtual methods
.method public logByLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "TAG"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;

    .line 317
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 331
    :pswitch_0
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    goto :goto_0

    .line 325
    :pswitch_2
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    goto :goto_0

    .line 322
    :pswitch_3
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    goto :goto_0

    .line 319
    :pswitch_4
    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    nop

    .line 333
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
