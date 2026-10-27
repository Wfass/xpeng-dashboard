.class Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;
.super Landroid/os/Handler;
.source "XAppBaseModeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# static fields
.field static final MSG_APP_INFO_CHANGE:I = 0x2

.field static final MSG_APP_SHARED_INFO_CHANGED:I = 0x3

.field static final MSG_ENABLE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;

    .line 32
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 47
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/xiaopeng/app/xpPackageInfo;

    .line 48
    .local v0, "packageInfos":[Lcom/xiaopeng/app/xpPackageInfo;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->handleSharedPackageInfoChange([Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 49
    goto :goto_0

    .line 43
    .end local v0    # "packageInfos":[Lcom/xiaopeng/app/xpPackageInfo;
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->handleAppInfoChange()V

    .line 44
    goto :goto_0

    .line 39
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine$WorkHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;->handleEnableChange()V

    .line 40
    nop

    .line 54
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
