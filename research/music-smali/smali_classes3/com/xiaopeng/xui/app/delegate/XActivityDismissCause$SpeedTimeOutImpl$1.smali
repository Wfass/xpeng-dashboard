.class Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl$1;
.super Landroid/database/ContentObserver;
.source "XActivityDismissCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;Landroid/os/Handler;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl$1;->this$0:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 320
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 321
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl$1;->this$0:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->access$000(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;)V

    return-void
.end method
