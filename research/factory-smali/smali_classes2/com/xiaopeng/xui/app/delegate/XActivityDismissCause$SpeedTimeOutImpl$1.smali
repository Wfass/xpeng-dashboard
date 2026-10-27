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
    .param p1, "this$0"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 273
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl$1;->this$0:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 276
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl$1;->this$0:Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;->access$000(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;)V

    .line 278
    return-void
.end method
